.class public Lb/b/a/a/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "XiaoYuanDBHelper.java"


# static fields
.field private static Db:Lb/b/a/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "sms_card.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/smartisanos/launcher/data/b/h;

    .line 1
    new-instance v1, Lb/b/a/a/d;

    invoke-direct {v1}, Lb/b/a/a/d;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/b/h;->If()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lb/b/a/a/f;
    .locals 1

    .line 1
    sget-object v0, Lb/b/a/a/f;->Db:Lb/b/a/a/f;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lb/b/a/a/f;->Db:Lb/b/a/a/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/b/a/a/f;

    invoke-direct {v0, p0}, Lb/b/a/a/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lb/b/a/a/f;->Db:Lb/b/a/a/f;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/b/a/a/f;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
