.class public abstract Lcom/smartisanos/launcher/data/V;
.super Ljava/lang/Object;
.source "TransactionTask.java"


# instance fields
.field protected Wr:Landroid/database/sqlite/SQLiteDatabase;

.field public Xr:Lcom/smartisanos/launcher/data/U;

.field public result:Lcom/smartisanos/launcher/data/U;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public execute()Lcom/smartisanos/launcher/data/U;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Lcom/smartisanos/launcher/data/U;

    invoke-direct {v1}, Lcom/smartisanos/launcher/data/U;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Xr:Lcom/smartisanos/launcher/data/U;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Xr:Lcom/smartisanos/launcher/data/U;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/data/U;->a(Lcom/smartisanos/launcher/data/U;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/V;->run()V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Lcom/smartisanos/launcher/data/U;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/U;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    .line 9
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 11
    new-instance v2, Lcom/smartisanos/launcher/data/U;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/U;-><init>()V

    :goto_0
    iput-object v2, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/data/V;->Xr:Lcom/smartisanos/launcher/data/U;

    if-eqz v0, :cond_1

    .line 14
    iput-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    goto :goto_2

    .line 15
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/data/U;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/U;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    .line 16
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    return-object p0

    .line 17
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/smartisanos/launcher/data/V;->Wr:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 18
    new-instance v2, Lcom/smartisanos/launcher/data/U;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/U;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/data/V;->result:Lcom/smartisanos/launcher/data/U;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :goto_4
    throw v0
.end method

.method public abstract run()V
.end method
