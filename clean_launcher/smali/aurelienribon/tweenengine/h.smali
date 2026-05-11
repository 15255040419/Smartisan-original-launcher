.class public final Laurelienribon/tweenengine/h;
.super Laurelienribon/tweenengine/b;
.source "Timeline.java"


# static fields
.field private static final tf:Laurelienribon/tweenengine/c;

.field static final uf:Laurelienribon/tweenengine/d;


# instance fields
.field private final children:Ljava/util/List;

.field private current:Laurelienribon/tweenengine/h;

.field private isBuilt:Z

.field private mode:Laurelienribon/tweenengine/Timeline$Modes;

.field private parent:Laurelienribon/tweenengine/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Laurelienribon/tweenengine/e;

    invoke-direct {v0}, Laurelienribon/tweenengine/e;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/h;->tf:Laurelienribon/tweenengine/c;

    .line 2
    new-instance v0, Laurelienribon/tweenengine/f;

    const/16 v1, 0xa

    sget-object v2, Laurelienribon/tweenengine/h;->tf:Laurelienribon/tweenengine/c;

    invoke-direct {v0, v1, v2}, Laurelienribon/tweenengine/f;-><init>(ILaurelienribon/tweenengine/c;)V

    sput-object v0, Laurelienribon/tweenengine/h;->uf:Laurelienribon/tweenengine/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Laurelienribon/tweenengine/b;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Laurelienribon/tweenengine/h;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Laurelienribon/tweenengine/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/h;-><init>()V

    return-void
.end method

.method public static Ha()Laurelienribon/tweenengine/h;
    .locals 2

    .line 1
    sget-object v0, Laurelienribon/tweenengine/h;->uf:Laurelienribon/tweenengine/d;

    invoke-virtual {v0}, Laurelienribon/tweenengine/d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/h;

    .line 2
    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->MY:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-direct {v0, v1}, Laurelienribon/tweenengine/h;->a(Laurelienribon/tweenengine/Timeline$Modes;)V

    return-object v0
.end method

.method public static Ia()Laurelienribon/tweenengine/h;
    .locals 2

    .line 1
    sget-object v0, Laurelienribon/tweenengine/h;->uf:Laurelienribon/tweenengine/d;

    invoke-virtual {v0}, Laurelienribon/tweenengine/d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/h;

    .line 2
    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->SEQUENCE:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-direct {v0, v1}, Laurelienribon/tweenengine/h;->a(Laurelienribon/tweenengine/Timeline$Modes;)V

    return-object v0
.end method

.method private a(Laurelienribon/tweenengine/Timeline$Modes;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laurelienribon/tweenengine/h;->mode:Laurelienribon/tweenengine/Timeline$Modes;

    .line 2
    iput-object p0, p0, Laurelienribon/tweenengine/h;->current:Laurelienribon/tweenengine/h;

    return-void
.end method


# virtual methods
.method protected Ba()V
    .locals 4

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/b;

    .line 3
    iget v3, p0, Laurelienribon/tweenengine/b;->duration:F

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/b;->g(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected Ca()V
    .locals 2

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/b;

    .line 3
    invoke-virtual {v1}, Laurelienribon/tweenengine/b;->Da()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Ga()Laurelienribon/tweenengine/h;
    .locals 3

    .line 1
    iget-boolean v0, p0, Laurelienribon/tweenengine/h;->isBuilt:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Laurelienribon/tweenengine/h;->uf:Laurelienribon/tweenengine/d;

    invoke-virtual {v0}, Laurelienribon/tweenengine/d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/h;

    .line 3
    iget-object v1, p0, Laurelienribon/tweenengine/h;->current:Laurelienribon/tweenengine/h;

    iput-object v1, v0, Laurelienribon/tweenengine/h;->parent:Laurelienribon/tweenengine/h;

    .line 4
    sget-object v2, Laurelienribon/tweenengine/Timeline$Modes;->MY:Laurelienribon/tweenengine/Timeline$Modes;

    iput-object v2, v0, Laurelienribon/tweenengine/h;->mode:Laurelienribon/tweenengine/Timeline$Modes;

    .line 5
    iget-object v1, v1, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object v0, p0, Laurelienribon/tweenengine/h;->current:Laurelienribon/tweenengine/h;

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "You can\'t push anything to a timeline once it is started"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Laurelienribon/tweenengine/h;)Laurelienribon/tweenengine/h;
    .locals 1

    .line 6
    iget-boolean v0, p0, Laurelienribon/tweenengine/h;->isBuilt:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p1, Laurelienribon/tweenengine/h;->current:Laurelienribon/tweenengine/h;

    if-ne v0, p1, :cond_0

    .line 8
    iget-object v0, p0, Laurelienribon/tweenengine/h;->current:Laurelienribon/tweenengine/h;

    iput-object v0, p1, Laurelienribon/tweenengine/h;->parent:Laurelienribon/tweenengine/h;

    .line 9
    iget-object v0, v0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "You forgot to call a few \'end()\' statements in your pushed timeline"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Laurelienribon/tweenengine/k;)Laurelienribon/tweenengine/h;
    .locals 1

    .line 3
    iget-boolean v0, p0, Laurelienribon/tweenengine/h;->isBuilt:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Laurelienribon/tweenengine/h;->current:Laurelienribon/tweenengine/h;

    iget-object v0, v0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected a(IIZF)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p3, :cond_2

    if-le p1, p2, :cond_2

    .line 12
    invoke-virtual {p0, p2}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result p1

    if-eqz p1, :cond_0

    neg-float p1, p4

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_0
    add-float p1, p4, v1

    .line 13
    :goto_0
    iget-object p2, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_1

    iget-object p3, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laurelienribon/tweenengine/b;

    invoke-virtual {p3, p1}, Laurelienribon/tweenengine/b;->update(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    if-nez p3, :cond_5

    if-ge p1, p2, :cond_5

    .line 14
    invoke-virtual {p0, p2}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result p1

    if-eqz p1, :cond_3

    neg-float p1, p4

    sub-float/2addr p1, v1

    goto :goto_2

    :cond_3
    add-float p1, p4, v1

    .line 15
    :goto_2
    iget-object p2, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_3
    if-ltz p2, :cond_4

    iget-object p3, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laurelienribon/tweenengine/b;

    invoke-virtual {p3, p1}, Laurelienribon/tweenengine/b;->update(F)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_4
    return-void

    :cond_5
    if-le p1, p2, :cond_7

    .line 16
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p0}, Laurelienribon/tweenengine/h;->Ba()V

    .line 18
    iget-object p1, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_4
    if-ge v0, p1, :cond_c

    iget-object p2, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laurelienribon/tweenengine/b;

    invoke-virtual {p2, p4}, Laurelienribon/tweenengine/b;->update(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 19
    :cond_6
    invoke-virtual {p0}, Laurelienribon/tweenengine/h;->Ca()V

    .line 20
    iget-object p1, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_5
    if-ge v0, p1, :cond_c

    iget-object p2, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laurelienribon/tweenengine/b;

    invoke-virtual {p2, p4}, Laurelienribon/tweenengine/b;->update(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    if-ge p1, p2, :cond_9

    .line 21
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 22
    invoke-virtual {p0}, Laurelienribon/tweenengine/h;->Ca()V

    .line 23
    iget-object p1, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_6
    if-ltz p1, :cond_c

    iget-object p2, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laurelienribon/tweenengine/b;

    invoke-virtual {p2, p4}, Laurelienribon/tweenengine/b;->update(F)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    .line 24
    :cond_8
    invoke-virtual {p0}, Laurelienribon/tweenengine/h;->Ba()V

    .line 25
    iget-object p1, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_7
    if-ltz p1, :cond_c

    iget-object p2, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laurelienribon/tweenengine/b;

    invoke-virtual {p2, p4}, Laurelienribon/tweenengine/b;->update(F)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    .line 26
    :cond_9
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result p1

    if-eqz p1, :cond_a

    neg-float p1, p4

    goto :goto_8

    :cond_a
    move p1, p4

    :goto_8
    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-ltz p2, :cond_b

    .line 27
    iget-object p2, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_9
    if-ge v0, p2, :cond_c

    iget-object p3, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laurelienribon/tweenengine/b;

    invoke-virtual {p3, p1}, Laurelienribon/tweenengine/b;->update(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 28
    :cond_b
    iget-object p2, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_a
    if-ltz p2, :cond_c

    iget-object p3, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laurelienribon/tweenengine/b;

    invoke-virtual {p3, p1}, Laurelienribon/tweenengine/b;->update(F)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_c
    return-void
.end method

.method public build()Laurelienribon/tweenengine/h;
    .locals 5

    .line 2
    iget-boolean v0, p0, Laurelienribon/tweenengine/h;->isBuilt:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Laurelienribon/tweenengine/b;->duration:F

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    .line 5
    iget-object v1, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/b;

    .line 6
    invoke-virtual {v1}, Laurelienribon/tweenengine/b;->getRepeatCount()I

    move-result v3

    if-ltz v3, :cond_3

    .line 7
    invoke-virtual {v1}, Laurelienribon/tweenengine/b;->build()Ljava/lang/Object;

    .line 8
    sget-object v3, Laurelienribon/tweenengine/g;->Jf:[I

    iget-object v4, p0, Laurelienribon/tweenengine/h;->mode:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_2

    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget v2, p0, Laurelienribon/tweenengine/b;->duration:F

    invoke-virtual {v1}, Laurelienribon/tweenengine/b;->Ea()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Laurelienribon/tweenengine/b;->duration:F

    goto :goto_1

    .line 10
    :cond_2
    iget v2, p0, Laurelienribon/tweenengine/b;->duration:F

    .line 11
    invoke-virtual {v1}, Laurelienribon/tweenengine/b;->Ea()F

    move-result v3

    add-float/2addr v3, v2

    iput v3, p0, Laurelienribon/tweenengine/b;->duration:F

    .line 12
    iget v3, v1, Laurelienribon/tweenengine/b;->delay:F

    add-float/2addr v3, v2

    iput v3, v1, Laurelienribon/tweenengine/b;->delay:F

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "You can\'t push an object with infinite repetitions in a timeline"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    iput-boolean v2, p0, Laurelienribon/tweenengine/h;->isBuilt:Z

    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Laurelienribon/tweenengine/h;->build()Laurelienribon/tweenengine/h;

    return-object p0
.end method

.method public end()Laurelienribon/tweenengine/h;
    .locals 1

    .line 1
    iget-boolean v0, p0, Laurelienribon/tweenengine/h;->isBuilt:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Laurelienribon/tweenengine/h;->current:Laurelienribon/tweenengine/h;

    if-eq v0, p0, :cond_0

    .line 3
    iget-object v0, v0, Laurelienribon/tweenengine/h;->parent:Laurelienribon/tweenengine/h;

    iput-object v0, p0, Laurelienribon/tweenengine/h;->current:Laurelienribon/tweenengine/h;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Nothing to end..."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "You can\'t push anything to a timeline once it is started"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public free()V
    .locals 2

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/b;->sf:Laurelienribon/tweenengine/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Laurelienribon/tweenengine/a;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/a;)V

    .line 4
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5
    iget-object v1, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/b;

    .line 6
    invoke-virtual {v1}, Laurelienribon/tweenengine/b;->free()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Laurelienribon/tweenengine/h;->uf:Laurelienribon/tweenengine/d;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/d;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1

    .line 1
    iget-boolean v0, p0, Laurelienribon/tweenengine/h;->isBuilt:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Laurelienribon/tweenengine/h;->current:Laurelienribon/tweenengine/h;

    iget-object p0, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Laurelienribon/tweenengine/h;->current:Laurelienribon/tweenengine/h;

    iget-object p0, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    return-object p0
.end method

.method protected reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Laurelienribon/tweenengine/b;->reset()V

    .line 2
    iget-object v0, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Laurelienribon/tweenengine/h;->parent:Laurelienribon/tweenengine/h;

    iput-object v0, p0, Laurelienribon/tweenengine/h;->current:Laurelienribon/tweenengine/h;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Laurelienribon/tweenengine/h;->isBuilt:Z

    return-void
.end method

.method public start()Laurelienribon/tweenengine/h;
    .locals 2

    .line 2
    invoke-super {p0}, Laurelienribon/tweenengine/b;->start()Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Laurelienribon/tweenengine/h;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/b;

    .line 5
    invoke-virtual {v1}, Laurelienribon/tweenengine/b;->start()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic start()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Laurelienribon/tweenengine/h;->start()Laurelienribon/tweenengine/h;

    return-object p0
.end method
