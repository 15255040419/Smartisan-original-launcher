.class public Lcom/smartisanos/smengine/d;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private EC:Laurelienribon/tweenengine/o;

.field private FC:Ljava/util/ArrayList;

.field private GC:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/d;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/d;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Laurelienribon/tweenengine/o;

    invoke-direct {v0}, Laurelienribon/tweenengine/o;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/d;->EC:Laurelienribon/tweenengine/o;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/d;->FC:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/d;->GC:Ljava/util/ArrayList;

    return-void
.end method

.method private c(Lcom/smartisanos/smengine/c;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/d;->FC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/smartisanos/smengine/d;->FC:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/c;

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private la(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/d;->GC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/d;->FC:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/smartisanos/smengine/d;->FC:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/c;

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/smengine/c;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/smartisanos/smengine/d;->GC:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/smartisanos/smengine/c;->isPaused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/c;->o(F)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/smartisanos/smengine/d;->GC:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/smartisanos/smengine/d;->GC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/smengine/c;

    .line 10
    iget-object v1, p0, Lcom/smartisanos/smengine/d;->FC:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public Oj()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/d;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "#### All tween animation force finish!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/d;->update(F)V

    return-void
.end method

.method public b(Lcom/smartisanos/smengine/c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/d;->c(Lcom/smartisanos/smengine/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/d;->FC:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e(Laurelienribon/tweenengine/h;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/d;->EC:Laurelienribon/tweenengine/o;

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/o;)Ljava/lang/Object;

    return-void
.end method

.method public e(Laurelienribon/tweenengine/k;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/d;->EC:Laurelienribon/tweenengine/o;

    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/o;)Ljava/lang/Object;

    return-void
.end method

.method public update(F)V
    .locals 1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/d;->EC:Laurelienribon/tweenengine/o;

    invoke-virtual {v0}, Laurelienribon/tweenengine/o;->Ja()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/d;->EC:Laurelienribon/tweenengine/o;

    invoke-virtual {v0, p1}, Laurelienribon/tweenengine/o;->update(F)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/d;->FC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/d;->la(F)V

    return-void
.end method
