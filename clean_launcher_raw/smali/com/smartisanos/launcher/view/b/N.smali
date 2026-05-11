.class public Lcom/smartisanos/launcher/view/b/N;
.super Ljava/lang/Object;
.source "PageHelperUtils.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/b/N;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/b/N;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    add-float/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iget v2, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float/2addr v1, v2

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    add-float/2addr v1, p0

    .line 3
    new-instance p0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    return-object p0
.end method

.method public static B(Lcom/smartisanos/launcher/data/LayoutProperty;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    return p0
.end method

.method public static C(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->B(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    add-float/2addr v0, p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->B(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    :goto_0
    const/4 p0, 0x0

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v1, v0, p0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    return-object v1
.end method

.method public static D(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->B(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    add-float/2addr v0, p0

    .line 2
    new-instance p0, Lcom/smartisanos/smengine/a/i;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    return-object p0
.end method

.method public static E(Lcom/smartisanos/launcher/data/LayoutProperty;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_left:F

    add-float v2, v0, v1

    iget v3, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_right:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_width:F

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_shadow_width:F

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_width:F

    sget v1, Lcom/smartisanos/launcher/data/Constants;->MAX_TITLE_NAME_LENGTH_MODULUS:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->max_title_name_length:F

    :cond_0
    return-void
.end method

.method public static Fa(I)[Lcom/smartisanos/smengine/a/i;
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/smartisanos/smengine/a/i;

    .line 2
    new-instance v3, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->B(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v4

    .line 4
    invoke-static {v0}, Lcom/smartisanos/launcher/view/b/N;->v(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v5

    .line 5
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    const/4 v0, 0x0

    .line 7
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v1, v1

    .line 8
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    .line 9
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 10
    invoke-static {v0, v1, v3}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 11
    iget v0, v3, Lcom/smartisanos/smengine/a/i;->x:F

    .line 12
    iget v1, v3, Lcom/smartisanos/smengine/a/i;->y:F

    .line 13
    invoke-static {v4, p0, v3}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 14
    iget p0, v3, Lcom/smartisanos/smengine/a/i;->x:F

    .line 15
    iget v3, v3, Lcom/smartisanos/smengine/a/i;->y:F

    .line 16
    new-instance v4, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v4, v0, v1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    aput-object v4, v2, v8

    .line 17
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    aput-object v0, v2, v7

    goto/16 :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isSinglePageMode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 19
    iget p0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    .line 20
    sget v6, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v9, v6

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float/2addr v9, v0

    add-float/2addr v9, v5

    add-float/2addr v4, p0

    int-to-float v5, v6

    add-float/2addr v5, v0

    .line 21
    invoke-static {p0, v9, v3}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 22
    iget p0, v3, Lcom/smartisanos/smengine/a/i;->y:F

    .line 23
    invoke-static {v4, v5, v3}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 24
    iget v0, v3, Lcom/smartisanos/smengine/a/i;->y:F

    .line 25
    new-instance v3, Lcom/smartisanos/smengine/a/i;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    neg-int v4, v4

    div-int/2addr v4, v1

    int-to-float v4, v4

    invoke-direct {v3, v4, p0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    aput-object v3, v2, v8

    .line 26
    new-instance p0, Lcom/smartisanos/smengine/a/i;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    aput-object p0, v2, v7

    goto :goto_0

    .line 27
    :cond_1
    iget p0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    .line 28
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v4, v4

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    sub-float/2addr v4, v5

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    sub-float/2addr v4, v5

    .line 29
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v5, :cond_2

    .line 30
    sget v5, Lcom/smartisanos/launcher/data/Constants;->navigation_bar_height:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 31
    :cond_2
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v6

    invoke-static {p0, v4, v5, v6, v3}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 32
    iget p0, v3, Lcom/smartisanos/smengine/a/i;->y:F

    .line 33
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    sub-float/2addr v4, v5

    .line 34
    sget v5, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v5, v5

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float/2addr v5, v0

    .line 35
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v0

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v6

    invoke-static {v4, v5, v0, v6, v3}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 36
    iget v0, v3, Lcom/smartisanos/smengine/a/i;->y:F

    .line 37
    new-instance v3, Lcom/smartisanos/smengine/a/i;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    neg-int v4, v4

    div-int/2addr v4, v1

    int-to-float v4, v4

    invoke-direct {v3, v4, p0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    aput-object v3, v2, v8

    .line 38
    new-instance p0, Lcom/smartisanos/smengine/a/i;

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    aput-object p0, v2, v7

    :goto_0
    return-object v2
.end method

.method public static a(Lcom/smartisanos/launcher/data/LayoutProperty;Lcom/smartisanos/launcher/data/LayoutProperty;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    div-float/2addr p0, p1

    return p0
.end method

.method public static a(Lcom/smartisanos/launcher/data/LayoutProperty;Lcom/smartisanos/launcher/data/LayoutProperty;Z)Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 27
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/b/N;->a(Lcom/smartisanos/launcher/data/LayoutProperty;Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 28
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    .line 29
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->v(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p0

    div-float/2addr p0, v1

    invoke-static {p1}, Lcom/smartisanos/launcher/view/b/N;->w(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v1

    add-float/2addr p0, v3

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    invoke-direct {p2, v2, p0, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p2

    .line 30
    :cond_0
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->v(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p0

    div-float/2addr p0, v1

    invoke-static {p1}, Lcom/smartisanos/launcher/view/b/N;->w(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p1

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    sub-float/2addr p0, p1

    invoke-direct {p2, v2, p0, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p2
.end method

.method public static a(Lcom/smartisanos/launcher/data/LayoutProperty;Lcom/smartisanos/launcher/view/Mc;)Lcom/smartisanos/smengine/a/j;
    .locals 5

    .line 31
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->y(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 32
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->w(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    .line 33
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 34
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Mc;->getWidth()F

    move-result v3

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    mul-float/2addr v3, v4

    .line 35
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Mc;->getHeight()F

    move-result p1

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    mul-float/2addr p1, v2

    neg-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 36
    iget v3, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_name_spacing_left:F

    add-float/2addr v0, v3

    .line 37
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    neg-float v0, v1

    div-float/2addr v0, v2

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    .line 38
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_name_spacing_bottom:F

    add-float/2addr p0, v0

    move v0, v4

    goto :goto_0

    :cond_0
    move p0, v4

    .line 39
    :goto_0
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1, v0, p0, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p1
.end method

.method public static a(ILcom/smartisanos/smengine/a/j;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->r(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object p0

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/a/i;->x:F

    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public static a(I[Lcom/smartisanos/smengine/a/j;)V
    .locals 12

    .line 4
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageRowColumn(I)[I

    move-result-object p0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v3, v4

    add-float/2addr v2, v5

    .line 8
    sget v5, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v5, v5

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float/2addr v5, v6

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    add-float/2addr v5, v6

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v5, v7

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    mul-float/2addr v7, v4

    add-float/2addr v5, v7

    .line 9
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 10
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    .line 11
    aget v7, p0, v8

    int-to-float v7, v7

    div-float/2addr v7, v5

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v7, v9

    mul-float/2addr v9, v3

    .line 12
    iget v10, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_h:F

    sub-float/2addr v7, v4

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    mul-float/2addr v3, v4

    add-float/2addr v9, v3

    sub-float/2addr v2, v9

    .line 13
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    div-float/2addr v6, v5

    add-float v5, v3, v6

    .line 14
    :cond_0
    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_h:F

    add-float/2addr v3, v4

    .line 15
    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v4, v6

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    add-float/2addr v4, v6

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_v:F

    add-float/2addr v4, v0

    const/4 v0, 0x0

    move v6, v0

    .line 16
    :goto_0
    aget v7, p0, v0

    aget v9, p0, v8

    mul-int/2addr v7, v9

    if-ge v6, v7, :cond_1

    .line 17
    aget v7, p0, v8

    rem-int v7, v6, v7

    .line 18
    aget v9, p0, v8

    div-int v9, v6, v9

    .line 19
    new-instance v10, Lcom/smartisanos/smengine/a/j;

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v2

    int-to-float v9, v9

    mul-float/2addr v9, v4

    add-float/2addr v9, v5

    const/4 v11, 0x0

    invoke-direct {v10, v7, v9, v11}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 20
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/a/j;

    .line 23
    iget v2, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v3, p1, v0

    invoke-static {v2, p0, v3}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 24
    aget-object p0, p1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 25
    aget-object p0, p1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/smartisanos/smengine/a/j;->y:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static k(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_left:F

    iget v2, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_right:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    sub-float/2addr v3, p0

    div-float/2addr v3, v2

    const/4 p0, 0x0

    invoke-direct {v0, v1, v3, p0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object v0
.end method

.method public static l(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_left:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_right:F

    add-float/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iget v2, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_top:F

    add-float/2addr v1, v2

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_padding_bottom:F

    add-float/2addr v1, p0

    .line 3
    new-instance p0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    return-object p0
.end method

.method public static m(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->y(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->w(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->n(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 4
    iget v4, v2, Lcom/smartisanos/smengine/a/i;->x:F

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->edit_spacing_right:F

    sub-float/2addr v0, v4

    neg-float v1, v1

    div-float/2addr v1, v3

    .line 5
    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->edit_spacing_bottom:F

    add-float/2addr v1, p0

    .line 6
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p0
.end method

.method public static n(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->edit_icon_width:F

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->edit_icon_height:F

    invoke-direct {v0, v1, p0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    return-object v0
.end method

.method public static o(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->y(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->w(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->p(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    neg-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 4
    iget v4, v2, Lcom/smartisanos/smengine/a/i;->x:F

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    iget v4, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->eye_spacing_left:F

    add-float/2addr v0, v4

    neg-float v1, v1

    div-float/2addr v1, v3

    .line 5
    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->eye_spacing_bottom:F

    add-float/2addr v1, p0

    .line 6
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p0
.end method

.method public static p(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->eye_icon_width:F

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->eye_icon_height:F

    invoke-direct {v0, v1, p0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    return-object v0
.end method

.method public static q(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/k;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->o(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->p(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    .line 3
    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->z(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 4
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->x(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p0

    div-float/2addr p0, v4

    add-float/2addr v0, p0

    .line 5
    new-instance p0, Lcom/smartisanos/smengine/a/k;

    iget v3, v1, Lcom/smartisanos/smengine/a/i;->x:F

    div-float v5, v3, v4

    sub-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget v1, v1, Lcom/smartisanos/smengine/a/i;->y:F

    div-float v4, v1, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    float-to-int v3, v3

    int-to-float v3, v3

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    return-object p0
.end method

.method public static r(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->B(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->v(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    .line 3
    iget v2, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 5
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v2, p0, v0

    .line 6
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    goto :goto_0

    .line 7
    :cond_0
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    sget v0, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v0, v0

    add-float/2addr p0, v0

    mul-float/2addr v1, v3

    add-float/2addr p0, v1

    .line 8
    :goto_0
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 9
    invoke-static {v2, p0, v0}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 10
    iget p0, v0, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int p0, p0

    int-to-float p0, p0

    iput p0, v0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 11
    iget p0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int p0, p0

    int-to-float p0, p0

    iput p0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    return-object v0
.end method

.method public static s(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->y(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->w(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->t(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 4
    iget v4, v2, Lcom/smartisanos/smengine/a/i;->x:F

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->lock_spacing_right:F

    sub-float/2addr v0, v4

    neg-float v1, v1

    div-float/2addr v1, v3

    .line 5
    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->lock_spacing_bottom:F

    add-float/2addr v1, p0

    .line 6
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p0
.end method

.method public static t(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->lock_icon_width:F

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->lock_icon_height:F

    invoke-direct {v0, v1, p0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    return-object v0
.end method

.method public static u(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/k;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->s(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->t(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    .line 3
    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->z(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 4
    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {p0}, Lcom/smartisanos/launcher/view/b/N;->x(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p0

    div-float/2addr p0, v4

    add-float/2addr v0, p0

    .line 5
    new-instance p0, Lcom/smartisanos/smengine/a/k;

    iget v3, v1, Lcom/smartisanos/smengine/a/i;->x:F

    div-float v5, v3, v4

    sub-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget v1, v1, Lcom/smartisanos/smengine/a/i;->y:F

    div-float v4, v1, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    float-to-int v3, v3

    int-to-float v3, v3

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    return-object p0
.end method

.method public static v(Lcom/smartisanos/launcher/data/LayoutProperty;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    return p0
.end method

.method public static w(Lcom/smartisanos/launcher/data/LayoutProperty;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    return p0
.end method

.method public static x(Lcom/smartisanos/launcher/data/LayoutProperty;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_shadow_height:F

    return p0
.end method

.method public static y(Lcom/smartisanos/launcher/data/LayoutProperty;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_width:F

    return p0
.end method

.method public static z(Lcom/smartisanos/launcher/data/LayoutProperty;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_shadow_width:F

    return p0
.end method
