.class public Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TaskLockDbHelper.java"


# static fields
.field private static INSTANCE:Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TaskLock.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 46
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->INSTANCE:Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->INSTANCE:Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;

    .line 42
    :cond_0
    sget-object p0, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->INSTANCE:Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;

    return-object p0
.end method


# virtual methods
.method public createOrUpdateDefaultPkgLock(Ljava/lang/String;Z)J
    .locals 7

    .line 68
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "lock"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    const/4 v1, 0x4

    const-string v2, "DefaultPkgLock"

    .line 73
    invoke-virtual {p0, v2, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-nez p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const-string p1, "id=?"

    .line 75
    invoke-virtual {p0, v2, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long v3, p0

    :cond_0
    return-wide v3
.end method

.method public createOrUpdateTaskLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    .line 120
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    .line 122
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "componentName"

    .line 123
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "affinityName"

    .line 124
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "TaskLock"

    const/4 p3, 0x0

    const/4 v1, 0x4

    .line 126
    invoke-virtual {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p3, v1, v3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    const-string p1, "id=?"

    .line 128
    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long v1, p0

    :cond_0
    return-wide v1
.end method

.method public deleteTaskLockDB()V
    .locals 1

    .line 237
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "DROP TABLE IF EXISTS DefaultPkgLock"

    .line 238
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS TaskLock"

    .line 239
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getTaskLockAllAsTaskLockInfo()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/shared/recents/model/TaskLockInfo;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT  * FROM TaskLock"

    const-string v2, "SELECT  * FROM DefaultPkgLock"

    const/4 v3, 0x0

    .line 190
    :try_start_0
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 194
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/shared/recents/model/TaskLockInfo;

    const/4 v8, 0x1

    .line 196
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/shared/recents/model/TaskLockInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 203
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/shared/recents/model/TaskLockInfo;

    const-string v6, "DefaultPkgLock"

    const-string v7, ""

    invoke-direct {v2, v6, v7}, Lcom/android/systemui/shared/recents/model/TaskLockInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 211
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v3, :cond_3

    .line 215
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->deleteTaskLockDB()V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_4

    .line 211
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v3, :cond_5

    .line 215
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->deleteTaskLockDB()V

    throw v0
.end method

.method public hasTaskLockDB()Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "SELECT  * FROM TaskLock"

    const/4 v1, 0x0

    .line 110
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 113
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const/4 p0, 0x3

    new-array v0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DefaultPkgLock"

    aput-object v2, v0, v1

    const-string v2, "id"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v4, 0x2

    const-string v5, "lock"

    aput-object v5, v0, v4

    const-string v5, "create table %s ( %s text primary key, %s integer);"

    .line 51
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "TaskLock"

    aput-object v5, v0, v1

    aput-object v2, v0, v3

    const-string v1, "componentName"

    aput-object v1, v0, v4

    const-string v1, "affinityName"

    aput-object v1, v0, p0

    const-string p0, "create table %s ( %s text primary key, %s text, %s text);"

    .line 55
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS DefaultPkgLock"

    .line 62
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS TaskLock"

    .line 63
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final updateDefaultTaskLockIfNeeded()V
    .locals 5

    .line 223
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigRecentDefaultLockList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 227
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 228
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    .line 231
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->createOrUpdateDefaultPkgLock(Ljava/lang/String;Z)J

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
