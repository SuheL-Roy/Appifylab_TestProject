import BaseSchema from '@ioc:Adonis/Lucid/Schema'

export default class Chats extends BaseSchema {
  protected tableName = 'chats'

  public async up () {
    this.schema.createTable(this.tableName, (table) => {
      table.increments('id')
      table
      .integer("sender_id")
      .unsigned()
      .notNullable()
      .references("users.id")
      .onDelete("CASCADE");
      table.text('msg').notNullable()
      table.integer('deleted_id')
      table.text('file').nullable()
      table.text('meta').nullable()

      /**
       * Uses timestamptz for PostgreSQL and DATETIME2 for MSSQL
       */
      table.timestamp('created_at', { useTz: true })
      table.timestamp('updated_at', { useTz: true })
    })
  }

  public async down () {
    this.schema.dropTable(this.tableName)
  }
}
