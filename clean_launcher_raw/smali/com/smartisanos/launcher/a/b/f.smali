.class public Lcom/smartisanos/launcher/a/b/f;
.super Ljava/lang/Object;
.source "AppSortBuilder.java"


# static fields
.field public static final Ak:Ljava/util/Comparator;

.field public static final Bk:Ljava/util/Comparator;

.field private static final Ck:Ljava/util/Comparator;

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/b/f;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/a/b/a;

    invoke-direct {v0}, Lcom/smartisanos/launcher/a/b/a;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/b/f;->Ak:Ljava/util/Comparator;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/a/b/b;

    invoke-direct {v0}, Lcom/smartisanos/launcher/a/b/b;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/b/f;->Bk:Ljava/util/Comparator;

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/a/b/c;

    invoke-direct {v0}, Lcom/smartisanos/launcher/a/b/c;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/b/f;->Ck:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Lc(I)Lcom/smartisanos/launcher/data/Q;
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    .line 2
    iput p0, v0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    const/4 p0, 0x0

    .line 3
    iput p0, v0, Lcom/smartisanos/launcher/data/Q;->status:I

    const-string p0, ""

    .line 4
    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/data/Q;->P(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(ILjava/util/Map;I)Lcom/smartisanos/launcher/a/b/j;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/a/b/f;->gw()Ljava/util/Map;

    move-result-object v4

    .line 6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-static {p0, p1, v4, v5}, Lcom/smartisanos/launcher/a/b/f;->a(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 8
    invoke-static {v3, v2, v1, v5}, Lcom/smartisanos/launcher/a/b/f;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 9
    sget-object v4, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dockItems ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], pageItems ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], systemItems ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode(I)I

    move-result v4

    .line 11
    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v4

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-static {v4, v3, v5, v6}, Lcom/smartisanos/launcher/a/b/f;->a(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v7, 0x1

    if-eq p0, v7, :cond_4

    const/4 v8, 0x2

    if-eq p0, v8, :cond_3

    const/4 v8, 0x3

    if-eq p0, v8, :cond_2

    const/4 v8, 0x4

    if-eq p0, v8, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v4, v2, v5, v6}, Lcom/smartisanos/launcher/a/b/f;->b(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)Z

    move-result v7

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v4, v2, v5, v6}, Lcom/smartisanos/launcher/a/b/f;->d(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {v4, v2, v5, v6}, Lcom/smartisanos/launcher/a/b/f;->c(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {v4, v2, v5, v6}, Lcom/smartisanos/launcher/a/b/f;->e(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    :goto_0
    if-eqz v7, :cond_5

    .line 20
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result p0

    if-nez p0, :cond_7

    .line 21
    :cond_5
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_6

    return-object v0

    .line 22
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 23
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 24
    invoke-static {v4, v3, v5, v6}, Lcom/smartisanos/launcher/a/b/f;->a(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    .line 25
    invoke-static {v4, v2, v5, v6}, Lcom/smartisanos/launcher/a/b/f;->d(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    .line 26
    :cond_7
    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->getPageNums(I)I

    move-result p0

    .line 27
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/Q;

    .line 30
    iget v3, v2, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, p0, :cond_b

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/data/Q;

    if-eqz v7, :cond_9

    .line 34
    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 35
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 37
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 38
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/data/Q;

    .line 39
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 40
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 42
    :cond_a
    new-instance v7, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {v7}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    .line 43
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 45
    :cond_b
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_d

    .line 46
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/Q;

    .line 49
    iget v7, v4, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 50
    :cond_c
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v4, v3

    .line 52
    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_d

    .line 53
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/data/Q;

    .line 55
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 56
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 58
    :cond_d
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_e

    .line 59
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/data/Q;

    .line 60
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 61
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 63
    :cond_e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    move v0, v3

    :goto_7
    if-ge v0, p0, :cond_10

    .line 64
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/Q;

    .line 65
    iput v0, v4, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 66
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 67
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v7, v3

    :goto_8
    if-ge v7, v5, :cond_f

    .line 68
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 69
    iput v0, v8, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 70
    iput v7, v8, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 71
    :cond_10
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 72
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 73
    sget-object p0, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "###### dump sort ######"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 74
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/data/Q;

    .line 75
    sget-object v0, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/smartisanos/launcher/data/Q;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 77
    sget-object v0, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "item dump __________________"

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 79
    sget-object v3, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], title ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], usageCount ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], userId ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_a

    .line 80
    :cond_11
    sget-object p1, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "____________________________"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 81
    :cond_12
    sget-object p0, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "#######################"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 82
    new-instance p0, Lcom/smartisanos/launcher/a/b/j;

    invoke-direct {p0, p2, v2}, Lcom/smartisanos/launcher/a/b/j;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object p0

    :cond_13
    :goto_b
    return-object v0
.end method

.method private static a(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 8

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    new-instance v1, Lcom/smartisanos/launcher/a/b/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartisanos/launcher/a/b/e;-><init>(ILjava/util/Map;Ljava/util/Map;)V

    .line 85
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 87
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/a/b/e;->d(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-static {v2, p2, v0}, Lcom/smartisanos/launcher/a/b/f;->a(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-wide v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/launcher/data/Q;

    .line 95
    iget v1, p3, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 97
    new-instance p3, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {p3}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    .line 98
    iput p2, p3, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/launcher/data/Q;

    .line 101
    iget v1, p3, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 102
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    :goto_3
    if-ge p2, p3, :cond_b

    .line 104
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/Q;

    .line 106
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_a

    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_6

    .line 108
    :cond_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 110
    iget v6, v5, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 111
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 113
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 115
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 116
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 117
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 118
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 119
    :cond_9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 120
    :cond_b
    sget-object p0, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "keepUserDataMap size => "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_b

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 134
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    sget-object v1, Lcom/smartisanos/launcher/data/T;->Nr:[Lcom/smartisanos/launcher/data/S;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 136
    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/S;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :cond_1
    sget-object v1, Lcom/smartisanos/launcher/data/T;->Lr:[[Lcom/smartisanos/launcher/data/S;

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 138
    array-length v6, v5

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 139
    invoke-virtual {v8}, Lcom/smartisanos/launcher/data/S;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 140
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 143
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 144
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_5

    .line 146
    iget-boolean v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v4

    if-nez v4, :cond_5

    .line 147
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 148
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 152
    :cond_7
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 153
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    .line 154
    div-int v0, p1, p0

    .line 155
    rem-int/2addr p1, p0

    if-eqz p1, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    move p1, v3

    :goto_6
    if-ge p1, v0, :cond_b

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    :goto_7
    if-ge v4, p0, :cond_a

    mul-int v5, p1, p0

    add-int/2addr v5, v4

    .line 157
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_9

    goto :goto_8

    .line 158
    :cond_9
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 159
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 160
    :cond_a
    :goto_8
    invoke-static {p1}, Lcom/smartisanos/launcher/a/b/f;->Lc(I)Lcom/smartisanos/launcher/data/Q;

    move-result-object v4

    .line 161
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_b
    :goto_9
    return-void
.end method

.method private static a(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 121
    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/data/Q;

    .line 122
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 2

    .line 126
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 128
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 129
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/b/f;->f(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method private static b(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)Z
    .locals 16

    move/from16 v1, p0

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "content://com.smartisanos.expandservice.launcher"

    .line 5
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "query_app_category"

    invoke-virtual {v0, v6, v7, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 6
    sget-boolean v6, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildThirdPartyAppsByCategory time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const-string v4, "category_other"

    .line 7
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v5, "display_order"

    .line 8
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 11
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    .line 12
    :goto_1
    sget-object v6, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    const-string v7, "ExpandServices is error."

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    if-nez v5, :cond_3

    .line 14
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v2, "categoryOrderList is null"

    if-nez v1, :cond_2

    .line 15
    sget-object v1, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 18
    sget-object v8, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "category ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 21
    sget-object v9, Lcom/smartisanos/launcher/a/b/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pkg ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 23
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_8

    goto :goto_4

    .line 24
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 25
    invoke-static {v9}, Lcom/smartisanos/launcher/e/s;->ra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v3, v7

    goto :goto_4

    .line 26
    :cond_a
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 27
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 28
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_c

    goto :goto_5

    .line 30
    :cond_c
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 31
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_d

    goto :goto_6

    .line 32
    :cond_d
    invoke-interface {v7, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 33
    :cond_e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move v8, v0

    :goto_7
    const/4 v9, 0x1

    if-ge v8, v2, :cond_13

    move-object/from16 v10, p1

    .line 34
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 35
    iget-object v12, v11, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 36
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_f

    .line 37
    iget-byte v13, v11, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne v13, v9, :cond_11

    :cond_f
    if-eqz v3, :cond_10

    .line 38
    invoke-virtual {v11}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v9

    if-eqz v9, :cond_10

    iget-boolean v9, v11, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v9, :cond_10

    move-object v12, v3

    goto :goto_8

    :cond_10
    move-object v12, v4

    .line 39
    :cond_11
    :goto_8
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_12

    .line 40
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 41
    :cond_12
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-interface {v6, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 43
    :cond_13
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .line 44
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 45
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move v3, v0

    move v4, v3

    .line 46
    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1b

    .line 47
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 48
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_1a

    .line 49
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_15

    goto :goto_d

    .line 50
    :cond_15
    sget-object v10, Lcom/smartisanos/launcher/a/b/f;->Ck:Ljava/util/Comparator;

    invoke-static {v8, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 52
    div-int v11, v10, v1

    .line 53
    rem-int v12, v10, v1

    if-eqz v12, :cond_16

    add-int/lit8 v11, v11, 0x1

    :cond_16
    move v12, v4

    move v4, v0

    :goto_a
    if-ge v4, v11, :cond_19

    .line 54
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v14, v0

    :goto_b
    if-ge v14, v1, :cond_18

    mul-int v15, v4, v1

    add-int/2addr v15, v14

    if-lt v15, v10, :cond_17

    goto :goto_c

    .line 55
    :cond_17
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 56
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_18
    :goto_c
    add-int v14, v2, v12

    .line 57
    invoke-static {v14}, Lcom/smartisanos/launcher/a/b/f;->Lc(I)Lcom/smartisanos/launcher/data/Q;

    move-result-object v14

    add-int/lit8 v12, v12, 0x1

    .line 58
    invoke-virtual {v14, v7}, Lcom/smartisanos/launcher/data/Q;->P(Ljava/lang/String;)V

    move-object/from16 v15, p2

    .line 59
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p3

    .line 60
    invoke-virtual {v9, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x1

    goto :goto_a

    :cond_19
    move-object/from16 v15, p2

    move-object/from16 v9, p3

    move v4, v12

    goto :goto_e

    :cond_1a
    :goto_d
    move-object/from16 v15, p2

    move-object/from16 v9, p3

    :goto_e
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x1

    goto :goto_9

    :cond_1b
    move v3, v9

    return v3
.end method

.method static synthetic c(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/b/f;->g(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method private static c(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 8

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 7
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8
    iget-wide v5, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 11
    div-int v3, v0, p0

    .line 12
    rem-int v4, v0, p0

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 13
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 15
    iget-object v6, v5, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 16
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_2

    const-wide/16 v6, 0x0

    .line 17
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 18
    :cond_2
    new-instance v7, Lcom/smartisanos/launcher/a/b/d;

    invoke-direct {v7}, Lcom/smartisanos/launcher/a/b/d;-><init>()V

    .line 19
    iput-object v5, v7, Lcom/smartisanos/launcher/a/b/d;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 20
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v7, Lcom/smartisanos/launcher/a/b/d;->yk:J

    .line 21
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_3
    sget-object p1, Lcom/smartisanos/launcher/a/b/f;->Ak:Ljava/util/Comparator;

    invoke-static {v4, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_6

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_3
    if-ge v6, p0, :cond_5

    mul-int v7, v2, p0

    add-int/2addr v7, v6

    if-lt v7, v0, :cond_4

    goto :goto_4

    .line 25
    :cond_4
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/a/b/d;

    iget-object v7, v7, Lcom/smartisanos/launcher/a/b/d;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 26
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int v6, p1, v2

    .line 27
    invoke-static {v6}, Lcom/smartisanos/launcher/a/b/f;->Lc(I)Lcom/smartisanos/launcher/data/Q;

    move-result-object v6

    .line 28
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method static synthetic d(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/b/f;->e(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method private static d(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 8

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    div-int v1, v0, p0

    .line 4
    rem-int v2, v0, p0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 7
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    move-object v4, v3

    check-cast v4, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/FolderInfo;->tf()I

    .line 9
    :cond_1
    iget v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    .line 10
    new-instance v5, Lcom/smartisanos/launcher/a/b/d;

    invoke-direct {v5}, Lcom/smartisanos/launcher/a/b/d;-><init>()V

    .line 11
    iput-object v3, v5, Lcom/smartisanos/launcher/a/b/d;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 12
    iput v4, v5, Lcom/smartisanos/launcher/a/b/d;->xk:I

    .line 13
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    sget-object p1, Lcom/smartisanos/launcher/a/b/f;->Bk:Ljava/util/Comparator;

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_5

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    :goto_2
    if-ge v6, p0, :cond_4

    mul-int v7, v4, p0

    add-int/2addr v7, v6

    if-lt v7, v0, :cond_3

    goto :goto_3

    .line 17
    :cond_3
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/a/b/d;

    iget-object v7, v7, Lcom/smartisanos/launcher/a/b/d;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 18
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int v6, p1, v4

    .line 19
    invoke-static {v6}, Lcom/smartisanos/launcher/a/b/f;->Lc(I)Lcom/smartisanos/launcher/data/Q;

    move-result-object v6

    .line 20
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static e(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    mul-int/lit8 v0, v0, 0x64

    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    add-int/2addr v0, p0

    .line 2
    iget p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    mul-int/lit8 p0, p0, 0x64

    iget p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    add-int/2addr p0, p1

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static e(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 17

    move/from16 v0, p0

    if-eqz p1, :cond_f

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/actions/sort/color/f;->e(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    div-int/lit8 v3, v0, 0x2

    .line 6
    sget-object v4, Lcom/smartisanos/launcher/actions/sort/color/f;->bl:[[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_d

    aget-object v8, v4, v7

    if-nez v8, :cond_0

    goto/16 :goto_8

    :cond_0
    move v9, v6

    move v10, v9

    .line 7
    :goto_1
    array-length v11, v8

    if-ge v9, v11, :cond_c

    .line 8
    aget-object v11, v8, v9

    if-nez v11, :cond_1

    goto/16 :goto_7

    .line 9
    :cond_1
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_b

    .line 10
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_7

    .line 11
    :cond_2
    sget-object v12, Lcom/smartisanos/launcher/actions/sort/color/f;->cl:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v12, 0x1

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v12

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 14
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-gt v13, v3, :cond_3

    move v13, v12

    goto :goto_2

    :cond_3
    move v13, v6

    :goto_2
    if-eqz v13, :cond_5

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v12

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 16
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    sub-int v14, v0, v14

    move v15, v6

    :goto_3
    if-ge v15, v14, :cond_5

    .line 17
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_4

    .line 18
    invoke-interface {v11, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 19
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x1

    goto :goto_3

    .line 20
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 21
    div-int v13, v12, v0

    .line 22
    rem-int/2addr v12, v0

    if-eqz v12, :cond_6

    add-int/lit8 v13, v13, 0x1

    :cond_6
    move v12, v10

    move v10, v6

    :goto_4
    if-ge v10, v13, :cond_a

    .line 23
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move v15, v6

    :goto_5
    if-ge v15, v0, :cond_8

    .line 24
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_7

    goto :goto_6

    .line 25
    :cond_7
    invoke-interface {v11, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 26
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x0

    goto :goto_5

    .line 27
    :cond_8
    :goto_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 28
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    :cond_9
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_a
    move v10, v12

    :cond_b
    :goto_7
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_c
    :goto_8
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 29
    :cond_d
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_e

    .line 31
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 32
    sget-object v5, Lcom/smartisanos/launcher/a/b/f;->Ck:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int v5, v0, v3

    .line 33
    invoke-static {v5}, Lcom/smartisanos/launcher/a/b/f;->Lc(I)Lcom/smartisanos/launcher/data/Q;

    move-result-object v5

    move-object/from16 v6, p2

    .line 34
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p3

    .line 35
    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    return-void

    .line 36
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "buildThirdPartyAppsOrderByColor() pageItems == null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result p0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result p1

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static g(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    iget v1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/b/f;->e(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method private static gw()Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/data/a/q;->Hf()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/Q;

    .line 4
    iget v3, v2, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
