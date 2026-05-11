.class public Laurelienribon/tweenengine/o;
.super Ljava/lang/Object;
.source "TweenManager.java"


# instance fields
.field private final If:Ljava/util/ArrayList;

.field private of:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laurelienribon/tweenengine/o;->If:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Laurelienribon/tweenengine/o;->of:Z

    return-void
.end method


# virtual methods
.method public Ja()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Laurelienribon/tweenengine/o;->If:Ljava/util/ArrayList;

    return-object p0
.end method

.method public a(Laurelienribon/tweenengine/b;)Laurelienribon/tweenengine/o;
    .locals 1

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/o;->If:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/o;->If:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    iget-boolean v0, p1, Laurelienribon/tweenengine/b;->rf:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Laurelienribon/tweenengine/b;->start()Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public update(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/o;->If:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Laurelienribon/tweenengine/o;->If:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/b;

    .line 3
    invoke-virtual {v1}, Laurelienribon/tweenengine/b;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Laurelienribon/tweenengine/b;->qf:Z

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Laurelienribon/tweenengine/o;->If:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Laurelienribon/tweenengine/b;->free()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Laurelienribon/tweenengine/o;->of:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Laurelienribon/tweenengine/o;->If:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Laurelienribon/tweenengine/o;->If:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/b;

    invoke-virtual {v2, p1}, Laurelienribon/tweenengine/b;->update(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Laurelienribon/tweenengine/o;->If:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    iget-object v1, p0, Laurelienribon/tweenengine/o;->If:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/b;

    invoke-virtual {v1, p1}, Laurelienribon/tweenengine/b;->update(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method
