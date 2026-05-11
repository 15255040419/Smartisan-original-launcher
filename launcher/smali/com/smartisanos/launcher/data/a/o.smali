.class Lcom/smartisanos/launcher/data/a/o;
.super Lcom/smartisanos/launcher/data/V;
.source "PageDB.java"


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/U;->b:Z

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "status=2"

    const-string v2, "table_pageinfos"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->Gc()V

    :cond_0
    return-void
.end method
