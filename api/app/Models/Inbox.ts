import { DateTime } from 'luxon'
import { BaseModel, column } from '@ioc:Adonis/Lucid/Orm'

export default class Inbox extends BaseModel {
  @column({ isPrimary: true })
  public id: number
  @column()
  userId: number
  @column()
  senderId: number
  @column()
  lastMsg: string
  @column()
  seen: string
  @column()
  deleted: string
  @column()
  unSeenNumbers: string
  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime
}
