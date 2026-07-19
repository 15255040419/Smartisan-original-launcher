.class public Lcom/smartisanos/smengine/v;
.super Ljava/lang/Object;
.source "InputManager.java"


# static fields
.field private static volatile NE:Z = true

.field private static volatile OE:Z = true

.field private static QE:Ljava/lang/Runnable;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Bd:[F

.field private Cd:[F

.field private GE:Ljava/util/concurrent/locks/ReentrantLock;

.field private JE:Ljava/util/ArrayList;

.field private KE:[F

.field private LE:Lcom/smartisanos/launcher/data/ItemInfo;

.field private ME:Z

.field private mQueue:Ljava/util/ArrayList;

.field private mView:Landroid/opengl/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/t;

    invoke-direct {v0}, Lcom/smartisanos/smengine/t;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/v;->QE:Ljava/lang/Runnable;

    .line 2
    const-class v0, Lcom/smartisanos/smengine/v;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/v;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/v;->GE:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/v;->mQueue:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/v;->JE:Ljava/util/ArrayList;

    const/16 v0, 0xa

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Lcom/smartisanos/smengine/v;->Bd:[F

    new-array v1, v0, [F

    .line 6
    iput-object v1, p0, Lcom/smartisanos/smengine/v;->Cd:[F

    new-array v0, v0, [F

    .line 7
    iput-object v0, p0, Lcom/smartisanos/smengine/v;->KE:[F

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/smartisanos/smengine/v;->LE:Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/smengine/v;->ME:Z

    return-void
.end method

.method private g(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/v;->Bd:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v3, v2

    .line 4
    iget-object v3, p0, Lcom/smartisanos/smengine/v;->Cd:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v3, v2

    .line 5
    iget-object v3, p0, Lcom/smartisanos/smengine/v;->KE:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    aput v4, v3, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static lk()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/smartisanos/smengine/v;->OE:Z

    .line 2
    sput-boolean v0, Lcom/smartisanos/smengine/v;->NE:Z

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/smartisanos/smengine/v;->QE:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/opengl/GLSurfaceView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/v;->mView:Landroid/opengl/GLSurfaceView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p0

    int-to-float p0, p0

    .line 4
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/smartisanos/smengine/v;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## slop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " ##"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/u;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->GE:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p0, p0, Lcom/smartisanos/smengine/v;->GE:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->mView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 53
    :cond_0
    sget-boolean p1, Lcom/smartisanos/smengine/v;->OE:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 54
    sget-object p0, Lcom/smartisanos/smengine/v;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "onKey2 enableHardKey false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v0

    .line 55
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/16 p1, 0x52

    if-eq p2, p1, :cond_5

    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    goto :goto_1

    :cond_4
    return v1

    .line 56
    :cond_5
    :goto_1
    new-instance p1, Lcom/smartisanos/smengine/ua;

    invoke-direct {p1}, Lcom/smartisanos/smengine/ua;-><init>()V

    .line 57
    invoke-virtual {p1, p3}, Lcom/smartisanos/smengine/ua;->a(Landroid/view/KeyEvent;)V

    .line 58
    invoke-static {p1}, Lcom/smartisanos/smengine/u;->b(Lcom/smartisanos/smengine/ua;)Lcom/smartisanos/smengine/u;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/v;->a(Lcom/smartisanos/smengine/u;)V

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/smengine/v;->a(Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/Object;)Z
    .locals 9

    .line 10
    sget-boolean p1, Lcom/smartisanos/smengine/v;->NE:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 11
    sget-object p0, Lcom/smartisanos/smengine/v;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "onTouch2 enableTouch false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v0

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/d/i;->Of()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/d/h;->Nf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/smartisanos/launcher/d/h;->sectorTouch(IFFFF)V

    :cond_1
    if-eqz p1, :cond_2

    .line 16
    iget-boolean v1, p0, Lcom/smartisanos/smengine/v;->ME:Z

    if-nez v1, :cond_2

    return v0

    .line 17
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/d/i;->Of()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/smartisanos/smengine/v;->LE:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/smartisanos/launcher/d/h;->sectorTouch(IFFFF)V

    .line 19
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/d/i;->Of()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/d/h;->Nf()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    sget-object p1, Lcom/smartisanos/smengine/v;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "cancel touch for gl"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/smartisanos/smengine/v;->rh()Z

    return v0

    .line 22
    :cond_4
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isSidebarEnable:Z

    if-eqz v1, :cond_5

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/a/w;->ad()V

    .line 24
    invoke-static {p1}, Lcom/smartisanos/launcher/a/w;->X(I)V

    goto :goto_0

    .line 25
    :cond_5
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_6

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/a/t;->ad()V

    .line 27
    invoke-static {p1}, Lcom/smartisanos/launcher/a/t;->X(I)V

    :cond_6
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_f

    const/4 v3, 0x5

    if-ne p1, v3, :cond_7

    goto/16 :goto_4

    :cond_7
    const/4 v3, 0x2

    if-ne p1, v3, :cond_b

    .line 28
    invoke-static {p2}, Lcom/smartisanos/launcher/a/a/a;->b(Landroid/view/MotionEvent;)V

    invoke-static {}, Lcom/smartisanos/launcher/gesture/SystemPanelCompat;->isSystemPanelGestureConsumed()Z

    move-result v3

    if-eqz v3, :cond_7_system_panel_not_consumed

    invoke-virtual {p0}, Lcom/smartisanos/smengine/v;->rh()Z

    invoke-static {}, Lcom/smartisanos/launcher/gesture/SystemPanelCompat;->onOriginalTargetCancelled()V

    return v0

    :cond_7_system_panel_not_consumed

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_14

    .line 30
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_8

    goto :goto_2

    .line 31
    :cond_8
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget-object v6, p0, Lcom/smartisanos/smengine/v;->Bd:[F

    aget v6, v6, v4

    sub-float/2addr v5, v6

    .line 32
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/smengine/v;->Cd:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    .line 33
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    iget-object v8, p0, Lcom/smartisanos/smengine/v;->KE:[F

    aget v4, v8, v4

    sub-float/2addr v7, v4

    .line 34
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_a

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-gez v4, :cond_a

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3ca3d70a    # 0.02f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 35
    :cond_a
    :goto_3
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/v;->g(Landroid/view/MotionEvent;)V

    goto :goto_7

    :cond_b
    const/4 v3, 0x3

    if-eq p1, v0, :cond_c

    const/4 v4, 0x6

    if-eq p1, v4, :cond_c

    if-ne p1, v3, :cond_14

    :cond_c
    if-eq p1, v0, :cond_d

    if-ne p1, v3, :cond_e

    .line 36
    :cond_d
    iput-boolean v2, p0, Lcom/smartisanos/smengine/v;->ME:Z

    .line 37
    iput-object v1, p0, Lcom/smartisanos/smengine/v;->LE:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 38
    invoke-static {}, Lcom/smartisanos/launcher/d/i;->Of()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/smartisanos/launcher/d/h;->Nf()Z

    move-result p1

    if-nez p1, :cond_e

    .line 39
    invoke-static {}, Lcom/smartisanos/launcher/d/h;->Mf()V

    .line 40
    :cond_e
    # A successful pull-down owns the entire remainder of the gesture. Check
    # before the original queue sees UP/CANCEL so a touched Cell cannot launch
    # after SystemUI has opened.
    invoke-static {}, Lcom/smartisanos/launcher/gesture/SystemPanelCompat;->isSystemPanelGestureConsumed()Z

    move-result p1

    if-eqz p1, :cond_e_system_panel_not_consumed

    invoke-static {}, Lcom/smartisanos/launcher/gesture/SystemPanelCompat;->finishSystemPanelGesture()V

    return v0

    :cond_e_system_panel_not_consumed
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/v;->g(Landroid/view/MotionEvent;)V

    .line 41
    invoke-static {p2}, Lcom/smartisanos/launcher/a/a/a;->c(Landroid/view/MotionEvent;)V

    goto :goto_7

    :cond_f
    :goto_4
    if-nez p1, :cond_13

    .line 42
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_10

    sget-object p1, Lcom/smartisanos/smengine/v;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### MotionEvent.ACTION_DOWN,current statusManager status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/ub;->Tc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 43
    :cond_10
    invoke-virtual {p0}, Lcom/smartisanos/smengine/v;->rh()Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/smartisanos/smengine/v;->ik()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_5

    .line 44
    :cond_11
    iput-boolean v0, p0, Lcom/smartisanos/smengine/v;->ME:Z

    goto :goto_6

    :cond_12
    :goto_5
    return v0

    .line 45
    :cond_13
    :goto_6
    invoke-static {p2}, Lcom/smartisanos/launcher/a/a/a;->a(Landroid/view/MotionEvent;)V

    .line 46
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/v;->g(Landroid/view/MotionEvent;)V

    :goto_7
    move v2, v0

    :cond_14
    if-eqz v2, :cond_16

    .line 47
    invoke-static {v1}, Lcom/smartisanos/smengine/va;->a(Lcom/smartisanos/smengine/va;)Lcom/smartisanos/smengine/va;

    move-result-object p1

    .line 48
    invoke-virtual {p1, p2, p3}, Lcom/smartisanos/smengine/va;->a(Landroid/view/MotionEvent;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 49
    invoke-static {p1}, Lcom/smartisanos/smengine/u;->a(Lcom/smartisanos/smengine/va;)Lcom/smartisanos/smengine/u;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/v;->a(Lcom/smartisanos/smengine/u;)V

    goto :goto_8

    .line 51
    :cond_15
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->recycle()V

    :cond_16
    :goto_8
    return v0
.end method

.method public hk()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/v;->ME:Z

    return p0
.end method

.method public ik()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->GE:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Lcom/smartisanos/smengine/v;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/u;

    .line 4
    invoke-virtual {v3}, Lcom/smartisanos/smengine/u;->gk()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/smengine/v;->GE:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1
.end method

.method public jk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->GE:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/v;->GE:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public kk()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->GE:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/smartisanos/smengine/v;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/u;

    .line 4
    iget-object v4, p0, Lcom/smartisanos/smengine/v;->JE:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->GE:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/smengine/v;->JE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 8
    iget-object v2, p0, Lcom/smartisanos/smengine/v;->JE:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/u;

    .line 9
    invoke-virtual {v2}, Lcom/smartisanos/smengine/u;->run()V

    .line 10
    invoke-virtual {v2}, Lcom/smartisanos/smengine/u;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/v;->JE:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public m(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/v;->LE:Lcom/smartisanos/launcher/data/ItemInfo;

    return-void
.end method

.method public rh()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/v;->ME:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/v;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "### received up or cancel failed at previous touch cycle, so force send an cancel"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2, v2}, Lcom/smartisanos/smengine/va;->c(IFF)Lcom/smartisanos/smengine/va;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/smartisanos/smengine/u;->a(Lcom/smartisanos/smengine/va;)Lcom/smartisanos/smengine/u;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/v;->a(Lcom/smartisanos/smengine/u;)V

    .line 6
    iput-boolean v1, p0, Lcom/smartisanos/smengine/v;->ME:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/smartisanos/smengine/v;->LE:Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public update(F)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/v;->kk()V

    return-void
.end method
