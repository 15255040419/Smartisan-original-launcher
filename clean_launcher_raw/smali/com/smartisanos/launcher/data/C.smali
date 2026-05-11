.class public Lcom/smartisanos/launcher/data/C;
.super Ljava/lang/Object;
.source "DatabaseProvider.java"


# static fields
.field private static Rq:Lcom/smartisanos/launcher/data/C;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Qq:Lcom/smartisanos/launcher/data/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/C;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/C;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/launcher/data/C;->Rq:Lcom/smartisanos/launcher/data/C;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/C;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method public static getInstance()Lcom/smartisanos/launcher/data/C;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/C;->Rq:Lcom/smartisanos/launcher/data/C;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/data/C;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/C;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/C;->Rq:Lcom/smartisanos/launcher/data/C;

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/C;->Rq:Lcom/smartisanos/launcher/data/C;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/data/C;->y(Landroid/content/Context;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/C;->Qq:Lcom/smartisanos/launcher/data/e;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 p0, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 2
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0

    :catch_1
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    return-object p0
.end method

.method public b(Ljava/util/List;Ljava/util/List;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/C;->Qq:Lcom/smartisanos/launcher/data/e;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/smartisanos/launcher/data/B;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/smartisanos/launcher/data/B;-><init>(Lcom/smartisanos/launcher/data/C;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/List;)V

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p0

    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/U;->b:Z

    return p0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/C;->Qq:Lcom/smartisanos/launcher/data/e;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/C;->Qq:Lcom/smartisanos/launcher/data/e;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public y(Landroid/content/Context;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/data/e;

    invoke-direct {v0, p1}, Lcom/smartisanos/launcher/data/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/C;->Qq:Lcom/smartisanos/launcher/data/e;

    const/4 p0, 0x1

    return p0
.end method
