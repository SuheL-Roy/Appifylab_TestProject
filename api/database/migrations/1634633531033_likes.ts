import BaseSchema from "@ioc:Adonis/Lucid/Schema";

export default class Likes extends BaseSchema {
  protected tableName = "likes";

  public async up() {
    this.schema.createTable(this.tableName, (table) => {
      table.increments("id");
      table
        .integer("user_id")
        .unsigned()
        .references("users.id")
        .onDelete("CASCADE") // delete like when user is deleted
        .notNullable();
      table
        .integer("post_id")
        .unsigned()
        .references("posts.id")
        .onDelete("CASCADE") // delete like when post is deleted
        .notNullable();

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
