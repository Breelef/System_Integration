/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> } 
 */
exports.seed = async function(knex) {
  // Deletes ALL existing entries
  //await knex('table_name').del()
  await knex('users').insert([
    {id: 1, name: 'Emil'},
    {id: 2, name: 'Jens'},
    {id: 3, name: 'Hans'}
  ]);
};
