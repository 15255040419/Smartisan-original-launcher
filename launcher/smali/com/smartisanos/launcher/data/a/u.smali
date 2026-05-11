.class Lcom/smartisanos/launcher/data/a/u;
.super Lcom/smartisanos/launcher/data/V;
.source "TableOperator.java"


# instance fields
.field final synthetic as:Ljava/lang/String;

.field final synthetic es:Landroid/content/ContentValues;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/a/u;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/a/u;->es:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/a/u;->as:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    const/4 v1, -0x1

    iput v1, v0, Lcom/smartisanos/launcher/data/U;->i:I

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/a/u;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisanos/launcher/data/a/u;->es:Landroid/content/ContentValues;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/a/u;->as:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/smartisanos/launcher/data/U;->i:I

    return-void
.end method
