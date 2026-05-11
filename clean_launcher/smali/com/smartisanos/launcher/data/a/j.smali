.class Lcom/smartisanos/launcher/data/a/j;
.super Lcom/smartisanos/launcher/data/V;
.source "ItemDB.java"


# instance fields
.field final synthetic hs:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/a/j;->hs:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/V;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/a/j;->hs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/data/a/j;->hs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const-string v5, "table_iteminfos"

    invoke-virtual {v3, v5, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method
