.class public Lcom/smartisanos/launcher/view/Fb;
.super Ljava/lang/Object;
.source "MainViewHelperUtils.java"


# static fields
.field public static jy:I

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Fb;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Fb;->log:Lcom/smartisanos/launcher/va;

    const/16 v0, 0x64

    .line 2
    sput v0, Lcom/smartisanos/launcher/view/Fb;->jy:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/view/Fb;->h(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 4
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr p0, v1

    .line 5
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 6
    invoke-static {v0, p0, v1}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    return-object v1

    .line 7
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    return-object p0
.end method

.method public static h(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 2
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v0

    .line 3
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_margin_top:F

    .line 4
    sget p0, Lcom/smartisanos/launcher/data/Constants;->LAUNCHPAD_DOCK_HEIGHT:I

    int-to-float p0, p0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->isMeetingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float p0, p0

    goto :goto_0

    .line 7
    :cond_0
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v1, v1

    sub-float p0, v1, p0

    .line 8
    :goto_0
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object v1

    .line 9
    :cond_1
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p0, p0

    .line 10
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v0, v0

    .line 11
    sget v1, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v1, v1

    .line 12
    sget v2, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v2, v2

    add-float v3, v1, v2

    mul-float/2addr p0, v3

    div-float/2addr p0, v2

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    .line 13
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    neg-float v1, v1

    invoke-direct {v2, p0, v0, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object v2
.end method

.method public static i(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/Fb;->j(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 3
    iget v1, p0, Lcom/smartisanos/smengine/a/i;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    div-float/2addr p0, v2

    invoke-static {v1, p0, v0}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    return-object v0
.end method

.method public static j(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;
    .locals 2

    .line 1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v0

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_margin_top:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p0, v1

    float-to-int v1, v1

    .line 3
    sput v1, Lcom/smartisanos/launcher/view/Fb;->jy:I

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v1, v0, p0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    return-object v1
.end method

.method public static ki()Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 2
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 3
    sget v2, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 4
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 6
    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 7
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_select_text_margin_left:F

    .line 8
    :cond_0
    invoke-static {v1, v2, v0}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    return-object v0
.end method
