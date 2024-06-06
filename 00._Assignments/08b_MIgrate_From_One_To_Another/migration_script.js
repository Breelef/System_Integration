import mysql from 'mysql2/promise'
import pkg from 'pg';
const { Client } = pkg;

const mysqlConfig = {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'guldbar'
};

const postgresConfig = {
    host: 'localhost',
    user: 'postgres',
    password: 'postgres',
    database: 'migrate_db'
}

function mapMySQLTypeToPostgresType(mysqlType) {
    const typeMapping = {
        'int': 'INTEGER',
        'bigint': 'BIGINT',
        'varchar': (length) => `VARCHAR(${length})`,
        'text': 'TEXT',
        'longtext': 'TEXT',
        'datetime': 'TIMESTAMP',
        'timestamp': 'TIMESTAMP',
        'date': 'DATE',
        'time': 'TIME',
        'tinyint': 'SMALLINT',
        'float': 'REAL',
        'double': 'DOUBLE PRECISION',
    };
    const [type, length] = mysqlType.match(/(\w+)(\(\d+\))?/).slice(1, 3);
    const mappedType = typeMapping[type.toLowerCase()];
    return typeof mappedType === 'function' ? mappedType(length.slice(1, -1)) : mappedType;
}

async function fetchTablesFromMySQL(){
    const mysqlConnection = await mysql.createConnection(mysqlConfig);
    const [ tables ] = await mysqlConnection.execute("SHOW TABLES");
    await mysqlConnection.end();
    return tables.map(row => Object.values(row)[0]);
}

async function fetchTableSchemaAndData(tableName){
     const mysqlConnection = await mysql.createConnection(mysqlConfig);
    try {
        const [schema] = await mysqlConnection.execute(`SHOW COLUMNS FROM ${tableName}`);
        const [data] = await mysqlConnection.execute(`SELECT * FROM ${tableName}`);
        await mysqlConnection.end();
        return { schema, data };
    } catch (error) {
        console.error(`Error fetching schema and data for table ${tableName}:`, error);
        await mysqlConnection.end();
        return { schema: null, data: null };
    }
}

async function createTableInPostgres(tableName, schema) {
    if (!schema) {
        console.warn(`Skipping table ${tableName} because schema is undefined.`);
        return;
    }

    const postgresClient = new Client(postgresConfig);
    await postgresClient.connect();

    const columns = schema.map(column => {
        const type = mapMySQLTypeToPostgresType(column.Type);
        const nullable = column.Null === 'YES' ? '' : 'NOT NULL';
        const autoIncrement = column.Extra.includes('auto_increment') ? 'SERIAL' : '';
        return `"${column.Field}" ${autoIncrement || type} ${nullable}`;
    }).join(', ');

    const createTableQuery = `CREATE TABLE IF NOT EXISTS ${tableName} (${columns})`;
    console.log(`Create Table Query for ${tableName}:`, createTableQuery);
    await postgresClient.query(createTableQuery);
    await postgresClient.end();
}

async function insertDataIntoPostgres(tableName, schema, data) {
    if (!schema || !data) {
        console.warn(`Skipping insertion for table ${tableName} because schema or data is undefined.`);
        return;
    }

    const postgresClient = new Client(postgresConfig);
    await postgresClient.connect();

    const columns = schema.map(column => `"${column.Field}"`).join(', ');
    const valuesPlaceholder = data.map((_, i) => `(${
        schema.map((_, j) => `$${i * schema.length + j + 1}`).join(', ')
    })`).join(', ');

    const values = data.flatMap(row => schema.map(column => row[column.Field]));

    const insertQuery = `INSERT INTO ${tableName} (${columns}) VALUES ${valuesPlaceholder}`;
    console.log(`Insert Query for ${tableName}:`, insertQuery);
    await postgresClient.query(insertQuery, values);
    await postgresClient.end();
}

async function migrateData() {
    const tables = await fetchTablesFromMySQL();

    for (const table of tables) {
        const { schema, data } = await fetchTableSchemaAndData(table);
        if (!schema || !data) {
            console.warn(`Skipping table ${table} due to missing schema or data.`);
            continue;
        }
        await createTableInPostgres(table, schema);
        if (data.length > 0) {
            await insertDataIntoPostgres(table, schema, data);
        }
    }

    console.log('Data migration completed successfully.');
}
migrateData().catch(err => {
    console.error('Error during data migration:', err);
});