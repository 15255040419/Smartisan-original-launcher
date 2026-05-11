.class Lcom/smartisanos/launcher/data/I;
.super Lcom/smartisanos/launcher/data/V;
.source "ExportDataProvider.java"


# instance fields
.field final synthetic ds:Ljava/lang/String;

.field final synthetic this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

.field final synthetic val$value:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/data/I;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/I;->ds:Ljava/lang/String;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/I;->val$value:Landroid/content/ContentValues;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/I;->ds:Ljava/lang/String;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/I;->val$value:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    long-to-int p0, v1

    iput p0, v0, Lcom/smartisanos/launcher/data/U;->i:I

    return-void
.end method
