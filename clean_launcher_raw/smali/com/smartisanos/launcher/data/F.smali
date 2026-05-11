.class public Lcom/smartisanos/launcher/data/F;
.super Ljava/lang/Object;
.source "DatabaseUpdater.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/F;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static I(Ljava/util/List;)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_a

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v5, :cond_9

    .line 5
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 6
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v5

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v8, :cond_0

    .line 9
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 10
    iget v10, v9, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v9}, Lcom/smartisanos/launcher/data/F;->f(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v10

    .line 12
    invoke-interface {p0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    invoke-static {v8}, Lcom/smartisanos/launcher/view/a/aa;->r(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 14
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->ff()Z

    .line 15
    check-cast v9, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/FolderInfo;->getContentValues()Ljava/util/List;

    move-result-object v8

    move v9, v2

    .line 16
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 17
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    invoke-interface {p0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 18
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [I

    move v8, v2

    .line 19
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_3

    .line 20
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 21
    :cond_3
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/fa;->gr()I

    move-result v6

    .line 23
    array-length v8, v7

    if-le v8, v6, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    move v8, v2

    .line 24
    :goto_4
    array-length v9, v7

    if-ge v8, v9, :cond_6

    .line 25
    aget v9, v7, v8

    if-eq v8, v9, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    move v4, v6

    :goto_5
    if-eqz v4, :cond_9

    .line 26
    sget-object p0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "dump error page begin !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_7

    .line 28
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 29
    sget-object v1, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_6

    .line 30
    :cond_8
    sget-object p0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "dump error page end !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cell index error"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 32
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 34
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 35
    invoke-static {v5}, Lcom/smartisanos/launcher/data/F;->f(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v6

    .line 36
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_c
    invoke-static {v3}, Lcom/smartisanos/launcher/view/a/aa;->r(Lcom/smartisanos/launcher/view/a/g;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 38
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->ff()Z

    .line 39
    check-cast v5, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/FolderInfo;->getContentValues()Ljava/util/List;

    move-result-object v3

    move v5, v2

    .line 40
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 41
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 42
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    move v1, v2

    .line 43
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    aput v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 45
    :cond_e
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    move v1, v2

    .line 46
    :goto_9
    array-length v3, p0

    if-ge v1, v3, :cond_10

    .line 47
    aget v3, p0, v1

    if-eq v1, v3, :cond_f

    move v2, v4

    goto :goto_a

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 48
    :cond_10
    :goto_a
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->fr()I

    move-result v1

    .line 49
    array-length v3, p0

    if-le v3, v1, :cond_11

    .line 50
    sget-object v2, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "over max cell count in dock ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], max ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    move v2, v4

    :cond_11
    if-eqz v2, :cond_13

    .line 51
    sget-object v1, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "dock cell index error dump begin"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 53
    sget-object v2, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_b

    .line 54
    :cond_12
    sget-object v0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "dock cell index error dump end"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dock cell index error ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    return-void
.end method

.method private static J(Ljava/util/List;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/bb;->yp()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/b/M;

    .line 7
    iget-boolean v6, v5, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    if-eqz v6, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v6

    if-eqz v2, :cond_2

    if-ne v5, v2, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/bb;->zp()I

    move-result v6

    .line 10
    :cond_2
    iget v7, v5, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/M;->Bn()Ljava/lang/String;

    move-result-object v7

    .line 12
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 13
    iget v5, v5, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "pageIndex"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "pageTitle"

    .line 14
    invoke-virtual {v8, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v8, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_9

    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 19
    :goto_2
    array-length v4, p0

    if-ge v2, v4, :cond_4

    .line 20
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 21
    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    move v2, v1

    .line 22
    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_6

    .line 23
    aget v3, p0, v2

    if-eq v3, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v1, :cond_9

    .line 24
    sget-object v1, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "### DUMP PAGE LIST FOR ERROR ###"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], status ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], title ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Bn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    iget-boolean v4, v1, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    if-eqz v4, :cond_7

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", readOnly ["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Lcom/smartisanos/launcher/view/b/M;->uI:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    :cond_7
    sget-object v1, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_5

    .line 30
    :cond_8
    sget-object v0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "################################"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page index error by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-void
.end method

.method public static a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V
    .locals 2

    const-class v0, Lcom/smartisanos/launcher/data/F;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V
    .locals 2

    const-class v0, Lcom/smartisanos/launcher/data/F;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5

    const-class v0, Lcom/smartisanos/launcher/data/F;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDatabase ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v1, :cond_6

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object p1

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 v4, 0x10000000

    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Nr()V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Nr()V

    .line 12
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/smartisanos/launcher/data/F;->J(Ljava/util/List;)V

    .line 14
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->faa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v1, p1, v2}, Lcom/smartisanos/launcher/data/A;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/smartisanos/launcher/data/F;->I(Ljava/util/List;)V

    .line 17
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->VZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v1, p1, p2}, Lcom/smartisanos/launcher/data/A;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Jg()V

    goto :goto_1

    .line 19
    :cond_3
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 21
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "updateDatabase launcher status is ON_INTO_FOLDER_ANIM"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 22
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 23
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "updateDatabase launcher status is ON_DRAG_OBJECT"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_5
    monitor-exit v0

    return-void

    :cond_6
    if-eqz p1, :cond_7

    .line 25
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    :cond_7
    invoke-static {p0, v2, p2}, Lcom/smartisanos/launcher/data/A;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 28
    :goto_1
    sget-object p1, Lcom/smartisanos/launcher/data/E;->mi:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_a

    if-eq p0, v3, :cond_a

    const/4 p1, 0x3

    if-eq p0, p1, :cond_a

    const/4 p1, 0x4

    if-eq p0, p1, :cond_8

    goto :goto_2

    .line 29
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 p1, 0x1000000

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 30
    new-instance p0, Lcom/smartisanos/launcher/data/D;

    invoke-direct {p0}, Lcom/smartisanos/launcher/data/D;-><init>()V

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/smartisanos/launcher/ub;->a(Lcom/smartisanos/launcher/tb;I)V

    goto :goto_2

    .line 32
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->v()V

    goto :goto_2

    .line 33
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->v()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(ZII)V
    .locals 21

    move/from16 v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "pageIndex ASC, cellIndex ASC"

    .line 35
    invoke-static {v2, v1, v1, v3}, Lcom/smartisanos/launcher/data/a/l;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/smartisanos/launcher/data/a/l;->k(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v3

    .line 37
    invoke-static {v1}, Lcom/smartisanos/launcher/data/a/l;->l(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    .line 38
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v5, "]"

    if-eqz v4, :cond_1

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 41
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 42
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x14

    if-gt v8, v9, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDatabaseByMode error by cell over limited. page index ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], cell count ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDatabaseByMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v4, -0x2

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/data/a/q;->Hf()Ljava/util/List;

    move-result-object v6

    .line 48
    invoke-static {v6}, Lcom/smartisanos/launcher/data/a/q;->p(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v6

    .line 49
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 50
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v9, -0x1

    if-eqz p0, :cond_8

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 53
    sget-boolean v12, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v12, :cond_3

    sget-object v12, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "get dock cell list size ==> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 54
    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x4

    if-lt v12, v13, :cond_5

    .line 55
    sget-boolean v12, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v12, :cond_4

    sget-object v12, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v14, "split dock cell"

    invoke-virtual {v12, v14}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_4
    const/4 v12, 0x3

    .line 56
    invoke-virtual {v11, v2, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v14

    .line 57
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 59
    :cond_5
    sget-boolean v12, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v12, :cond_6

    sget-object v12, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v14, "don\'t need split dock cell"

    invoke-virtual {v12, v14}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 60
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v15, v9

    .line 63
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v13, :cond_7

    goto :goto_2

    .line 64
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dock cell count error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-wide v15, v9

    .line 65
    :goto_2
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    const/4 v11, -0x1

    if-eqz v4, :cond_c

    .line 66
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 67
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 68
    sget-boolean v12, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v12, :cond_9

    .line 69
    sget-object v12, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v13, "DEBUG : pageIndex == -1 error ! ############################"

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 70
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 71
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v12, :cond_a

    .line 72
    sget-boolean v13, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v13, :cond_a

    sget-object v13, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_3

    .line 73
    :cond_b
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_c

    .line 74
    sget-object v4, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v12, "DEBUG : ####################################################"

    invoke-virtual {v4, v12}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_c
    move v4, v2

    .line 75
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    const-string v13, ""

    if-eqz v12, :cond_13

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/data/Q;

    if-nez v14, :cond_d

    .line 77
    new-instance v14, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {v14}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    .line 78
    iput v2, v14, Lcom/smartisanos/launcher/data/Q;->status:I

    .line 79
    invoke-virtual {v14, v13}, Lcom/smartisanos/launcher/data/Q;->P(Ljava/lang/String;)V

    :cond_d
    if-eqz p0, :cond_e

    cmp-long v13, v15, v9

    if-eqz v13, :cond_e

    .line 80
    iget v13, v14, Lcom/smartisanos/launcher/data/Q;->status:I

    if-nez v13, :cond_e

    .line 81
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v2, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-wide v15, v9

    .line 82
    :cond_e
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v0, :cond_12

    .line 83
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 84
    div-int v17, v13, v0

    .line 85
    rem-int v18, v13, v0

    if-eqz v18, :cond_f

    add-int/lit8 v17, v17, 0x1

    :cond_f
    move/from16 v2, v17

    move/from16 v17, v11

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v2, :cond_11

    add-int/lit8 v9, v17, 0x1

    mul-int v10, v11, v0

    move-object/from16 v19, v1

    add-int v1, v10, v0

    if-le v1, v13, :cond_10

    move v1, v13

    .line 86
    :cond_10
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v20, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v12, v10, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v14}, Lcom/smartisanos/launcher/data/Q;->clone()Lcom/smartisanos/launcher/data/Q;

    move-result-object v0

    .line 88
    iput v9, v0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 89
    iget v1, v0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    move/from16 v17, v9

    move-object/from16 v1, v19

    move/from16 v2, v20

    const-wide/16 v9, -0x1

    goto :goto_5

    :cond_11
    move-object/from16 v19, v1

    move/from16 v11, v17

    goto :goto_6

    :cond_12
    move-object/from16 v19, v1

    add-int/lit8 v11, v11, 0x1

    .line 90
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iput v11, v14, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 92
    iget v0, v14, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p2

    move-object/from16 v1, v19

    const/4 v2, 0x0

    const-wide/16 v9, -0x1

    goto/16 :goto_4

    :cond_13
    if-eqz p0, :cond_15

    const-wide/16 v0, -0x1

    cmp-long v0, v15, v0

    if-eqz v0, :cond_15

    add-int/lit8 v11, v11, 0x1

    .line 93
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_14

    .line 94
    sget-object v0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all page is invisible status !!! create new page for it, index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 95
    :cond_14
    new-instance v0, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    .line 96
    iput v11, v0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 97
    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/data/Q;->P(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 98
    iput v1, v0, Lcom/smartisanos/launcher/data/Q;->status:I

    .line 99
    iget v2, v0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget v0, v0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_15
    const/4 v1, 0x0

    .line 103
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "pageIndex"

    if-eqz v4, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 106
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move v9, v1

    .line 107
    :goto_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_16

    .line 108
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 109
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v10, :cond_17

    .line 110
    iput v9, v10, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 111
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 112
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 113
    iget-wide v12, v10, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "_id"

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    iget v12, v10, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "cellIndex"

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    iget v10, v10, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 117
    :cond_17
    sget-boolean v10, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v10, :cond_18

    sget-object v10, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v11, "some error happened from updateDatabaseByMode, can\'t get itemInfo from LauncherModel.sItemInfoIdMap"

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_18
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 118
    :cond_19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [I

    move v6, v1

    .line 121
    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1a

    .line 122
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 123
    :cond_1a
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 124
    :goto_b
    array-length v3, v4

    if-ge v1, v3, :cond_1b

    .line 125
    aget v3, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/Q;

    .line 126
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 127
    iget v7, v3, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    iget v7, v3, Lcom/smartisanos/launcher/data/Q;->status:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "status"

    invoke-virtual {v6, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v3

    const-string v7, "pageTitle"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 131
    :cond_1b
    invoke-static {v0}, Lcom/smartisanos/launcher/data/a/l;->o(Ljava/util/List;)Z

    move/from16 v0, p1

    .line 132
    invoke-static {v2, v0}, Lcom/smartisanos/launcher/data/a/q;->a(Ljava/util/List;I)V

    return-void
.end method

.method public static f(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "folderIndex"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(II)V
    .locals 14

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->OY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDatabaseByMode From "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", To "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isMultiPageMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "mode from can\'t be multi mode !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isMultiPageMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "mode to can\'t be multi mode !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_2
    if-ne p0, p1, :cond_3

    .line 7
    sget-object p0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "error updateDatabaseByMode from is same with to !!!"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_3X3_MODE(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 10
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "to PAGE_1_3X3_MODE begin !"

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE()I

    move-result v2

    .line 12
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v4

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->cellCount(I)I

    move-result v2

    invoke-static {v3, v4, v2}, Lcom/smartisanos/launcher/data/F;->b(ZII)V

    .line 13
    :cond_5
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_4X4_MODE(I)Z

    move-result v2

    const-string v4, "pageTitle"

    const-string v5, "status"

    const-string v6, "pageIndex"

    const/4 v7, 0x0

    if-eqz v2, :cond_a

    .line 14
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v8, "change to PAGE_1_4X4_MODE, begin !"

    invoke-virtual {v2, v8}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 15
    :cond_6
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_3X3_MODE(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 16
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_3X4_MODE(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 17
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/data/a/q;->Hf()Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    .line 19
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v7

    :goto_0
    if-ge v10, v8, :cond_8

    .line 20
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/data/Q;

    .line 21
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 22
    iget v13, v11, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    iget v13, v11, Lcom/smartisanos/launcher/data/Q;->status:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    invoke-virtual {v11}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 26
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_4X4_MODE()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v2

    invoke-static {v9, v2}, Lcom/smartisanos/launcher/data/a/q;->a(Ljava/util/List;I)V

    .line 27
    :cond_9
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_4X5_MODE(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_4X4_MODE()I

    move-result v2

    .line 29
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v8

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->cellCount(I)I

    move-result v2

    invoke-static {v3, v8, v2}, Lcom/smartisanos/launcher/data/F;->b(ZII)V

    .line 30
    :cond_a
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_3X4_MODE(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 31
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v8, "change to PAGE_1_3X4_MODE, begin !"

    invoke-virtual {v2, v8}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 32
    :cond_b
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_3X3_MODE(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/data/a/q;->Hf()Ljava/util/List;

    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    .line 35
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v7

    :goto_1
    if-ge v10, v8, :cond_c

    .line 36
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/data/Q;

    .line 37
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 38
    iget v13, v11, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    iget v13, v11, Lcom/smartisanos/launcher/data/Q;->status:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    invoke-virtual {v11}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 42
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X4_MODE()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v2

    invoke-static {v9, v2}, Lcom/smartisanos/launcher/data/a/q;->a(Ljava/util/List;I)V

    .line 43
    :cond_d
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_4X5_MODE(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 44
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_4X4_MODE(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 45
    :cond_e
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X4_MODE()I

    move-result v2

    .line 46
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v8

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->cellCount(I)I

    move-result v2

    invoke-static {v3, v8, v2}, Lcom/smartisanos/launcher/data/F;->b(ZII)V

    .line 47
    :cond_f
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_4X5_MODE(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 48
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_10

    sget-object v2, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "change to PAGE_1_4X5_MODE, begin !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 49
    :cond_10
    invoke-static {}, Lcom/smartisanos/launcher/data/a/q;->Hf()Ljava/util/List;

    move-result-object v2

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 51
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v7, v3, :cond_11

    .line 52
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/data/Q;

    .line 53
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 54
    iget v11, v9, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    iget v11, v9, Lcom/smartisanos/launcher/data/Q;->status:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 58
    :cond_11
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_4X5_MODE()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v2

    invoke-static {v8, v2}, Lcom/smartisanos/launcher/data/a/q;->a(Ljava/util/List;I)V

    .line 59
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 60
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v5, "======================================================="

    if-eqz v4, :cond_13

    sget-object v4, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 61
    :cond_13
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v6, "]"

    if-eqz v4, :cond_14

    sget-object v4, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "| base mode change, from ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 62
    :cond_14
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_15

    sget-object p0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "|                   to   ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 63
    :cond_15
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_16

    sget-object p0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "| update database spend time ["

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 64
    :cond_16
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_17

    sget-object p0, Lcom/smartisanos/launcher/data/F;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_17
    return-void
.end method
