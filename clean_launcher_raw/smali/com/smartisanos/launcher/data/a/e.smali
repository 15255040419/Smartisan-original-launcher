.class Lcom/smartisanos/launcher/data/a/e;
.super Lcom/smartisanos/launcher/data/V;
.source "IconDB.java"


# instance fields
.field final synthetic es:Landroid/content/ContentValues;

.field final synthetic fs:Z

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;ZJLandroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/smartisanos/launcher/data/a/e;->fs:Z

    iput-wide p3, p0, Lcom/smartisanos/launcher/data/a/e;->val$id:J

    iput-object p5, p0, Lcom/smartisanos/launcher/data/a/e;->es:Landroid/content/ContentValues;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/U;->b:Z

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/a/e;->fs:Z

    const/4 v1, 0x0

    const-string v2, "table_icons"

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "owner="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/smartisanos/launcher/data/a/e;->val$id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/smartisanos/launcher/data/a/e;->es:Landroid/content/ContentValues;

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/smartisanos/launcher/data/a/e;->es:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/U;->b:Z

    return-void
.end method
