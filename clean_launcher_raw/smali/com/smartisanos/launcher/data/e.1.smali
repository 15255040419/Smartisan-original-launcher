.class public Lcom/smartisanos/launcher/data/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/e;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/e;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static C()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/smartisanos/launcher/data/a;

    invoke-direct {v1, v0}, Lcom/smartisanos/launcher/data/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/b/h;->ws:[Lcom/smartisanos/launcher/data/b/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/b/h;->If()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/e;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "replaceWithEmptyDB "

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/data/d;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/launcher/data/d;-><init>(Lcom/smartisanos/launcher/data/e;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/data/e;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/data/e;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "DBHelper onCreate !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/data/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v1, "]"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/e;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDowngrade begin ! oldVersion ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], newVersion ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 p3, 0x0

    const/16 v0, 0xa

    const/4 v4, 0x1

    const/16 v5, 0x9

    if-ne p2, v0, :cond_1

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/data/b/d;

    invoke-direct {v0, v5}, Lcom/smartisanos/launcher/data/b/d;-><init>(I)V

    .line 4
    invoke-virtual {v0, v5, p1}, Lcom/smartisanos/launcher/data/b/d;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    move p3, v4

    :cond_1
    if-ne p2, v5, :cond_2

    const-string p2, "user = 10"

    .line 5
    invoke-static {p2}, Lcom/smartisanos/launcher/data/a/l;->X(Ljava/lang/String;)V

    .line 6
    new-instance p2, Lcom/smartisanos/launcher/data/b/d;

    const/16 v0, 0x8

    invoke-direct {p2, v0}, Lcom/smartisanos/launcher/data/b/d;-><init>(I)V

    .line 7
    invoke-virtual {p2, v0, p1}, Lcom/smartisanos/launcher/data/b/d;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result p2

    if-nez p2, :cond_2

    move p3, v4

    .line 8
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 9
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/smartisanos/launcher/data/e;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB onDowngrade spend time ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 10
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 11
    :cond_4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/smartisanos/launcher/data/e;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "onDowngrade done !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v1, "]"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/e;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade begin ! oldVersion ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], newVersion ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 p3, 0x0

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    .line 3
    new-instance p2, Lcom/smartisanos/launcher/data/b;

    invoke-direct {p2, p0, p1}, Lcom/smartisanos/launcher/data/b;-><init>(Lcom/smartisanos/launcher/data/e;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p2

    iget-boolean p3, p2, Lcom/smartisanos/launcher/data/U;->b:Z

    move p2, v0

    :cond_1
    const/4 v4, 0x5

    if-ne p2, v0, :cond_2

    .line 5
    new-instance p2, Lcom/smartisanos/launcher/data/b/c;

    invoke-direct {p2}, Lcom/smartisanos/launcher/data/b/c;-><init>()V

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/b/c;->If()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7
    new-instance p2, Lcom/smartisanos/launcher/data/b/g;

    invoke-direct {p2}, Lcom/smartisanos/launcher/data/b/g;-><init>()V

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/b/g;->If()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    new-instance p2, Lcom/smartisanos/launcher/data/b/a;

    invoke-direct {p2}, Lcom/smartisanos/launcher/data/b/a;-><init>()V

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/b/a;->If()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v4

    :cond_2
    const/4 v0, 0x6

    if-ne p2, v4, :cond_3

    .line 11
    new-instance p2, Lcom/smartisanos/launcher/data/c;

    invoke-direct {p2, p0, p1}, Lcom/smartisanos/launcher/data/c;-><init>(Lcom/smartisanos/launcher/data/e;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p2

    iget-boolean p3, p2, Lcom/smartisanos/launcher/data/U;->b:Z

    move p2, v0

    :cond_3
    const/4 v4, 0x7

    if-ne p2, v0, :cond_4

    .line 13
    :try_start_0
    new-instance p2, Lcom/smartisanos/launcher/data/b/b;

    invoke-direct {p2}, Lcom/smartisanos/launcher/data/b/b;-><init>()V

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/b/b;->If()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move p2, v4

    :cond_4
    const/16 v0, 0x8

    if-ne p2, v4, :cond_5

    .line 15
    :try_start_1
    new-instance p2, Lcom/smartisanos/launcher/data/b/f;

    invoke-direct {p2}, Lcom/smartisanos/launcher/data/b/f;-><init>()V

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/b/f;->If()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move p2, v0

    :cond_5
    const/16 v4, 0x9

    const/4 v5, 0x1

    if-ne p2, v0, :cond_8

    .line 17
    new-instance p2, Lcom/smartisanos/launcher/data/b/d;

    invoke-direct {p2, v4}, Lcom/smartisanos/launcher/data/b/d;-><init>(I)V

    .line 18
    invoke-virtual {p2, v4, p1}, Lcom/smartisanos/launcher/data/b/d;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result p2

    if-nez p2, :cond_6

    move p3, v5

    .line 19
    :cond_6
    new-instance p2, Lcom/smartisanos/launcher/data/b/c;

    invoke-direct {p2, v4}, Lcom/smartisanos/launcher/data/b/c;-><init>(I)V

    .line 20
    invoke-virtual {p2, v4, p1}, Lcom/smartisanos/launcher/data/b/c;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v4

    move p3, v5

    goto :goto_0

    :cond_7
    move p2, v4

    :cond_8
    :goto_0
    const/16 v0, 0xa

    if-ne p2, v4, :cond_b

    .line 21
    new-instance p2, Lcom/smartisanos/launcher/data/b/d;

    invoke-direct {p2, v0}, Lcom/smartisanos/launcher/data/b/d;-><init>(I)V

    .line 22
    invoke-virtual {p2, v0, p1}, Lcom/smartisanos/launcher/data/b/d;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result p2

    if-nez p2, :cond_9

    move p3, v5

    .line 23
    :cond_9
    new-instance p2, Lcom/smartisanos/launcher/data/b/c;

    invoke-direct {p2, v0}, Lcom/smartisanos/launcher/data/b/c;-><init>(I)V

    .line 24
    invoke-virtual {p2, v0, p1}, Lcom/smartisanos/launcher/data/b/c;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result p2

    if-nez p2, :cond_a

    move p2, v0

    move p3, v5

    goto :goto_1

    :cond_a
    move p2, v0

    :cond_b
    :goto_1
    const/16 v4, 0xb

    if-ne p2, v0, :cond_e

    .line 25
    new-instance p2, Lcom/smartisanos/launcher/data/b/d;

    invoke-direct {p2, v4}, Lcom/smartisanos/launcher/data/b/d;-><init>(I)V

    .line 26
    invoke-virtual {p2, v4, p1}, Lcom/smartisanos/launcher/data/b/d;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result p2

    if-nez p2, :cond_c

    move p3, v5

    .line 27
    :cond_c
    new-instance p2, Lcom/smartisanos/launcher/data/b/c;

    invoke-direct {p2, v4}, Lcom/smartisanos/launcher/data/b/c;-><init>(I)V

    .line 28
    invoke-virtual {p2, v4, p1}, Lcom/smartisanos/launcher/data/b/c;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result p2

    if-nez p2, :cond_d

    move p2, v4

    move p3, v5

    goto :goto_2

    :cond_d
    move p2, v4

    :cond_e
    :goto_2
    if-ne p2, v4, :cond_10

    .line 29
    new-instance p2, Lcom/smartisanos/launcher/data/b/d;

    const/16 v0, 0xc

    invoke-direct {p2, v0}, Lcom/smartisanos/launcher/data/b/d;-><init>(I)V

    .line 30
    invoke-virtual {p2, v0, p1}, Lcom/smartisanos/launcher/data/b/d;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result p2

    if-nez p2, :cond_f

    move p3, v5

    .line 31
    :cond_f
    new-instance p2, Lcom/smartisanos/launcher/data/b/c;

    invoke-direct {p2, v0}, Lcom/smartisanos/launcher/data/b/c;-><init>(I)V

    .line 32
    invoke-virtual {p2, v0, p1}, Lcom/smartisanos/launcher/data/b/c;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result p2

    if-nez p2, :cond_10

    move p3, v5

    .line 33
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 34
    sget-boolean p2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p2, :cond_11

    sget-object p2, Lcom/smartisanos/launcher/data/e;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB onUpgrade spend time ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_11
    if-eqz p3, :cond_12

    .line 35
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    :cond_12
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_13

    sget-object p0, Lcom/smartisanos/launcher/data/e;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "onUpgrade done !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
