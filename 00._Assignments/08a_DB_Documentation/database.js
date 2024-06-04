import { User, Post, sequelize } from "./models.js";
import sqlite3 from "sqlite3";

async function syncDatabase() {
    await sequelize.sync({ force: true });

    // Add data
    const newUser = await User.create({ name: 'John Doe' });
    await Post.create({ title: 'First Post', content: 'This is the first post.', userId: newUser.id });
}

function documentDatabase(dbPath) {
    let db = new sqlite3.Database(dbPath);

    db.serialize(() => {
        db.all("SELECT name FROM sqlite_master WHERE type='table'", [], (err, tables) => {
            if (err) {
                throw err;
            }

            let pendingSchemas = tables.length;

            tables.forEach((table) => {
                const tableName = table.name;

                db.all(`PRAGMA table_info(${tableName})`, [], (err, schema) => {
                    if (err) {
                        throw err;
                    }

                    console.log(`Schema for table ${tableName}:`);
                    console.table(schema);

                    pendingSchemas -= 1;
                    if (pendingSchemas === 0) {
                        db.close((err) => {
                            if (err) {
                                console.error(err.message);
                            } else {
                                console.log('Database connection closed.');
                            }
                        });
                    }
                });
            });
        });
    });
}

(async () => {
    await syncDatabase();
    documentDatabase('example.db');
})();
