import { DateTime } from "luxon";
import {
  BaseModel,
  BelongsTo,
  belongsTo,
  column,
  hasMany,
  HasMany,
} from "@ioc:Adonis/Lucid/Orm";
import User from "./User";
import Post from "./Post";
import ReplyComment from "./ReplyComment";

export default class Comment extends BaseModel {
  @column({ isPrimary: true })
  public id: number;
  @column()
  public comment_text: string;
  @column()
  public userId: number;
  @column()
  public postId: number;
  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime;

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime;

   @belongsTo(() => User)
   public user: BelongsTo<typeof User>;

  @belongsTo(() => Post)
  public post: BelongsTo<typeof Post>

  @hasMany(() => ReplyComment)
  public commentReply: HasMany<typeof ReplyComment>
}
