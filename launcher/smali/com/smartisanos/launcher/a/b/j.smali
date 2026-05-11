.class public Lcom/smartisanos/launcher/a/b/j;
.super Ljava/lang/Object;
.source "SortResult.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Vk:Ljava/util/List;

.field private Wk:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/b/j;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/b/j;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/smartisanos/launcher/a/b/j;->Vk:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/smartisanos/launcher/a/b/j;->Wk:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/a/b/j;->Vk:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/a/b/j;->Wk:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/a/b/j;->Vk:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/smartisanos/launcher/a/b/j;->Wk:Ljava/util/Map;

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/launcher/a/b/j;->iw()V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/a/b/j;->Vk:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 8
    :cond_0
    sget-object p1, Lcom/smartisanos/launcher/a/b/j;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "SortResult pageOrder is null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/j;->Wk:Ljava/util/Map;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_3

    .line 10
    :cond_2
    sget-object p0, Lcom/smartisanos/launcher/a/b/j;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "SortResult itemDataMap is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/b/j;->Vk:Ljava/util/List;

    .line 2
    iput-object p2, p0, Lcom/smartisanos/launcher/a/b/j;->Wk:Ljava/util/Map;

    return-void
.end method

.method private iw()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/j;->Vk:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/smartisanos/launcher/a/b/j;->Wk:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3
    iget-object v3, p0, Lcom/smartisanos/launcher/a/b/j;->Vk:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/Q;

    .line 4
    iget-object v4, p0, Lcom/smartisanos/launcher/a/b/j;->Wk:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    .line 6
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 7
    iput v2, v6, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 8
    iput v5, v6, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 9
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "formatIndex. item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/b/j;->Vk:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/j;->Wk:Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public pd()Lcom/smartisanos/launcher/a/b/j;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/a/b/j;

    invoke-direct {v0}, Lcom/smartisanos/launcher/a/b/j;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/a/b/j;->Vk:Ljava/util/List;

    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/j;->Wk:Ljava/util/Map;

    invoke-direct {v0, v1, p0}, Lcom/smartisanos/launcher/a/b/j;->a(Ljava/util/List;Ljava/util/Map;)V

    return-object v0
.end method

.method public qd()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/j;->Wk:Ljava/util/Map;

    return-object p0
.end method

.method public rd()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/j;->Vk:Ljava/util/List;

    return-object p0
.end method
