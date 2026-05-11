.class Lcom/smartisanos/launcher/data/c;
.super Lcom/smartisanos/launcher/data/V;
.source "DBHelper.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/data/e;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/data/e;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/data/c;->this$0:Lcom/smartisanos/launcher/data/e;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/data/b/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/data/b/c;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_icons"

    invoke-static {v2}, Lcom/smartisanos/launcher/data/e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/b/c;->If()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
