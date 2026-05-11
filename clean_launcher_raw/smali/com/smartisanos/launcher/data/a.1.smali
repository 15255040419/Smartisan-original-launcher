.class Lcom/smartisanos/launcher/data/a;
.super Lcom/smartisanos/launcher/data/V;
.source "DBHelper.java"


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

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
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/b/h;->Jf()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3}, Lcom/smartisanos/launcher/data/e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
