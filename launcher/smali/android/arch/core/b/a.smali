.class public Landroid/arch/core/b/a;
.super Landroid/arch/core/b/i;
.source "FastSafeIterableMap.java"


# instance fields
.field private D:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/arch/core/b/i;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/core/b/a;->D:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/core/b/a;->D:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/arch/core/b/a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Landroid/arch/core/b/a;->D:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/arch/core/b/e;

    iget-object p0, p0, Landroid/arch/core/b/e;->q:Landroid/arch/core/b/e;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected get(Ljava/lang/Object;)Landroid/arch/core/b/e;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/core/b/a;->D:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/arch/core/b/e;

    return-object p0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/arch/core/b/a;->get(Ljava/lang/Object;)Landroid/arch/core/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, v0, Landroid/arch/core/b/e;->mValue:Ljava/lang/Object;

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/arch/core/b/a;->D:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Landroid/arch/core/b/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/arch/core/b/e;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/arch/core/b/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object p0, p0, Landroid/arch/core/b/a;->D:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
