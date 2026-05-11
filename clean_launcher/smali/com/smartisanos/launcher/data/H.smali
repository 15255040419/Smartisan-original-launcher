.class Lcom/smartisanos/launcher/data/H;
.super Lcom/smartisanos/launcher/data/V;
.source "ExportDataProvider.java"


# instance fields
.field final synthetic _r:Ljava/lang/String;

.field final synthetic cs:Ljava/util/List;

.field final synthetic this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/data/H;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/H;->cs:Ljava/util/List;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/H;->_r:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    const/4 v1, -0x1

    iput v1, v0, Lcom/smartisanos/launcher/data/U;->i:I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/data/H;->cs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/data/H;->cs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/smartisanos/launcher/data/H;->_r:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/H;->cs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    iput p0, v0, Lcom/smartisanos/launcher/data/U;->i:I

    return-void
.end method
