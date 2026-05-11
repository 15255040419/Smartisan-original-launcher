.class Lcom/smartisanos/launcher/data/G;
.super Lcom/smartisanos/launcher/data/V;
.source "ExportDataProvider.java"


# instance fields
.field final synthetic _r:Ljava/lang/String;

.field final synthetic as:Ljava/lang/String;

.field final synthetic bs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/data/G;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/G;->_r:Ljava/lang/String;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/G;->as:Ljava/lang/String;

    iput-object p5, p0, Lcom/smartisanos/launcher/data/G;->bs:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    const/4 v1, -0x1

    iput v1, v0, Lcom/smartisanos/launcher/data/U;->i:I

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/G;->_r:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisanos/launcher/data/G;->as:Ljava/lang/String;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/G;->bs:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/smartisanos/launcher/data/U;->i:I

    return-void
.end method
