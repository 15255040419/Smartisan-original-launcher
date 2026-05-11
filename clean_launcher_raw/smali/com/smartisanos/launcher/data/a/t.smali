.class Lcom/smartisanos/launcher/data/a/t;
.super Lcom/smartisanos/launcher/data/V;
.source "TableOperator.java"


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic xi:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/a/t;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/a/t;->xi:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/a/t;->val$name:Ljava/lang/String;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/a/t;->xi:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/smartisanos/launcher/data/U;->i:I

    return-void
.end method
