.class public Lcom/smartisanos/launcher/animations/ab;
.super Ljava/lang/Object;
.source "RootViewAnimation.java"


# static fields
.field private static volatile Un:Z

.field private static Vn:Z

.field private static Wn:Lcom/smartisanos/smengine/g;

.field private static Xn:F

.field private static Yn:F

.field private static Zn:F

.field private static _n:F

.field private static ao:F

.field private static bo:I

.field private static co:I

.field private static do:I

.field private static eo:Lcom/smartisanos/smengine/a/j;

.field private static fo:Lcom/smartisanos/smengine/a/j;

.field private static go:Lcom/smartisanos/smengine/a/k;

.field public static final ho:Lcom/smartisanos/smengine/a/k;

.field private static io:Lcom/smartisanos/smengine/a/k;

.field private static jo:Lcom/smartisanos/smengine/n;

.field private static ko:J

.field private static lo:Z

.field private static log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/smartisanos/launcher/animations/ab;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/ab;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/animations/ab;->Un:Z

    .line 3
    sput-boolean v0, Lcom/smartisanos/launcher/animations/ab;->Vn:Z

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    sput v0, Lcom/smartisanos/launcher/animations/ab;->Xn:F

    .line 6
    sget v1, Lcom/smartisanos/launcher/animations/ab;->Xn:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v3, v1, v2

    sput v3, Lcom/smartisanos/launcher/animations/ab;->Yn:F

    mul-float v3, v1, v2

    .line 7
    sput v3, Lcom/smartisanos/launcher/animations/ab;->Zn:F

    mul-float/2addr v2, v1

    .line 8
    sput v2, Lcom/smartisanos/launcher/animations/ab;->_n:F

    const/4 v2, 0x0

    mul-float/2addr v1, v2

    .line 9
    sput v1, Lcom/smartisanos/launcher/animations/ab;->ao:F

    const/16 v1, 0xe

    .line 10
    sput v1, Lcom/smartisanos/launcher/animations/ab;->bo:I

    const/16 v3, 0xd

    .line 11
    sput v3, Lcom/smartisanos/launcher/animations/ab;->co:I

    .line 12
    sput v1, Lcom/smartisanos/launcher/animations/ab;->do:I

    .line 13
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, v2, v2, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sput-object v1, Lcom/smartisanos/launcher/animations/ab;->eo:Lcom/smartisanos/smengine/a/j;

    .line 14
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sput-object v1, Lcom/smartisanos/launcher/animations/ab;->fo:Lcom/smartisanos/smengine/a/j;

    .line 15
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v1, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    .line 16
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v1, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    .line 17
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/launcher/animations/ab;->io:Lcom/smartisanos/smengine/a/k;

    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lcom/smartisanos/launcher/animations/ab;->lo:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Cw()V
    .locals 18

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->rh()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Na()Lcom/smartisanos/launcher/view/Qa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Na()Lcom/smartisanos/launcher/view/Qa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Qa;->dismiss()V

    .line 5
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/a/J;->Jj:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 7
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/view/Qb;->Fj:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/smartisanos/launcher/a/oa;->kk:Z

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->fd()V

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 13
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->sh()V

    .line 14
    sget-object v0, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    .line 17
    :cond_4
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 20
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    .line 23
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v10

    .line 24
    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/animations/ab;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 25
    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->vh()Lcom/smartisanos/smengine/F;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/animations/ab;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 26
    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/V;->Jo()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/animations/ab;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 27
    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/V;->Ho()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/animations/ab;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 28
    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/V;->Io()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/animations/ab;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 29
    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/animations/ab;->a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 34
    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->fo:Lcom/smartisanos/smengine/a/j;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v4, v5

    iput v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    .line 35
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 37
    move-object v11, v4

    check-cast v11, Lcom/smartisanos/launcher/view/b/ka;

    .line 38
    sget-object v12, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    sget-object v13, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget v14, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v15, Lcom/smartisanos/launcher/animations/ab;->_n:F

    const/16 v16, 0x0

    sget-object v17, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual/range {v11 .. v17}, Lcom/smartisanos/launcher/view/b/ka;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    goto :goto_0

    .line 39
    :cond_5
    sget-object v4, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    sget-object v5, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget v6, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v7, Lcom/smartisanos/launcher/animations/ab;->_n:F

    const/4 v8, 0x0

    sget-object v9, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Lcom/smartisanos/launcher/view/V;->c(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    .line 40
    sget-object v4, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    sget-object v5, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget v6, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v7, Lcom/smartisanos/launcher/animations/ab;->_n:F

    sget-object v9, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual/range {v3 .. v9}, Lcom/smartisanos/launcher/view/V;->d(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    .line 41
    sget-object v4, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    sget-object v5, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget v6, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v7, Lcom/smartisanos/launcher/animations/ab;->_n:F

    sget-object v9, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual/range {v3 .. v9}, Lcom/smartisanos/launcher/view/V;->e(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    .line 42
    sget-object v4, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    sget-object v5, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget v6, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v7, Lcom/smartisanos/launcher/animations/ab;->_n:F

    sget-object v9, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual/range {v3 .. v9}, Lcom/smartisanos/launcher/view/V;->b(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    goto :goto_1

    .line 43
    :cond_6
    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->fo:Lcom/smartisanos/smengine/a/j;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    neg-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    .line 44
    :goto_1
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 45
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    sget v5, Lcom/smartisanos/launcher/animations/ab;->_n:F

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/view/Lc;->b(Lcom/smartisanos/smengine/g;F)V

    .line 46
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    sget v5, Lcom/smartisanos/launcher/animations/ab;->_n:F

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/view/Lc;->h(Lcom/smartisanos/smengine/g;F)V

    .line 47
    :cond_7
    new-instance v3, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v3}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 48
    sget-object v4, Lcom/smartisanos/launcher/animations/ab;->eo:Lcom/smartisanos/smengine/a/j;

    sget-object v5, Lcom/smartisanos/launcher/animations/ab;->fo:Lcom/smartisanos/smengine/a/j;

    sget v6, Lcom/smartisanos/launcher/animations/ab;->co:I

    sget v7, Lcom/smartisanos/launcher/animations/ab;->Yn:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 49
    new-instance v4, Lcom/smartisanos/launcher/animations/Ta;

    invoke-direct {v4, v10, v1, v2, v0}, Lcom/smartisanos/launcher/animations/Ta;-><init>(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/smengine/SceneNode;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 50
    invoke-static {v0, v3}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 52
    sget-object v0, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method

.method private static Dw()V
    .locals 15

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->th()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWITCH_TO_SINGLE:Z

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/Qa;->Sd()V

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 9
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWITCH_TO_SINGLE:Z

    .line 10
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 12
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->Fp()V

    .line 16
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 17
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 19
    sput-object v1, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    :cond_3
    const/16 v0, 0x64

    const/4 v6, 0x0

    .line 20
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 21
    sget-boolean v9, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/smartisanos/launcher/animations/ab;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playRootViewUpAnimation Constants.DISPLAY_ID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/smartisanos/launcher/data/Constants;->DISPLAY_ID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 22
    :cond_4
    sget-boolean v9, Lcom/smartisanos/launcher/animations/ab;->lo:Z

    if-eqz v9, :cond_5

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->yg()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_7

    .line 24
    sget-boolean v9, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/smartisanos/launcher/animations/ab;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playRootViewUpAnimation getBitmap time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 25
    :cond_6
    invoke-static {v1}, Lcom/smartisanos/launcher/xa;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 26
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v9

    const-string v10, "background.png"

    .line 27
    invoke-static {v10}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 28
    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 29
    new-instance v11, Lcom/smartisanos/smengine/Da;

    invoke-direct {v11, v1}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    invoke-virtual {v11, v3}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 31
    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 32
    invoke-virtual {v11, v3}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->uh()Lcom/smartisanos/smengine/F;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 35
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 36
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 37
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 38
    new-instance v10, Lcom/smartisanos/launcher/animations/Ua;

    invoke-direct {v10, v0, v9, v1}, Lcom/smartisanos/launcher/animations/Ua;-><init>(ILcom/smartisanos/smengine/Ea;Lcom/smartisanos/smengine/F;)V

    .line 39
    invoke-virtual {v10, v6}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 40
    :cond_7
    invoke-static {v2}, Lcom/smartisanos/launcher/animations/ab;->H(Z)V

    .line 41
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/smartisanos/launcher/animations/ab;->log:Lcom/smartisanos/launcher/va;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playRootViewUpAnimation all time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 42
    sget-boolean v7, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    :cond_8
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 44
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 45
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    sput-object v1, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    .line 46
    invoke-static {v3}, Lcom/smartisanos/launcher/Qa;->setVisible(Z)V

    .line 47
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 48
    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->fo:Lcom/smartisanos/smengine/a/j;

    iget v7, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v3, Lcom/smartisanos/smengine/a/j;->y:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v7, v8, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 49
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 50
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 51
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    .line 53
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v14

    .line 54
    sget-object v7, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/animations/ab;->b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 55
    sget-object v7, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->vh()Lcom/smartisanos/smengine/F;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/animations/ab;->b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 56
    sget-object v7, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/V;->Jo()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/animations/ab;->b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 57
    sget-object v7, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/V;->Ho()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/animations/ab;->b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 58
    sget-object v7, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/V;->Io()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/animations/ab;->b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 59
    sget-object v7, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/animations/ab;->b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V

    .line 60
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v7

    const/high16 v8, 0x1000000

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 61
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v7

    const/high16 v8, 0x2000000

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 62
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 63
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 64
    sget-object v4, Lcom/smartisanos/launcher/animations/ab;->fo:Lcom/smartisanos/smengine/a/j;

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    neg-int v5, v5

    int-to-float v5, v5

    const/high16 v7, 0x41f00000    # 30.0f

    div-float/2addr v5, v7

    iput v5, v4, Lcom/smartisanos/smengine/a/j;->y:F

    .line 65
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->Rq()Ljava/util/ArrayList;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 67
    move-object v7, v4

    check-cast v7, Lcom/smartisanos/launcher/view/b/ka;

    .line 68
    sget-object v8, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget-object v9, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    sget v10, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v11, Lcom/smartisanos/launcher/animations/ab;->_n:F

    sget v12, Lcom/smartisanos/launcher/animations/ab;->ao:F

    sget-object v13, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual/range {v7 .. v13}, Lcom/smartisanos/launcher/view/b/ka;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    goto :goto_1

    .line 69
    :cond_9
    sget-object v8, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget-object v9, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    sget v10, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v11, Lcom/smartisanos/launcher/animations/ab;->_n:F

    sget v12, Lcom/smartisanos/launcher/animations/ab;->ao:F

    sget-object v13, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    move-object v7, v14

    invoke-virtual/range {v7 .. v13}, Lcom/smartisanos/launcher/view/V;->c(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    .line 70
    sget-object v8, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget-object v9, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    sget v10, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v11, Lcom/smartisanos/launcher/animations/ab;->_n:F

    sget v12, Lcom/smartisanos/launcher/animations/ab;->ao:F

    sget-object v13, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual/range {v7 .. v13}, Lcom/smartisanos/launcher/view/V;->d(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    .line 71
    sget-object v8, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget-object v9, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    sget v10, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v11, Lcom/smartisanos/launcher/animations/ab;->_n:F

    sget v12, Lcom/smartisanos/launcher/animations/ab;->ao:F

    sget-object v13, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual/range {v7 .. v13}, Lcom/smartisanos/launcher/view/V;->b(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V

    goto :goto_2

    .line 72
    :cond_a
    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->fo:Lcom/smartisanos/smengine/a/j;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    neg-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Lcom/smartisanos/smengine/a/j;->y:F

    .line 73
    :goto_2
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->yh()Lcom/smartisanos/smengine/F;

    .line 74
    new-instance v3, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v3}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 75
    sget-object v4, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget-object v5, Lcom/smartisanos/launcher/animations/ab;->io:Lcom/smartisanos/smengine/a/k;

    sget v7, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v8, Lcom/smartisanos/launcher/animations/ab;->Zn:F

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 76
    new-instance v3, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v3}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 77
    sget-object v4, Lcom/smartisanos/launcher/animations/ab;->fo:Lcom/smartisanos/smengine/a/j;

    sget-object v5, Lcom/smartisanos/launcher/animations/ab;->eo:Lcom/smartisanos/smengine/a/j;

    sget v7, Lcom/smartisanos/launcher/animations/ab;->bo:I

    sget v8, Lcom/smartisanos/launcher/animations/ab;->Yn:F

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/smartisanos/launcher/animations/s;->b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;IF)V

    .line 78
    new-instance v4, Lcom/smartisanos/launcher/animations/Va;

    invoke-direct {v4, v1, v2, v14}, Lcom/smartisanos/launcher/animations/Va;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/launcher/view/V;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 79
    invoke-static {v1, v3}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 80
    sget-object v2, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v6, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 81
    new-instance v1, Lcom/smartisanos/launcher/animations/Wa;

    invoke-direct {v1, v0}, Lcom/smartisanos/launcher/animations/Wa;-><init>(I)V

    const v0, 0x3dcccccd    # 0.1f

    .line 82
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method static synthetic F(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/launcher/animations/ab;->Vn:Z

    return p0
.end method

.method public static G(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/animations/ab;->Un:Z

    const/16 v1, 0x64

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/animations/ab;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "playRootViewAnimation ANIMATION_ROOT_VIEW_DOING = true"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/animations/Ra;

    invoke-direct {v0, v1, p0}, Lcom/smartisanos/launcher/animations/Ra;-><init>(IZ)V

    const-string v1, "playRootViewAnimation"

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->setName(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const p0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    .line 5
    :goto_0
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/smartisanos/launcher/animations/ab;->Un:Z

    .line 7
    sget-object v2, Lcom/smartisanos/launcher/animations/ab;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playRootViewAnimation willShow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/yb;->b(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p0, :cond_2

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->Dw()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->Cw()V

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_4

    .line 11
    invoke-static {v0, v0}, Lcom/smartisanos/launcher/Qa;->setVisible(ZZ)V

    .line 12
    :cond_4
    new-instance v0, Lcom/smartisanos/launcher/animations/Sa;

    invoke-direct {v0, v1, p0}, Lcom/smartisanos/launcher/animations/Sa;-><init>(IZ)V

    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    :goto_1
    return-void
.end method

.method public static H(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/launcher/animations/ab;->lo:Z

    return-void
.end method

.method static synthetic _d()Lcom/smartisanos/smengine/n;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/ab;->jo:Lcom/smartisanos/smengine/n;

    return-object v0
.end method

.method static synthetic a(Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 2
    sput-object p0, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 3
    sput-object p0, Lcom/smartisanos/launcher/animations/ab;->jo:Lcom/smartisanos/smengine/n;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ab;->d(Lcom/smartisanos/launcher/view/b/fa;)V

    return-void
.end method

.method private static a(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 6

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->vh()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 6
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget v4, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v5, Lcom/smartisanos/launcher/animations/ab;->_n:F

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 7
    invoke-static {p1, v0}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 8
    invoke-virtual {p0, v1, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 9
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 10
    sget-object v2, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    sget-object v3, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget v4, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v5, Lcom/smartisanos/launcher/animations/ab;->_n:F

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 11
    invoke-static {p1, v0}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 12
    invoke-virtual {p0, v1, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/animations/ab;->Un:Z

    return v0
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/ab;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->Dw()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->Cw()V

    return-void
.end method

.method static synthetic ae()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/smartisanos/launcher/animations/ab;->ko:J

    return-wide v0
.end method

.method private static b(Lcom/smartisanos/smengine/g;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 5

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->vh()Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 4
    sget-object v1, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    sget v3, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v4, Lcom/smartisanos/launcher/animations/ab;->_n:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 5
    invoke-static {p1, v0}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p1

    .line 6
    sget v0, Lcom/smartisanos/launcher/animations/ab;->ao:F

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void

    .line 7
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 8
    sget-object v1, Lcom/smartisanos/launcher/animations/ab;->go:Lcom/smartisanos/smengine/a/k;

    sget-object v2, Lcom/smartisanos/launcher/animations/ab;->ho:Lcom/smartisanos/smengine/a/k;

    sget v3, Lcom/smartisanos/launcher/animations/ab;->do:I

    sget v4, Lcom/smartisanos/launcher/animations/ab;->_n:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 9
    invoke-static {p1, v0}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 11
    new-instance p1, Lcom/smartisanos/launcher/animations/Xa;

    invoke-direct {p1}, Lcom/smartisanos/launcher/animations/Xa;-><init>()V

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 12
    :cond_2
    sget p1, Lcom/smartisanos/launcher/animations/ab;->ao:F

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static be()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/_a;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/_a;-><init>(I)V

    const-string v1, "downToLeft"

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static ce()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/animations/ab;->Un:Z

    return v0
.end method

.method private static d(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, -0x1

    move v5, v4

    :goto_0
    if-ltz v2, :cond_4

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/b/M;

    if-ne v4, v5, :cond_2

    if-eqz v6, :cond_3

    .line 5
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    move v5, v2

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    .line 6
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    return-void

    .line 7
    :cond_5
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWITCH_TO_SINGLE:Z

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    .line 9
    new-instance v0, Lcom/smartisanos/launcher/animations/Za;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p0}, Lcom/smartisanos/launcher/animations/Za;-><init>(ILcom/smartisanos/launcher/view/b/fa;)V

    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_6
    :goto_3
    return-void
.end method

.method static synthetic e(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/launcher/animations/ab;->Un:Z

    return p0
.end method

.method static synthetic k(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/smartisanos/launcher/animations/ab;->ko:J

    return-wide p0
.end method

.method static synthetic u()Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/ab;->eo:Lcom/smartisanos/smengine/a/j;

    return-object v0
.end method

.method static synthetic y()Lcom/smartisanos/smengine/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/animations/ab;->Wn:Lcom/smartisanos/smengine/g;

    return-object v0
.end method
