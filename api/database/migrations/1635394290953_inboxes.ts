import BaseSchema from "@ioc:Adonis/Lucid/Schema";

export default class Inboxes extends BaseSchema {
  protected tableName = "inboxes";

  public async up() {
    this.schema.createTable(this.tableName, (table) => {
      table.increments("id");
      table
        .integer("user_id")
        .unsigned()
        .notNullable()
        .references("users.id")
        .onDelete("CASCADE");
        table.integer('sender_id').unsigned().nullable()
        table.string('lastMsg',150).nullable()
        table.boolean('seen').defaultTo(false)
        table.boolean("deleted").defaultTo(false)
        table.integer('unSeenNumbers').unsigned().defaultTo(0)

      /**
       * Uses timestamptz for PostgreSQL and DATETIME2 for MSSQL
       */
      table.timestamp("created_at", { useTz: true });
      table.timestamp("updated_at", { useTz: true });
    });
  }

  public async down() {
    this.schema.dropTable(this.tableName);
  }
}
