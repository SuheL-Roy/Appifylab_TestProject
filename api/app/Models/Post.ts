import { DateTime } from "luxon";
import { BaseModel, BelongsTo, belongsTo, column, HasMany, hasMany } from "@ioc:Adonis/Lucid/Orm";
import User from "./User";
import Comment from "./Comment";
import Like from "./Like";
import PostImage from "./PostImage";

export default class Post extends BaseModel {
  @column({ isPrimary: true })
  public id: number;
  @column()
  public title: string;
  @column()
  public userId: number 

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime;

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime;

  @belongsTo(() => User)
  public user: BelongsTo<typeof User>

  @hasMany(() => Comment)
  public comments: HasMany<typeof Comment>

  @hasMany(() => Like)
  public like: HasMany<typeof Like>

   @hasMany(() => PostImage)
   public postImage: HasMany<typeof PostImage>  
}
