.class Lcom/smartisanos/launcher/data/a/f;
.super Lcom/smartisanos/launcher/data/V;
.source "IconDB.java"


# instance fields
.field final synthetic gs:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/a/f;->gs:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/a/f;->gs:Ljava/lang/String;

    const-string v1, "table_icons"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
