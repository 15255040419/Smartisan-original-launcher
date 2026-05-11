.class Lcom/smartisanos/launcher/data/a/r;
.super Lcom/smartisanos/launcher/data/V;
.source "TableOperator.java"


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/a/r;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/a/r;->val$value:Landroid/content/ContentValues;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/smartisanos/launcher/data/U;->l:J

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/a/r;->val$name:Ljava/lang/String;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/a/r;->val$value:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/smartisanos/launcher/data/U;->l:J

    return-void
.end method
