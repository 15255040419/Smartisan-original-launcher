.class Lcom/smartisanos/launcher/data/b;
.super Lcom/smartisanos/launcher/data/V;
.source "DBHelper.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/data/e;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/data/e;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/data/b;->this$0:Lcom/smartisanos/launcher/data/e;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/U;->b:Z

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/data/b/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/data/b/c;-><init>(I)V

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_icons"

    invoke-static {v3}, Lcom/smartisanos/launcher/data/e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/b/c;->If()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/data/b/d;

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/data/b/d;-><init>(I)V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/data/b/d;->a(ILandroid/database/sqlite/SQLiteDatabase;)Z

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/U;->b:Z

    return-void
.end method
