.class public Lcom/android/quicksearchbox/data/QsbProvider;
.super Landroid/content/ContentProvider;
.source "QsbProvider.java"


# static fields
.field public static b:Landroid/content/UriMatcher;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;


# instance fields
.field public a:Lb/a/a/e1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/quicksearchbox/data/QsbProvider;->b:Landroid/content/UriMatcher;

    const-string v0, "content://com.android.quicksearchbox.qsb/app_recommand"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.android.quicksearchbox.qsb/history"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/data/QsbProvider;->c:Landroid/net/Uri;

    const-string v0, "content://com.android.quicksearchbox.qsb/hot_word"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/data/QsbProvider;->d:Landroid/net/Uri;

    const-string v0, "content://com.android.quicksearchbox.qsb/appstore"

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/data/QsbProvider;->e:Landroid/net/Uri;

    const-string v0, "content://com.android.quicksearchbox.qsb/access_suggestion"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/data/QsbProvider;->f:Landroid/net/Uri;

    .line 7
    sget-object v0, Lcom/android/quicksearchbox/data/QsbProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.android.quicksearchbox.qsb"

    const-string v2, "app_recommand"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    sget-object v0, Lcom/android/quicksearchbox/data/QsbProvider;->b:Landroid/content/UriMatcher;

    const-string v2, "history"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    sget-object v0, Lcom/android/quicksearchbox/data/QsbProvider;->b:Landroid/content/UriMatcher;

    const-string v2, "hot_word"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    sget-object v0, Lcom/android/quicksearchbox/data/QsbProvider;->b:Landroid/content/UriMatcher;

    const-string v2, "appstore"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    sget-object v0, Lcom/android/quicksearchbox/data/QsbProvider;->b:Landroid/content/UriMatcher;

    const-string v2, "access_suggestion"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/data/QsbProvider;->a:Lb/a/a/e1/c;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/quicksearchbox/data/QsbProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-string v1, "appstore"

    .line 3
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknow uri = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string v1, "hot_word"

    .line 5
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_2
    const-string v1, "history"

    .line 6
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_3
    const-string v1, "apprecommand"

    .line 7
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/data/QsbProvider;->a:Lb/a/a/e1/c;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/quicksearchbox/data/QsbProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    const/4 v6, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    if-ne v1, v6, :cond_0

    :try_start_0
    const-string v1, "access_suggestion"

    .line 3
    invoke-virtual {v0, v1, v5, p2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    move-wide v0, v3

    :goto_0
    cmp-long p2, v0, v3

    if-lez p2, :cond_5

    .line 5
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknow uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :try_start_1
    const-string v1, "appstore"

    .line 7
    invoke-virtual {v0, v1, v5, p2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 8
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    move-wide v0, v3

    :goto_1
    cmp-long p2, v0, v3

    if-lez p2, :cond_5

    .line 9
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    :try_start_2
    const-string v1, "hot_word"

    .line 10
    invoke-virtual {v0, v1, v5, p2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 11
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    move-wide v0, v3

    :goto_2
    cmp-long p2, v0, v3

    if-lez p2, :cond_5

    .line 12
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_3
    :try_start_3
    const-string v1, "history"

    .line 13
    invoke-virtual {v0, v1, v5, p2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 14
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    move-wide v0, v3

    :goto_3
    cmp-long p2, v0, v3

    if-lez p2, :cond_5

    .line 15
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_4
    :try_start_4
    const-string v1, "apprecommand"

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v5, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    .line 17
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    move-wide v0, v3

    :goto_4
    cmp-long p2, v0, v3

    if-lez p2, :cond_5

    .line 18
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 19
    :cond_5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v5
.end method

.method public onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/e1/c;->a(Landroid/content/Context;)Lb/a/a/e1/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/data/QsbProvider;->a:Lb/a/a/e1/c;

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/data/QsbProvider;->a:Lb/a/a/e1/c;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2
    sget-object v0, Lcom/android/quicksearchbox/data/QsbProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "access_suggestion"

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 3
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknow uri="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "appstore"

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 5
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "hot_word"

    const-string v8, "_id DESC"

    const-string v9, "6"

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 6
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "history"

    const-string v8, "timestamp DESC"

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 7
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "apprecommand"

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 8
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/data/QsbProvider;->a:Lb/a/a/e1/c;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/quicksearchbox/data/QsbProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v1, "hot_word"

    .line 3
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_1
    const-string v1, "history"

    .line 5
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p2
.end method
