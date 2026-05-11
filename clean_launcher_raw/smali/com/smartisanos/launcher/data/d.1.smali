.class Lcom/smartisanos/launcher/data/d;
.super Lcom/smartisanos/launcher/data/V;
.source "DBHelper.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/data/e;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/data/e;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/data/d;->this$0:Lcom/smartisanos/launcher/data/e;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_iteminfos"

    invoke-static {v1}, Lcom/smartisanos/launcher/data/e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_pageinfos"

    invoke-static {v1}, Lcom/smartisanos/launcher/data/e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_icons"

    invoke-static {v1}, Lcom/smartisanos/launcher/data/e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "table_themes"

    invoke-static {v0}, Lcom/smartisanos/launcher/data/e;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
