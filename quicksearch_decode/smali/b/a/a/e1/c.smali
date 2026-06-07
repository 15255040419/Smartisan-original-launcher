.class public Lb/a/a/e1/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "QsbDatabaseHelper.java"


# static fields
.field public static volatile a:Lb/a/a/e1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lb/a/a/e1/c;
    .locals 3

    .line 1
    sget-object v0, Lb/a/a/e1/c;->a:Lb/a/a/e1/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lb/a/a/e1/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lb/a/a/e1/c;->a:Lb/a/a/e1/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lb/a/a/e1/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "qsb.db"

    invoke-direct {v1, p0, v2}, Lb/a/a/e1/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lb/a/a/e1/c;->a:Lb/a/a/e1/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lb/a/a/e1/c;->a:Lb/a/a/e1/c;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "ALTER TABLE history ADD COLUMN package TEXT;"

    const-string v1, "ALTER TABLE history ADD COLUMN is_application INTEGER DEFAULT 0;"

    .line 7
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS access_suggestion (_id INTEGER PRIMARY KEY AUTOINCREMENT,suggest_text_1 TEXT UNIQUE, suggest_text_2 TEXT, suggest_icon_1 TEXT, suggest_intent_action TEXT, suggest_intent_data TEXT, mime_type TEXT, suggest_intent_extra_data TEXT, suggest_access_time INTEGER)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS appstore (_id INTEGER PRIMARY KEY AUTOINCREMENT,suggest_text_1 TEXT UNIQUE,suggest_text_2_url TEXT,suggest_text_2 TEXT, suggest_icon_1 TEXT,suggest_intent_data TEXT,suggest_intent_extra_data TEXT)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS hot_word (_id INTEGER PRIMARY KEY AUTOINCREMENT,content TEXT UNIQUE,status INTEGER)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const-string v0, "CREATE TABLE TemporaryTable (_id INTEGER PRIMARY KEY AUTOINCREMENT,content TEXT,content_description TEXT,package TEXT,type INTEGER DEFAULT 0,timestamp INTEGER);"

    const-string v1, "CREATE UNIQUE INDEX TemporaryTable_UNION_UNIQUE_INDEX ON TemporaryTable (content, type);"

    const-string v2, "INSERT INTO TemporaryTable (_id,content,timestamp,package,type) SELECT _id,content,timestamp,package,is_application FROM history;"

    const-string v3, "DROP TABLE history;"

    const-string v4, "ALTER TABLE TemporaryTable RENAME TO history;"

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS history (_id INTEGER PRIMARY KEY AUTOINCREMENT,content TEXT UNIQUE,timestamp INTEGER)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lb/a/a/e1/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-virtual {p0, p1}, Lb/a/a/e1/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    invoke-virtual {p0, p1}, Lb/a/a/e1/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5
    invoke-virtual {p0, p1}, Lb/a/a/e1/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    invoke-virtual {p0, p1}, Lb/a/a/e1/c;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_3

    const/4 p3, 0x5

    if-eq p2, p3, :cond_4

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lb/a/a/e1/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lb/a/a/e1/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    :cond_2
    invoke-virtual {p0, p1}, Lb/a/a/e1/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    :cond_3
    invoke-virtual {p0, p1}, Lb/a/a/e1/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5
    :cond_4
    invoke-virtual {p0, p1}, Lb/a/a/e1/c;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void
.end method
