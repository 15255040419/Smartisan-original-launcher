.class public Lcom/smartisanos/launcher/actions/sort/color/d;
.super Ljava/lang/Object;
.source "IconColor.java"


# instance fields
.field private Xk:Ljava/util/Map;

.field public count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/actions/sort/color/d;->count:I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/d;->Xk:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 1
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/color/d;->Xk:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/actions/sort/color/e;

    if-nez v3, :cond_0

    .line 2
    new-instance v3, Lcom/smartisanos/launcher/actions/sort/color/e;

    invoke-direct {v3, p2}, Lcom/smartisanos/launcher/actions/sort/color/e;-><init>(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/smartisanos/launcher/actions/sort/color/e;->b(IIII)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/d;->Xk:Ljava/util/Map;

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget p1, p0, Lcom/smartisanos/launcher/actions/sort/color/d;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/smartisanos/launcher/actions/sort/color/d;->count:I

    return-void
.end method

.method public sd()Lcom/smartisanos/launcher/actions/sort/color/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/d;->Xk:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/d;->Xk:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/color/d;->Xk:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/actions/sort/color/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/smartisanos/launcher/actions/sort/color/e;

    .line 7
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 9
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0
.end method
