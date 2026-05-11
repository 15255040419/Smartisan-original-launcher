.class public final Laurelienribon/tweenengine/k;
.super Laurelienribon/tweenengine/b;
.source "Tween.java"


# static fields
.field private static Ff:I = 0x4

.field private static Gf:I

.field private static final Hf:Ljava/util/Map;

.field private static final tf:Laurelienribon/tweenengine/c;

.field private static final uf:Laurelienribon/tweenengine/d;


# instance fields
.field private final Af:[F

.field private final Bf:[F

.field private final Cf:[F

.field private Df:[F

.field private Ef:[F

.field private isRelative:Z

.field private path:Laurelienribon/tweenengine/p;

.field private target:Ljava/lang/Object;

.field private targetClass:Ljava/lang/Class;

.field private type:I

.field private vf:Laurelienribon/tweenengine/l;

.field private wf:Laurelienribon/tweenengine/n;

.field private xf:Z

.field private yf:I

.field private zf:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Laurelienribon/tweenengine/i;

    invoke-direct {v0}, Laurelienribon/tweenengine/i;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/k;->tf:Laurelienribon/tweenengine/c;

    .line 2
    new-instance v0, Laurelienribon/tweenengine/j;

    const/16 v1, 0x14

    sget-object v2, Laurelienribon/tweenengine/k;->tf:Laurelienribon/tweenengine/c;

    invoke-direct {v0, v1, v2}, Laurelienribon/tweenengine/j;-><init>(ILaurelienribon/tweenengine/c;)V

    sput-object v0, Laurelienribon/tweenengine/k;->uf:Laurelienribon/tweenengine/d;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/k;->Hf:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Laurelienribon/tweenengine/b;-><init>()V

    .line 3
    sget v0, Laurelienribon/tweenengine/k;->Ff:I

    new-array v1, v0, [F

    iput-object v1, p0, Laurelienribon/tweenengine/k;->Af:[F

    .line 4
    new-array v1, v0, [F

    iput-object v1, p0, Laurelienribon/tweenengine/k;->Bf:[F

    .line 5
    sget v1, Laurelienribon/tweenengine/k;->Gf:I

    mul-int v2, v1, v0

    new-array v2, v2, [F

    iput-object v2, p0, Laurelienribon/tweenengine/k;->Cf:[F

    .line 6
    new-array v2, v0, [F

    iput-object v2, p0, Laurelienribon/tweenengine/k;->Df:[F

    add-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v0

    .line 7
    new-array v0, v1, [F

    iput-object v0, p0, Laurelienribon/tweenengine/k;->Ef:[F

    .line 8
    invoke-virtual {p0}, Laurelienribon/tweenengine/k;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Laurelienribon/tweenengine/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/k;-><init>()V

    return-void
.end method

.method private Cv()Ljava/lang/Class;
    .locals 2

    .line 1
    sget-object v0, Laurelienribon/tweenengine/k;->Hf:Ljava/util/Map;

    iget-object v1, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    instance-of v0, p0, Laurelienribon/tweenengine/l;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 4
    sget-object v0, Laurelienribon/tweenengine/k;->Hf:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private Dv()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You cannot combine more than "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Laurelienribon/tweenengine/k;->Ff:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " attributes in a tween. You can raise this limit with Tween.setCombinedAttributesLimit(), which should be called once in application initialization code."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;IF)Laurelienribon/tweenengine/k;
    .locals 1

    .line 2
    sget-object v0, Laurelienribon/tweenengine/k;->uf:Laurelienribon/tweenengine/d;

    invoke-virtual {v0}, Laurelienribon/tweenengine/d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/k;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Laurelienribon/tweenengine/k;->b(Ljava/lang/Object;IF)V

    .line 4
    sget-object p0, Laurelienribon/tweenengine/a/B;->Lf:Laurelienribon/tweenengine/a/B;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/k;->a(Laurelienribon/tweenengine/n;)Laurelienribon/tweenengine/k;

    .line 5
    sget-object p0, Laurelienribon/tweenengine/q;->Uaa:Laurelienribon/tweenengine/b/a;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/k;->a(Laurelienribon/tweenengine/p;)Laurelienribon/tweenengine/k;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Laurelienribon/tweenengine/l;)V
    .locals 1

    .line 1
    sget-object v0, Laurelienribon/tweenengine/k;->Hf:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/Object;IF)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_1

    .line 1
    iput-object p1, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Laurelienribon/tweenengine/k;->Cv()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Laurelienribon/tweenengine/k;->targetClass:Ljava/lang/Class;

    .line 3
    iput p2, p0, Laurelienribon/tweenengine/k;->type:I

    .line 4
    iput p3, p0, Laurelienribon/tweenengine/b;->duration:F

    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Duration can\'t be negative"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/Class;)Laurelienribon/tweenengine/l;
    .locals 1

    .line 1
    sget-object v0, Laurelienribon/tweenengine/k;->Hf:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laurelienribon/tweenengine/l;

    return-object p0
.end method


# virtual methods
.method protected Ba()V
    .locals 3

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    iget v2, p0, Laurelienribon/tweenengine/k;->type:I

    iget-object p0, p0, Laurelienribon/tweenengine/k;->Bf:[F

    invoke-interface {v1, v0, v2, p0}, Laurelienribon/tweenengine/l;->b(Ljava/lang/Object;I[F)V

    return-void
.end method

.method protected Ca()V
    .locals 3

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    iget v2, p0, Laurelienribon/tweenengine/k;->type:I

    iget-object p0, p0, Laurelienribon/tweenengine/k;->Af:[F

    invoke-interface {v1, v0, v2, p0}, Laurelienribon/tweenengine/l;->b(Ljava/lang/Object;I[F)V

    return-void
.end method

.method protected Fa()V
    .locals 8

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    iget v2, p0, Laurelienribon/tweenengine/k;->type:I

    iget-object v3, p0, Laurelienribon/tweenengine/k;->Af:[F

    invoke-interface {v1, v0, v2, v3}, Laurelienribon/tweenengine/l;->a(Ljava/lang/Object;I[F)I

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Laurelienribon/tweenengine/k;->yf:I

    if-ge v1, v2, :cond_5

    .line 4
    iget-object v2, p0, Laurelienribon/tweenengine/k;->Bf:[F

    aget v3, v2, v1

    iget-boolean v4, p0, Laurelienribon/tweenengine/k;->isRelative:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Laurelienribon/tweenengine/k;->Af:[F

    aget v4, v4, v1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    add-float/2addr v3, v4

    aput v3, v2, v1

    move v2, v0

    .line 5
    :goto_2
    iget v3, p0, Laurelienribon/tweenengine/k;->zf:I

    if-ge v2, v3, :cond_3

    .line 6
    iget-object v3, p0, Laurelienribon/tweenengine/k;->Cf:[F

    iget v4, p0, Laurelienribon/tweenengine/k;->yf:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget v6, v3, v4

    iget-boolean v7, p0, Laurelienribon/tweenengine/k;->isRelative:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Laurelienribon/tweenengine/k;->Af:[F

    aget v7, v7, v1

    goto :goto_3

    :cond_2
    move v7, v5

    :goto_3
    add-float/2addr v6, v7

    aput v6, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7
    :cond_3
    iget-boolean v2, p0, Laurelienribon/tweenengine/k;->xf:Z

    if-eqz v2, :cond_4

    .line 8
    iget-object v2, p0, Laurelienribon/tweenengine/k;->Af:[F

    aget v3, v2, v1

    .line 9
    iget-object v4, p0, Laurelienribon/tweenengine/k;->Bf:[F

    aget v5, v4, v1

    aput v5, v2, v1

    .line 10
    aput v3, v4, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(FF)Laurelienribon/tweenengine/k;
    .locals 2

    .line 7
    iget-object v0, p0, Laurelienribon/tweenengine/k;->Bf:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 8
    aput p2, v0, p1

    return-object p0
.end method

.method public a(FFF)Laurelienribon/tweenengine/k;
    .locals 2

    .line 9
    iget-object v0, p0, Laurelienribon/tweenengine/k;->Bf:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 10
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 11
    aput p3, v0, p1

    return-object p0
.end method

.method public a(Laurelienribon/tweenengine/n;)Laurelienribon/tweenengine/k;
    .locals 0

    .line 6
    iput-object p1, p0, Laurelienribon/tweenengine/k;->wf:Laurelienribon/tweenengine/n;

    return-object p0
.end method

.method public a(Laurelienribon/tweenengine/p;)Laurelienribon/tweenengine/k;
    .locals 0

    .line 15
    iput-object p1, p0, Laurelienribon/tweenengine/k;->path:Laurelienribon/tweenengine/p;

    return-object p0
.end method

.method public varargs a([F)Laurelienribon/tweenengine/k;
    .locals 3

    .line 12
    array-length v0, p1

    sget v1, Laurelienribon/tweenengine/k;->Ff:I

    if-gt v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Laurelienribon/tweenengine/k;->Bf:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 14
    :cond_0
    invoke-direct {p0}, Laurelienribon/tweenengine/k;->Dv()V

    const/4 p0, 0x0

    throw p0
.end method

.method protected a(IIZF)V
    .locals 4

    .line 16
    iget-object v0, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    if-eqz v0, :cond_e

    iget-object v1, p0, Laurelienribon/tweenengine/k;->wf:Laurelienribon/tweenengine/n;

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    if-nez p3, :cond_2

    if-le p1, p2, :cond_2

    .line 17
    iget-object p1, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    iget p3, p0, Laurelienribon/tweenengine/k;->type:I

    invoke-virtual {p0, p2}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Laurelienribon/tweenengine/k;->Af:[F

    goto :goto_0

    :cond_1
    iget-object p0, p0, Laurelienribon/tweenengine/k;->Bf:[F

    :goto_0
    invoke-interface {p1, v0, p3, p0}, Laurelienribon/tweenengine/l;->b(Ljava/lang/Object;I[F)V

    return-void

    :cond_2
    if-nez p3, :cond_4

    if-ge p1, p2, :cond_4

    .line 18
    iget-object p1, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    iget-object p3, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    iget p4, p0, Laurelienribon/tweenengine/k;->type:I

    invoke-virtual {p0, p2}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Laurelienribon/tweenengine/k;->Bf:[F

    goto :goto_1

    :cond_3
    iget-object p0, p0, Laurelienribon/tweenengine/k;->Af:[F

    :goto_1
    invoke-interface {p1, p3, p4, p0}, Laurelienribon/tweenengine/l;->b(Ljava/lang/Object;I[F)V

    return-void

    .line 19
    :cond_4
    iget p2, p0, Laurelienribon/tweenengine/b;->duration:F

    const p3, 0x2d2febff    # 1.0E-11f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_6

    const p2, -0x52d01401    # -1.0E-11f

    cmpl-float p2, p4, p2

    if-lez p2, :cond_6

    .line 20
    iget-object p2, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    iget-object p3, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    iget p4, p0, Laurelienribon/tweenengine/k;->type:I

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Laurelienribon/tweenengine/k;->Bf:[F

    goto :goto_2

    :cond_5
    iget-object p0, p0, Laurelienribon/tweenengine/k;->Af:[F

    :goto_2
    invoke-interface {p2, p3, p4, p0}, Laurelienribon/tweenengine/l;->b(Ljava/lang/Object;I[F)V

    return-void

    .line 21
    :cond_6
    iget p2, p0, Laurelienribon/tweenengine/b;->duration:F

    cmpg-float p2, p2, p3

    if-gez p2, :cond_8

    cmpg-float p2, p4, p3

    if-gez p2, :cond_8

    .line 22
    iget-object p2, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    iget-object p3, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    iget p4, p0, Laurelienribon/tweenengine/k;->type:I

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Laurelienribon/tweenengine/k;->Af:[F

    goto :goto_3

    :cond_7
    iget-object p0, p0, Laurelienribon/tweenengine/k;->Bf:[F

    :goto_3
    invoke-interface {p2, p3, p4, p0}, Laurelienribon/tweenengine/l;->b(Ljava/lang/Object;I[F)V

    return-void

    .line 23
    :cond_8
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/b;->E(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Laurelienribon/tweenengine/b;->duration:F

    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->getCurrentTime()F

    move-result p2

    sub-float/2addr p1, p2

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Laurelienribon/tweenengine/b;->getCurrentTime()F

    move-result p1

    .line 24
    :goto_4
    iget-object p2, p0, Laurelienribon/tweenengine/k;->wf:Laurelienribon/tweenengine/n;

    iget p3, p0, Laurelienribon/tweenengine/b;->duration:F

    div-float/2addr p1, p3

    invoke-virtual {p2, p1}, Laurelienribon/tweenengine/n;->compute(F)F

    move-result p1

    .line 25
    iget p2, p0, Laurelienribon/tweenengine/k;->zf:I

    const/4 p3, 0x0

    if-eqz p2, :cond_c

    iget-object p2, p0, Laurelienribon/tweenengine/k;->path:Laurelienribon/tweenengine/p;

    if-nez p2, :cond_a

    goto :goto_7

    :cond_a
    move p2, p3

    .line 26
    :goto_5
    iget p4, p0, Laurelienribon/tweenengine/k;->yf:I

    if-ge p2, p4, :cond_d

    .line 27
    iget-object p4, p0, Laurelienribon/tweenengine/k;->Ef:[F

    iget-object v0, p0, Laurelienribon/tweenengine/k;->Af:[F

    aget v0, v0, p2

    aput v0, p4, p3

    .line 28
    iget v0, p0, Laurelienribon/tweenengine/k;->zf:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Laurelienribon/tweenengine/k;->Bf:[F

    aget v1, v1, p2

    aput v1, p4, v0

    move p4, p3

    .line 29
    :goto_6
    iget v0, p0, Laurelienribon/tweenengine/k;->zf:I

    if-ge p4, v0, :cond_b

    .line 30
    iget-object v0, p0, Laurelienribon/tweenengine/k;->Ef:[F

    add-int/lit8 v1, p4, 0x1

    iget-object v2, p0, Laurelienribon/tweenengine/k;->Cf:[F

    iget v3, p0, Laurelienribon/tweenengine/k;->yf:I

    mul-int/2addr p4, v3

    add-int/2addr p4, p2

    aget p4, v2, p4

    aput p4, v0, v1

    move p4, v1

    goto :goto_6

    .line 31
    :cond_b
    iget-object p4, p0, Laurelienribon/tweenengine/k;->Df:[F

    iget-object v1, p0, Laurelienribon/tweenengine/k;->path:Laurelienribon/tweenengine/p;

    iget-object v2, p0, Laurelienribon/tweenengine/k;->Ef:[F

    add-int/lit8 v0, v0, 0x2

    invoke-interface {v1, p1, v2, v0}, Laurelienribon/tweenengine/p;->a(F[FI)F

    move-result v0

    aput v0, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 32
    :cond_c
    :goto_7
    iget p2, p0, Laurelienribon/tweenengine/k;->yf:I

    if-ge p3, p2, :cond_d

    .line 33
    iget-object p2, p0, Laurelienribon/tweenengine/k;->Df:[F

    iget-object p4, p0, Laurelienribon/tweenengine/k;->Af:[F

    aget v0, p4, p3

    iget-object v1, p0, Laurelienribon/tweenengine/k;->Bf:[F

    aget v1, v1, p3

    aget p4, p4, p3

    sub-float/2addr v1, p4

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    aput v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 34
    :cond_d
    iget-object p1, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    iget-object p2, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    iget p3, p0, Laurelienribon/tweenengine/k;->type:I

    iget-object p0, p0, Laurelienribon/tweenengine/k;->Df:[F

    invoke-interface {p1, p2, p3, p0}, Laurelienribon/tweenengine/l;->b(Ljava/lang/Object;I[F)V

    :cond_e
    :goto_8
    return-void
.end method

.method public build()Laurelienribon/tweenengine/k;
    .locals 4

    .line 2
    iget-object v0, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Laurelienribon/tweenengine/k;->Hf:Ljava/util/Map;

    iget-object v1, p0, Laurelienribon/tweenengine/k;->targetClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/l;

    iput-object v0, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    .line 4
    iget-object v0, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    if-nez v0, :cond_1

    iget-object v0, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    instance-of v1, v0, Laurelienribon/tweenengine/l;

    if-eqz v1, :cond_1

    check-cast v0, Laurelienribon/tweenengine/l;

    iput-object v0, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    .line 5
    :cond_1
    iget-object v0, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    if-eqz v0, :cond_3

    iget-object v1, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    iget v2, p0, Laurelienribon/tweenengine/k;->type:I

    iget-object v3, p0, Laurelienribon/tweenengine/k;->Df:[F

    invoke-interface {v0, v1, v2, v3}, Laurelienribon/tweenengine/l;->a(Ljava/lang/Object;I[F)I

    move-result v0

    iput v0, p0, Laurelienribon/tweenengine/k;->yf:I

    .line 6
    iget v0, p0, Laurelienribon/tweenengine/k;->yf:I

    sget v1, Laurelienribon/tweenengine/k;->Ff:I

    if-gt v0, v1, :cond_2

    return-object p0

    :cond_2
    invoke-direct {p0}, Laurelienribon/tweenengine/k;->Dv()V

    const/4 p0, 0x0

    throw p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No TweenAccessor was found for the target"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Laurelienribon/tweenengine/k;->build()Laurelienribon/tweenengine/k;

    return-object p0
.end method

.method public free()V
    .locals 1

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
    sget-object v0, Laurelienribon/tweenengine/k;->uf:Laurelienribon/tweenengine/d;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/d;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public h(F)Laurelienribon/tweenengine/k;
    .locals 2

    .line 1
    iget-object v0, p0, Laurelienribon/tweenengine/k;->Bf:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method

.method protected reset()V
    .locals 4

    .line 1
    invoke-super {p0}, Laurelienribon/tweenengine/b;->reset()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Laurelienribon/tweenengine/k;->target:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Laurelienribon/tweenengine/k;->targetClass:Ljava/lang/Class;

    .line 4
    iput-object v0, p0, Laurelienribon/tweenengine/k;->vf:Laurelienribon/tweenengine/l;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Laurelienribon/tweenengine/k;->type:I

    .line 6
    iput-object v0, p0, Laurelienribon/tweenengine/k;->wf:Laurelienribon/tweenengine/n;

    .line 7
    iput-object v0, p0, Laurelienribon/tweenengine/k;->path:Laurelienribon/tweenengine/p;

    .line 8
    iput-object v0, p0, Laurelienribon/tweenengine/b;->sf:Laurelienribon/tweenengine/a;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Laurelienribon/tweenengine/k;->isRelative:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/k;->xf:Z

    .line 10
    iput v0, p0, Laurelienribon/tweenengine/k;->zf:I

    iput v0, p0, Laurelienribon/tweenengine/k;->yf:I

    .line 11
    iget-object v0, p0, Laurelienribon/tweenengine/k;->Df:[F

    array-length v0, v0

    sget v1, Laurelienribon/tweenengine/k;->Ff:I

    if-eq v0, v1, :cond_0

    .line 12
    new-array v0, v1, [F

    iput-object v0, p0, Laurelienribon/tweenengine/k;->Df:[F

    .line 13
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/k;->Ef:[F

    array-length v0, v0

    sget v1, Laurelienribon/tweenengine/k;->Gf:I

    add-int/lit8 v2, v1, 0x2

    sget v3, Laurelienribon/tweenengine/k;->Ff:I

    mul-int/2addr v2, v3

    if-eq v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v3

    .line 14
    new-array v0, v1, [F

    iput-object v0, p0, Laurelienribon/tweenengine/k;->Ef:[F

    :cond_1
    return-void
.end method
