.class public Lcom/smartisanos/launcher/a/a/a;
.super Ljava/lang/Object;
.source "FlingUpGesture.java"


# static fields
.field private static nk:J = 0x0L

.field private static pk:[F = null

.field private static qk:[F = null

.field private static rk:Z = false

.field private static sk:Z = false

.field private static tk:Z = false

.field private static uk:Z = true

.field private static vk:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    sput-object v1, Lcom/smartisanos/launcher/a/a/a;->pk:[F

    new-array v0, v0, [F

    .line 2
    sput-object v0, Lcom/smartisanos/launcher/a/a/a;->qk:[F

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/smartisanos/launcher/sa;->OSBORN:Lcom/smartisanos/launcher/ra;

    iget-object v1, v1, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/sa;->OSCAR:Lcom/smartisanos/launcher/ra;

    iget-object v1, v1, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/sa;->TRIDENT:Lcom/smartisanos/launcher/ra;

    iget-object v1, v1, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/sa;->Qh:Lcom/smartisanos/launcher/ra;

    iget-object v1, v1, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/sa;->OCEAN:Lcom/smartisanos/launcher/ra;

    iget-object v1, v1, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    iget-object v1, v1, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x43480000    # 200.0f

    .line 10
    sput v0, Lcom/smartisanos/launcher/a/a/a;->vk:F

    :cond_1
    return-void
.end method

.method private static a(FFJFFJZZ)V
    .locals 2

    sub-long/2addr p6, p2

    long-to-float p2, p6

    const/high16 p3, 0x447a0000    # 1000.0f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 9
    :cond_1
    sget-boolean p2, Lcom/smartisanos/launcher/a/a/a;->uk:Z

    if-eqz p2, :cond_5

    invoke-static {p8, p9}, Lcom/smartisanos/launcher/gesture/VerticalGestureDirectionConfig;->isSearchDirectionStable(ZZ)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->isSwipeUpSearchEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 10
    sget p2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-static {p1, p5, p2}, Lcom/smartisanos/launcher/gesture/VerticalGestureDirectionConfig;->passesSearchOriginGate(FFI)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    sub-float/2addr p1, p5

    move v1, p1

    neg-float v1, v1

    invoke-static {v1}, Lcom/smartisanos/launcher/gesture/VerticalGestureDirectionConfig;->isSearchDirection(F)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x43160000    # 150.0f

    cmpl-float p2, p1, p2

    const/4 p3, 0x1

    const/4 p5, 0x0

    if-lez p2, :cond_3

    sub-float/2addr p4, p0

    .line 11
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, -0x40ab851f    # -0.83f

    mul-float/2addr p2, p1

    cmpg-float p2, p2, p0

    if-gtz p2, :cond_3

    const p2, 0x3f547ae1    # 0.83f

    mul-float/2addr p1, p2

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3

    move p0, p3

    goto :goto_0

    :cond_3
    move p0, p5

    :goto_0
    if-eqz p0, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->openLauncherSearchFromSwipeUp(Landroid/content/Context;)V

    return-void

    .line 17
    :cond_4
    sput-boolean p5, Lcom/smartisanos/launcher/a/a/a;->uk:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public static a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/gesture/SystemPanelCompat;->onMotionEvent(Landroid/content/Context;Landroid/view/MotionEvent;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->isSwipeUpSearchEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/a/a/a;->pk:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v0, v1

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/a/a/a;->pk:[F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    sput-wide v0, Lcom/smartisanos/launcher/a/a/a;->nk:J

    .line 6
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 7
    sput-boolean v2, Lcom/smartisanos/launcher/a/a/a;->rk:Z

    :cond_2
    return-void
.end method

.method public static b(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/gesture/SystemPanelCompat;->onMotionEvent(Landroid/content/Context;Landroid/view/MotionEvent;)V

    sget-boolean v0, Lcom/smartisanos/launcher/a/a/a;->sk:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 4
    sget-object v3, Lcom/smartisanos/launcher/a/a/a;->pk:[F

    aget v3, v3, v2

    sub-float/2addr v3, v0

    cmpg-float v0, v3, v1

    if-gez v0, :cond_1

    .line 5
    sput-boolean v2, Lcom/smartisanos/launcher/a/a/a;->sk:Z

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->isSwipeUpSearchEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-boolean v0, Lcom/smartisanos/launcher/a/a/a;->tk:Z

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/a/a/a;->pk:[F

    aget v0, v0, v2

    sub-float/2addr v0, p0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_2

    .line 10
    sput-boolean v2, Lcom/smartisanos/launcher/a/a/a;->tk:Z

    :cond_2
    return-void
.end method

.method public static c(Landroid/view/MotionEvent;)V
    .locals 14

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/gesture/SystemPanelCompat;->onMotionEvent(Landroid/content/Context;Landroid/view/MotionEvent;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->isSwipeUpSearchEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/a/a/a;->qk:[F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/a/a/a;->qk:[F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 5
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/a/a/a;->rk:Z

    if-eqz v0, :cond_2

    .line 7
    sput-boolean v2, Lcom/smartisanos/launcher/a/a/a;->rk:Z

    goto :goto_0

    .line 8
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/a/a/a;->tk:Z

    xor-int/lit8 v12, v0, 0x1

    .line 9
    sget-boolean v0, Lcom/smartisanos/launcher/a/a/a;->sk:Z

    xor-int/lit8 v13, v0, 0x1

    .line 10
    sget-object v0, Lcom/smartisanos/launcher/a/a/a;->pk:[F

    aget v4, v0, v2

    aget v5, v0, v3

    sget-wide v6, Lcom/smartisanos/launcher/a/a/a;->nk:J

    sget-object v0, Lcom/smartisanos/launcher/a/a/a;->qk:[F

    aget v8, v0, v2

    aget v9, v0, v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-static/range {v4 .. v13}, Lcom/smartisanos/launcher/a/a/a;->a(FFJFFJZZ)V

    .line 11
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/a/a/a;->ew()V

    :cond_3
    return-void
.end method

.method public static resetAfterSystemPanelGestureMoveConsumed()V
    .locals 4

    const-string v0, "SYSTEM_PANEL_MOVE_CONSUMED"

    sget-boolean v1, Lcom/smartisanos/launcher/a/a/a;->rk:Z

    sget-boolean v2, Lcom/smartisanos/launcher/a/a/a;->sk:Z

    sget-boolean v3, Lcom/smartisanos/launcher/a/a/a;->tk:Z

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->logFlingUpReset(Ljava/lang/String;ZZZ)V

    invoke-static {}, Lcom/smartisanos/launcher/a/a/a;->ew()V

    return-void
.end method

.method public static resetAfterSystemPanelGesture()V
    .locals 4

    const-string v0, "SYSTEM_PANEL_UP_CANCEL"

    sget-boolean v1, Lcom/smartisanos/launcher/a/a/a;->rk:Z

    sget-boolean v2, Lcom/smartisanos/launcher/a/a/a;->sk:Z

    sget-boolean v3, Lcom/smartisanos/launcher/a/a/a;->tk:Z

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->logFlingUpReset(Ljava/lang/String;ZZZ)V

    invoke-static {}, Lcom/smartisanos/launcher/a/a/a;->ew()V

    return-void
.end method

.method private static ew()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/smartisanos/launcher/a/a/a;->rk:Z

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/a/a/a;->sk:Z

    .line 3
    sput-boolean v0, Lcom/smartisanos/launcher/a/a/a;->tk:Z

    return-void
.end method
