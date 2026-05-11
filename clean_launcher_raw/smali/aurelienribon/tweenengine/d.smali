.class abstract Laurelienribon/tweenengine/d;
.super Ljava/lang/Object;
.source "Pool.java"


# instance fields
.field private final If:Ljava/util/ArrayList;

.field private final callback:Laurelienribon/tweenengine/c;


# direct methods
.method public constructor <init>(ILaurelienribon/tweenengine/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laurelienribon/tweenengine/d;->If:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Laurelienribon/tweenengine/d;->callback:Laurelienribon/tweenengine/c;

    return-void
.end method


# virtual methods
.method protected abstract create()Ljava/lang/Object;
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/d;->If:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Laurelienribon/tweenengine/d;->callback:Laurelienribon/tweenengine/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Laurelienribon/tweenengine/c;->a(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p0, p0, Laurelienribon/tweenengine/d;->If:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/d;->If:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/d;->create()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/d;->If:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    :goto_0
    iget-object p0, p0, Laurelienribon/tweenengine/d;->callback:Laurelienribon/tweenengine/c;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Laurelienribon/tweenengine/c;->c(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method
