.class public Lcom/smartisanos/launcher/view/x;
.super Ljava/lang/Object;
.source "DockHelperUtils.java"


# static fields
.field private static Xu:Lcom/smartisanos/launcher/view/V;

.field private static Yu:Lcom/smartisanos/smengine/a/j;

.field private static Zu:Lcom/smartisanos/smengine/a/j;

.field private static _u:Lcom/smartisanos/smengine/a/j;

.field private static av:Lcom/smartisanos/smengine/a/j;

.field private static bv:Lcom/smartisanos/smengine/a/j;

.field private static cv:[Lcom/smartisanos/smengine/a/j;

.field private static dv:[Lcom/smartisanos/smengine/a/j;

.field private static ev:[Lcom/smartisanos/smengine/a/j;

.field private static fv:[Lcom/smartisanos/smengine/a/j;

.field private static gv:[Lcom/smartisanos/smengine/a/j;

.field private static hv:[Lcom/smartisanos/smengine/a/j;

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/x;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/x;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/launcher/view/x;->Xu:Lcom/smartisanos/launcher/view/V;

    .line 3
    sput-object v0, Lcom/smartisanos/launcher/view/x;->Yu:Lcom/smartisanos/smengine/a/j;

    .line 4
    sput-object v0, Lcom/smartisanos/launcher/view/x;->Zu:Lcom/smartisanos/smengine/a/j;

    .line 5
    sput-object v0, Lcom/smartisanos/launcher/view/x;->_u:Lcom/smartisanos/smengine/a/j;

    .line 6
    sput-object v0, Lcom/smartisanos/launcher/view/x;->av:Lcom/smartisanos/smengine/a/j;

    .line 7
    sput-object v0, Lcom/smartisanos/launcher/view/x;->bv:Lcom/smartisanos/smengine/a/j;

    .line 8
    sput-object v0, Lcom/smartisanos/launcher/view/x;->cv:[Lcom/smartisanos/smengine/a/j;

    .line 9
    sput-object v0, Lcom/smartisanos/launcher/view/x;->dv:[Lcom/smartisanos/smengine/a/j;

    .line 10
    sput-object v0, Lcom/smartisanos/launcher/view/x;->ev:[Lcom/smartisanos/smengine/a/j;

    .line 11
    sput-object v0, Lcom/smartisanos/launcher/view/x;->fv:[Lcom/smartisanos/smengine/a/j;

    .line 12
    sput-object v0, Lcom/smartisanos/launcher/view/x;->gv:[Lcom/smartisanos/smengine/a/j;

    .line 13
    sput-object v0, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Tc(I)[Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/x;->ev:[Lcom/smartisanos/smengine/a/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/x;->fv:[Lcom/smartisanos/smengine/a/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/x;->gv:[Lcom/smartisanos/smengine/a/j;

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->ra(I)V

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/view/x;->ev:[Lcom/smartisanos/smengine/a/j;

    return-object p0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/view/x;->fv:[Lcom/smartisanos/smengine/a/j;

    return-object p0

    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 5
    sget-object p0, Lcom/smartisanos/launcher/view/x;->gv:[Lcom/smartisanos/smengine/a/j;

    return-object p0

    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    .line 6
    sget-object p0, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(FIZ)F
    .locals 1

    .line 8
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result p0

    .line 10
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 11
    iget p2, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cell_icon_size:F

    int-to-float v0, p1

    mul-float/2addr p2, v0

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    iget v0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_create_folder_margin_left:F

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_delete_btn_margin_left:F

    add-float/2addr p2, p0

    return p2

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x40800000    # 4.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x40400000    # 3.0f

    :goto_0
    mul-float/2addr p0, p1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p1, 0x1

    int-to-float p2, p2

    div-float/2addr p0, p2

    int-to-float p1, p1

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static a(Lcom/smartisanos/launcher/data/LayoutProperty;)F
    .locals 0

    .line 12
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    return p0
.end method

.method public static a(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/a/j;
    .locals 7

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 15
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 16
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v6, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v5, v6, :cond_0

    .line 17
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    div-float/2addr v2, v4

    add-float v3, v0, v2

    .line 18
    :cond_0
    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    div-float/2addr v0, v4

    .line 19
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    invoke-static {v3, v0, v1, p0}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    return-object v1
.end method

.method public static a(Lcom/smartisanos/launcher/view/V;IZI)Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 151
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/smartisanos/launcher/view/x;->bh()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 154
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode(I)I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/view/x;->qa(I)F

    move-result p1

    const/4 v1, 0x1

    .line 155
    invoke-static {p1, p3, v1}, Lcom/smartisanos/launcher/view/x;->a(FIZ)F

    move-result p3

    .line 156
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    sub-float/2addr p1, p3

    div-float/2addr p1, v3

    goto :goto_0

    :cond_1
    sub-float/2addr p1, p3

    div-float/2addr p1, v3

    add-float/2addr p1, p3

    :goto_0
    if-eqz p2, :cond_2

    .line 157
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p2

    .line 158
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p3

    div-float/2addr p3, v3

    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_icon_center_offset_2_2:F

    add-float/2addr p3, p2

    goto :goto_1

    .line 159
    :cond_2
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p2

    iget p3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    add-float/2addr p3, p2

    .line 160
    :goto_1
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 161
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    invoke-static {p1, p3, p2, p0}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    return-object p2
.end method

.method public static a(Lcom/smartisanos/launcher/view/V;IZZI)Lcom/smartisanos/smengine/a/j;
    .locals 3

    .line 139
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->s(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0

    .line 141
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 142
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode(I)I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/view/x;->qa(I)F

    move-result p1

    .line 143
    invoke-static {p1, p4, p3}, Lcom/smartisanos/launcher/view/x;->a(FIZ)F

    move-result p3

    .line 144
    sget-object p4, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p4, v1, :cond_1

    sub-float/2addr p1, p3

    div-float/2addr p1, v2

    goto :goto_0

    :cond_1
    sub-float/2addr p1, p3

    div-float/2addr p1, v2

    add-float/2addr p1, p3

    :goto_0
    if-eqz p2, :cond_2

    .line 145
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p2

    iget p3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_display_height:F

    sub-float/2addr p2, p3

    iget p3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    goto :goto_1

    .line 146
    :cond_2
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p2

    iget p3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    :goto_1
    div-float/2addr p3, v2

    add-float/2addr p2, p3

    .line 147
    sget-boolean p3, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz p3, :cond_3

    .line 148
    sget p3, Lcom/smartisanos/launcher/data/Constants;->navigation_bar_height:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    .line 149
    :cond_3
    new-instance p3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 150
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    return-object p3
.end method

.method public static a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/launcher/view/DockView$Component;Z)Lcom/smartisanos/smengine/a/j;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 26
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_3

    .line 27
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/view/x;->px()Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->y:F

    iput v5, p2, Lcom/smartisanos/smengine/a/j;->y:F

    .line 31
    sget-object v5, Lcom/smartisanos/launcher/view/w;->Wu:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v5, p1

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    return-object v0

    .line 32
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/x;->px()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 33
    iget p0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iput p0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    goto :goto_0

    .line 34
    :cond_2
    sget p1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p1, p1

    const/high16 v0, 0x41000000    # 8.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x40e00000    # 7.0f

    mul-float/2addr p1, v0

    .line 35
    iget v0, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    div-float/2addr v0, v4

    invoke-static {p1, v0, p2, p0}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    :goto_0
    return-object p2

    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->pa(I)F

    move-result v1

    .line 37
    sget-object v5, Lcom/smartisanos/launcher/view/w;->Wu:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v5, p1

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    return-object v0

    .line 38
    :cond_4
    sget p1, Lcom/smartisanos/launcher/data/Constants;->icon_sort_confirm_padding:I

    int-to-float p1, p1

    if-eqz p2, :cond_6

    .line 39
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result p2

    invoke-static {p2}, Lcom/smartisanos/launcher/view/x;->pa(I)F

    move-result p2

    goto :goto_1

    .line 40
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/view/x;->qa(I)F

    move-result p1

    sget v0, Lcom/smartisanos/launcher/data/Constants;->icon_sort_confirm_padding:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    if-eqz p2, :cond_6

    .line 41
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result p2

    invoke-static {p2}, Lcom/smartisanos/launcher/view/x;->pa(I)F

    move-result p2

    :goto_1
    div-float v1, p2, v4

    .line 42
    :cond_6
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    invoke-static {p1, v1, p2, p0}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    return-object p2
.end method

.method public static a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/F;)Lcom/smartisanos/smengine/a/j;
    .locals 2

    .line 21
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result p0

    .line 23
    iget v0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    add-float/2addr v0, v1

    .line 24
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_4_3X3_MODE(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x420c0000    # 35.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x41a00000    # 20.0f

    :goto_0
    sub-float/2addr v0, p0

    .line 25
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p0
.end method

.method public static a(Lcom/smartisanos/launcher/view/V;I)Lcom/smartisanos/smengine/i;
    .locals 6

    .line 107
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 109
    iget p1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cell_icon_size:F

    .line 110
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 111
    new-instance v0, Lcom/smartisanos/smengine/i;

    new-instance v2, Lcom/smartisanos/smengine/a/i;

    neg-float v3, p1

    div-float/2addr v3, v1

    neg-float v4, p0

    div-float/2addr v4, v1

    invoke-direct {v2, v3, v4}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    new-instance v3, Lcom/smartisanos/smengine/a/i;

    div-float/2addr p1, v1

    div-float/2addr p0, v1

    invoke-direct {v3, p1, p0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/smengine/i;-><init>(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V

    return-object v0

    .line 112
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 113
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    .line 114
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    if-ne p1, p0, :cond_1

    .line 116
    new-instance p0, Lcom/smartisanos/smengine/i;

    new-instance p1, Lcom/smartisanos/smengine/a/i;

    neg-float v3, v2

    div-float/2addr v3, v1

    neg-float v4, v0

    sub-float/2addr v4, v2

    invoke-direct {p1, v3, v4}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    new-instance v3, Lcom/smartisanos/smengine/a/i;

    div-float/2addr v2, v1

    div-float/2addr v0, v1

    invoke-direct {v3, v2, v0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    invoke-direct {p0, p1, v3}, Lcom/smartisanos/smengine/i;-><init>(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V

    return-object p0

    .line 117
    :cond_1
    new-instance p0, Lcom/smartisanos/smengine/i;

    new-instance p1, Lcom/smartisanos/smengine/a/i;

    neg-float v3, v2

    div-float/2addr v3, v1

    neg-float v4, v0

    mul-float v5, v2, v1

    sub-float/2addr v4, v5

    invoke-direct {p1, v3, v4}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    new-instance v3, Lcom/smartisanos/smengine/a/i;

    div-float/2addr v2, v1

    div-float/2addr v0, v1

    invoke-direct {v3, v2, v0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    invoke-direct {p0, p1, v3}, Lcom/smartisanos/smengine/i;-><init>(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V

    return-object p0
.end method

.method public static a(Lcom/smartisanos/launcher/view/V;ILcom/smartisanos/launcher/view/a/g;I)Lcom/smartisanos/smengine/i;
    .locals 4

    .line 79
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result p2

    .line 81
    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p2

    .line 82
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode(I)I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/view/x;->qa(I)F

    move-result p1

    .line 83
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p3

    invoke-static {p3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p3

    iget p3, p3, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    invoke-static {p1, p3}, Lcom/smartisanos/launcher/view/x;->b(FI)F

    move-result p1

    .line 84
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p3

    invoke-static {p3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p3

    invoke-static {p3}, Lcom/smartisanos/launcher/view/x;->c(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    .line 85
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p3

    invoke-static {p3}, Lcom/smartisanos/launcher/view/x;->qa(I)F

    .line 86
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p3

    invoke-static {p3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p3

    invoke-static {p3}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p3

    .line 87
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->Tc(I)[Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 88
    iget v0, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cell_icon_size:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v0, p0, v0

    iget p2, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_delete_btn_margin_left:F

    sub-float/2addr v0, p2

    add-float/2addr p0, p1

    .line 89
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 90
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 91
    new-instance p1, Lcom/smartisanos/smengine/i;

    new-instance p2, Lcom/smartisanos/smengine/a/i;

    invoke-direct {p2, v0, v1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0, p0, p3}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    invoke-direct {p1, p2, v0}, Lcom/smartisanos/smengine/i;-><init>(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V

    return-object p1

    .line 92
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode(I)I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->qa(I)F

    move-result v0

    .line 93
    invoke-static {v0, p3}, Lcom/smartisanos/launcher/view/x;->b(FI)F

    move-result v2

    .line 94
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v3

    if-ne p1, v3, :cond_5

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 95
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-nez p2, :cond_1

    .line 96
    sget-object p1, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    :cond_1
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2

    .line 97
    sget-object p1, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    :cond_2
    if-eqz p1, :cond_3

    .line 98
    sget-object p2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne p1, p2, :cond_4

    goto :goto_0

    .line 99
    :cond_3
    sget-object p1, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object p2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne p1, p2, :cond_4

    :goto_0
    sub-float/2addr v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    move p1, v0

    goto :goto_2

    .line 100
    :cond_5
    sget-object p1, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object p2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne p1, p2, :cond_6

    sub-float p1, v0, v2

    goto :goto_2

    :cond_6
    move p1, v1

    .line 101
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p2

    invoke-static {p2}, Lcom/smartisanos/launcher/view/x;->pa(I)F

    move-result p2

    add-float/2addr v2, p1

    .line 102
    new-instance p3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 103
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    invoke-static {p1, p2, p3, v3}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 105
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    invoke-static {v2, v1, v0, p0}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 106
    new-instance p0, Lcom/smartisanos/smengine/i;

    new-instance p1, Lcom/smartisanos/smengine/a/i;

    iget p2, p3, Lcom/smartisanos/smengine/a/j;->x:F

    iget p3, p3, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-direct {p1, p2, p3}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    new-instance p2, Lcom/smartisanos/smengine/a/i;

    iget p3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-direct {p2, p3, v0}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    invoke-direct {p0, p1, p2}, Lcom/smartisanos/smengine/i;-><init>(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V

    return-object p0
.end method

.method private static a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p3}, Lcom/smartisanos/launcher/data/Constants;->mode(Lcom/smartisanos/launcher/data/LayoutProperty;)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->checkSinglePageMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "the layout property must single lp"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    invoke-static {p3}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 6
    invoke-static {p3}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p3

    .line 7
    invoke-static {p0, p1, v0, p3, p2}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public static a(Lcom/smartisanos/launcher/view/V;ILcom/smartisanos/smengine/i;)V
    .locals 9

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/smartisanos/launcher/view/V;->zK:[Lcom/smartisanos/smengine/a/j;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 66
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 67
    new-array p2, p1, [Lcom/smartisanos/smengine/a/j;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/V;->zK:[Lcom/smartisanos/smengine/a/j;

    .line 68
    invoke-static {p1}, Lcom/smartisanos/launcher/view/x;->Tc(I)[Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    :goto_0
    if-ge v1, p1, :cond_3

    if-nez p2, :cond_2

    .line 69
    sget-object v0, Lcom/smartisanos/launcher/view/x;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateCellsLocation dockCellCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/V;->zK:[Lcom/smartisanos/smengine/a/j;

    new-instance v2, Lcom/smartisanos/smengine/a/j;

    aget-object v3, p2, v1

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v4, p2, v1

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v5, p2, v1

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 71
    :cond_4
    invoke-virtual {p2}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 72
    invoke-virtual {p2}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/smengine/a/i;->x:F

    sub-float/2addr p2, v0

    int-to-float v2, p1

    div-float/2addr p2, v2

    .line 73
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/view/x;->pa(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 74
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6, v2, v4, v5}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 76
    iget v2, v4, Lcom/smartisanos/smengine/a/j;->y:F

    .line 77
    new-array v4, p1, [Lcom/smartisanos/smengine/a/j;

    iput-object v4, p0, Lcom/smartisanos/launcher/view/V;->zK:[Lcom/smartisanos/smengine/a/j;

    :goto_1
    if-ge v1, p1, :cond_5

    .line 78
    iget-object v4, p0, Lcom/smartisanos/launcher/view/V;->zK:[Lcom/smartisanos/smengine/a/j;

    new-instance v5, Lcom/smartisanos/smengine/a/j;

    div-float v7, p2, v3

    add-float/2addr v7, v0

    int-to-float v8, v1

    mul-float/2addr v8, p2

    add-float/2addr v7, v8

    invoke-direct {v5, v7, v2, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static a(IZIZLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/Constants$HandHabit;)[Lcom/smartisanos/smengine/a/j;
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/smartisanos/smengine/a/j;

    if-gtz p0, :cond_0

    return-object v1

    .line 44
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_2

    .line 45
    new-array p1, p0, [Lcom/smartisanos/smengine/a/j;

    .line 46
    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p2

    .line 47
    iget p2, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cells_offset_y_without_app_name:F

    .line 48
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->Tc(I)[Lcom/smartisanos/smengine/a/j;

    move-result-object p3

    :goto_0
    if-ge v0, p0, :cond_1

    .line 49
    new-instance p4, Lcom/smartisanos/smengine/a/j;

    aget-object p5, p3, v0

    iget p5, p5, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v1, p3, v0

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v1, p2

    aget-object v2, p3, v0

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {p4, p5, v1, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    aput-object p4, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    .line 50
    :cond_2
    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 51
    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode(I)I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/view/x;->qa(I)F

    move-result v2

    .line 52
    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->isMultiPageMode(I)Z

    move-result v3

    if-nez p1, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2

    .line 53
    :cond_4
    :goto_1
    invoke-static {v2, p0}, Lcom/smartisanos/launcher/view/x;->b(FI)F

    move-result v4

    :goto_2
    int-to-float v5, p0

    div-float v5, v4, v5

    const/4 v6, 0x0

    if-nez p1, :cond_5

    if-eqz v3, :cond_8

    :cond_5
    if-eqz p3, :cond_6

    .line 54
    iget p1, p4, Lcom/smartisanos/smengine/a/j;->x:F

    cmpl-float p1, p1, v6

    if-lez p1, :cond_7

    goto :goto_3

    .line 55
    :cond_6
    sget-object p1, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne p5, p1, :cond_8

    goto :cond_8

    :cond_7
    sub-float v6, v2, v4

    .line 56
    :cond_8
    :goto_3
    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 57
    new-array p4, p0, [Lcom/smartisanos/smengine/a/j;

    .line 58
    iget p5, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cells_offset_y:F

    .line 59
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-nez v2, :cond_9

    .line 60
    iget p5, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cells_offset_y_without_app_name:F

    :cond_9
    :goto_4
    if-ge v0, p0, :cond_a

    .line 61
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    div-float v2, v5, p3

    add-float/2addr v2, v6

    int-to-float v3, v0

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 62
    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode(I)I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    invoke-static {v2, p1, v1, v3}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 63
    iget v2, v1, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v2, p5

    iput v2, v1, Lcom/smartisanos/smengine/a/j;->y:F

    .line 64
    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    return-object p4
.end method

.method public static a(Lcom/smartisanos/launcher/view/V;II)[Lcom/smartisanos/smengine/a/j;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p0, v0, [Lcom/smartisanos/smengine/a/j;

    return-object p0

    .line 118
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_3

    .line 119
    new-array p1, p2, [Lcom/smartisanos/smengine/a/j;

    .line 120
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 121
    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cells_offset_y:F

    .line 122
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-nez v2, :cond_1

    .line 123
    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cells_offset_y_without_app_name:F

    .line 124
    :cond_1
    invoke-static {p2}, Lcom/smartisanos/launcher/view/x;->Tc(I)[Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 125
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    aget-object v3, p0, v0

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v4, p0, v0

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v4, v1

    aget-object v5, p0, v0

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    .line 126
    :cond_3
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-nez p1, :cond_4

    .line 127
    sget-object v1, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    :cond_4
    add-int/lit8 v2, p2, -0x1

    if-ne p1, v2, :cond_5

    .line 128
    sget-object v1, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 129
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 130
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p1

    .line 131
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/x;->b(FI)F

    move-result v2

    .line 132
    iget v3, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    int-to-float v4, p2

    div-float v4, v2, v4

    .line 133
    sget-object v5, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v1, v5, :cond_6

    sub-float v3, p1, v2

    .line 134
    :cond_6
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    .line 135
    new-array v2, p2, [Lcom/smartisanos/smengine/a/j;

    :goto_1
    if-ge v0, p2, :cond_7

    .line 136
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    div-float v6, v4, v1

    add-float/2addr v6, v3

    int-to-float v7, v0

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    .line 137
    invoke-static {v6, p1, v5, p0}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 138
    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-object v2
.end method

.method private static b(FI)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/view/x;->a(FIZ)F

    move-result p0

    return p0
.end method

.method public static b(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/a/j;
    .locals 5

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 9
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v0, v1

    .line 10
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    div-float/2addr v1, v3

    .line 12
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    const/high16 v0, 0x41000000    # 8.0f

    div-float/2addr v4, v0

    .line 13
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 14
    invoke-static {v4, v1, v0, p0}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 15
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-direct {p0, v1, v0, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p0

    .line 16
    :cond_0
    iget v1, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    div-float/2addr v1, v0

    .line 17
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v4, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v0, v4, :cond_1

    .line 18
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p0

    add-float/2addr p0, v1

    neg-float p0, p0

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p0

    add-float/2addr p0, v1

    :goto_0
    div-float/2addr p0, v3

    .line 20
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, p0, v2, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object v0
.end method

.method public static b(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/k;
    .locals 5

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p0

    .line 4
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    neg-float v3, v0

    div-float/2addr v3, v2

    neg-float v4, p0

    div-float/2addr v4, v2

    div-float/2addr v0, v2

    div-float/2addr p0, v2

    invoke-direct {v1, v3, v4, v0, p0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    return-object v1

    .line 6
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    neg-float v3, v0

    div-float/2addr v3, v2

    neg-float v4, p0

    div-float/2addr v0, v2

    div-float/2addr p0, v2

    invoke-direct {v1, v3, v4, v0, p0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    return-object v1
.end method

.method public static b(Lcom/smartisanos/launcher/view/V;I)[Lcom/smartisanos/smengine/a/j;
    .locals 6

    .line 21
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 23
    new-array p0, p1, [Lcom/smartisanos/smengine/a/j;

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/x;->nx()[Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 25
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    aget-object v3, v0, v1

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v4, v0, v1

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v5, v0, v1

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static bh()Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/x;->av:Lcom/smartisanos/smengine/a/j;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/x;->sx()V

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/x;->av:Lcom/smartisanos/smengine/a/j;

    return-object v0
.end method

.method public static c(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p0

    div-float/2addr p0, v1

    div-float/2addr v0, v1

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 5
    invoke-static {p0, v0, v1}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    return-object v1

    .line 6
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(Lcom/smartisanos/launcher/data/LayoutProperty;)I

    move-result v0

    .line 8
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->checkSinglePageMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "the layout property must single lp"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    .line 11
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v2

    div-float/2addr v2, v1

    .line 12
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->d(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p0

    div-float/2addr v0, v1

    add-float/2addr p0, v0

    .line 13
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 14
    invoke-static {v2, p0, v0}, Lcom/smartisanos/smengine/d/a;->a(FFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    return-object v0
.end method

.method public static c(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/a/j;
    .locals 7

    .line 27
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 29
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    .line 30
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 31
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 32
    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    div-float/2addr v1, v3

    .line 33
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 35
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->f(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iput p0, v2, Lcom/smartisanos/smengine/a/j;->x:F

    return-object v2

    .line 36
    :cond_0
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v4, v2

    div-float/2addr v4, v3

    .line 37
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v6, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v5, v6, :cond_1

    .line 38
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    div-float/2addr v2, v3

    add-float v4, v0, v2

    .line 39
    :cond_1
    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    div-float/2addr v0, v3

    .line 40
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    invoke-static {v4, v0, v1, p0}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    return-object v1
.end method

.method public static c(Lcom/smartisanos/launcher/view/V;I)Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 15
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/x;->px()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 17
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1, p0}, Lcom/smartisanos/smengine/a/j;-><init>(Lcom/smartisanos/smengine/a/j;)V

    return-object p1

    .line 18
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/x;->qx()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 19
    new-instance p1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p1, p0}, Lcom/smartisanos/smengine/a/j;-><init>(Lcom/smartisanos/smengine/a/j;)V

    return-object p1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->qa(I)F

    move-result v0

    .line 21
    invoke-static {v0, p1}, Lcom/smartisanos/launcher/view/x;->b(FI)F

    move-result p1

    .line 22
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    sub-float/2addr v0, p1

    div-float/2addr v0, v3

    goto :goto_0

    :cond_2
    sub-float/2addr v0, p1

    div-float/2addr v0, v3

    add-float/2addr v0, p1

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/view/x;->pa(I)F

    move-result p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    .line 24
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    invoke-static {v0, p1, v1, p0}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 26
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    iget p1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    return-object p0
.end method

.method public static ch()Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/x;->av:Lcom/smartisanos/smengine/a/j;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/x;->sx()V

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/x;->bv:Lcom/smartisanos/smengine/a/j;

    return-object v0
.end method

.method public static d(Lcom/smartisanos/launcher/data/LayoutProperty;)F
    .locals 1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 3
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_margin_top:F

    return p0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p0

    .line 5
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v0, v0

    sub-float/2addr v0, p0

    .line 6
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz p0, :cond_1

    .line 7
    sget p0, Lcom/smartisanos/launcher/data/Constants;->navigation_bar_height:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    :cond_1
    return v0
.end method

.method public static d(Lcom/smartisanos/launcher/view/V;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/smartisanos/launcher/view/x;->Xu:Lcom/smartisanos/launcher/view/V;

    return-void
.end method

.method public static d(Lcom/smartisanos/launcher/view/V;I)[Lcom/smartisanos/smengine/a/j;
    .locals 9

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 10
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 11
    new-array p0, p1, [Lcom/smartisanos/smengine/a/j;

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/x;->ox()[Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 13
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    aget-object v2, v0, v3

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    aget-object v4, v0, v3

    iget v4, v4, Lcom/smartisanos/smengine/a/j;->y:F

    aget-object v5, v0, v3

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v1, v2, v4, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    aput-object v1, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 14
    :cond_1
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v2

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v2, v4

    const/4 v4, 0x0

    .line 15
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v6, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v5, v6, :cond_2

    .line 16
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    sub-float v4, v0, v2

    :cond_2
    int-to-float v0, p1

    div-float/2addr v2, v0

    .line 17
    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 18
    new-array v5, p1, [Lcom/smartisanos/smengine/a/j;

    :goto_1
    if-ge v3, p1, :cond_3

    .line 19
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6}, Lcom/smartisanos/smengine/a/j;-><init>()V

    div-float v7, v2, v1

    add-float/2addr v7, v4

    int-to-float v8, v3

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 20
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v8

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    invoke-static {v7, v0, v6, v8}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 21
    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v5
.end method

.method public static e(Lcom/smartisanos/launcher/data/LayoutProperty;)F
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p0, p0

    return p0

    .line 3
    :cond_0
    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_width:F

    return p0
.end method

.method public static f(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    .line 4
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_margin_left:F

    mul-float/2addr p0, v1

    sub-float/2addr v2, p0

    iput v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    return-object v0
.end method

.method public static l(II)Lcom/smartisanos/smengine/a/j;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->s(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result p0

    .line 4
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 5
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode(I)I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->qa(I)F

    move-result p0

    .line 6
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/x;->b(FI)F

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    goto :goto_0

    :cond_2
    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    add-float/2addr p0, p1

    .line 7
    :goto_0
    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result p1

    iget v0, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 8
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v0, :cond_3

    .line 9
    sget v0, Lcom/smartisanos/launcher/data/Constants;->navigation_bar_height:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 10
    :cond_3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v1

    .line 12
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    return-object v0
.end method

.method private static nx()[Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/x;->dv:[Lcom/smartisanos/smengine/a/j;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/x;->rx()V

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/x;->dv:[Lcom/smartisanos/smengine/a/j;

    return-object v0
.end method

.method private static ox()[Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/x;->cv:[Lcom/smartisanos/smengine/a/j;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/x;->rx()V

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/x;->cv:[Lcom/smartisanos/smengine/a/j;

    return-object v0
.end method

.method public static pa(I)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    return p0
.end method

.method private static px()Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/x;->Zu:Lcom/smartisanos/smengine/a/j;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/x;->sx()V

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/x;->Zu:Lcom/smartisanos/smengine/a/j;

    return-object v0
.end method

.method public static qa(I)F
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p0, p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_width:F

    return p0
.end method

.method private static qx()Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/x;->Yu:Lcom/smartisanos/smengine/a/j;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/x;->sx()V

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/x;->Zu:Lcom/smartisanos/smengine/a/j;

    return-object v0
.end method

.method public static ra(I)V
    .locals 13

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/x;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/smartisanos/launcher/view/x;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->c(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 5
    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    .line 6
    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v3

    .line 7
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 8
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_cell_icon_size:F

    div-float v5, v3, v5

    sub-float/2addr v2, v5

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_delete_btn_margin_left:F

    sub-float/2addr v2, v5

    sub-float v5, v2, v3

    .line 9
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_create_folder_margin_left:F

    sub-float/2addr v5, v0

    sub-float v6, v5, v3

    sub-float/2addr v6, v0

    sub-float v3, v6, v3

    sub-float/2addr v3, v0

    const/4 v0, 0x0

    const/4 v7, 0x1

    if-ne p0, v7, :cond_0

    new-array p0, v7, [Lcom/smartisanos/smengine/a/j;

    .line 10
    sput-object p0, Lcom/smartisanos/launcher/view/x;->ev:[Lcom/smartisanos/smengine/a/j;

    .line 11
    sget-object p0, Lcom/smartisanos/launcher/view/x;->ev:[Lcom/smartisanos/smengine/a/j;

    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    aput-object v3, p0, v0

    .line 12
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, p0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget-object p0, Lcom/smartisanos/launcher/view/x;->ev:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, v0

    invoke-static {v2, v4, p0, v1}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    goto/16 :goto_3

    :cond_0
    const/4 v8, 0x2

    if-ne p0, v8, :cond_2

    new-array p0, v8, [Lcom/smartisanos/smengine/a/j;

    .line 13
    sput-object p0, Lcom/smartisanos/launcher/view/x;->fv:[Lcom/smartisanos/smengine/a/j;

    move p0, v0

    :goto_0
    if-ge p0, v8, :cond_1

    .line 14
    sget-object v3, Lcom/smartisanos/launcher/view/x;->fv:[Lcom/smartisanos/smengine/a/j;

    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6}, Lcom/smartisanos/smengine/a/j;-><init>()V

    aput-object v6, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 15
    :cond_1
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, p0

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v5, v3

    sget-object p0, Lcom/smartisanos/launcher/view/x;->fv:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, v0

    invoke-static {v5, v4, p0, v1}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 16
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, p0

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sget-object p0, Lcom/smartisanos/launcher/view/x;->fv:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, v7

    invoke-static {v2, v4, p0, v1}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    goto/16 :goto_3

    :cond_2
    const/4 v9, 0x3

    if-ne p0, v9, :cond_6

    new-array p0, v9, [Lcom/smartisanos/smengine/a/j;

    .line 17
    sput-object p0, Lcom/smartisanos/launcher/view/x;->gv:[Lcom/smartisanos/smengine/a/j;

    move p0, v0

    :goto_1
    if-ge p0, v9, :cond_3

    .line 18
    sget-object v3, Lcom/smartisanos/launcher/view/x;->gv:[Lcom/smartisanos/smengine/a/j;

    new-instance v10, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v10}, Lcom/smartisanos/smengine/a/j;-><init>()V

    aput-object v10, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 19
    :cond_3
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, p0

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v6, v3

    sget-object p0, Lcom/smartisanos/launcher/view/x;->gv:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, v0

    invoke-static {v6, v4, p0, v1}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 20
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, p0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v5, v3

    sget-object p0, Lcom/smartisanos/launcher/view/x;->gv:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, v7

    invoke-static {v5, v4, p0, v1}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 21
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, p0

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    sget-object p0, Lcom/smartisanos/launcher/view/x;->gv:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, v8

    invoke-static {v2, v4, p0, v1}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 22
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/smartisanos/launcher/view/x;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDockCellLoc 3X4 dockCell3_0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/smartisanos/launcher/view/x;->gv:[Lcom/smartisanos/smengine/a/j;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 23
    :cond_4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/smartisanos/launcher/view/x;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDockCellLoc 3X4 dockCell3_1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smartisanos/launcher/view/x;->gv:[Lcom/smartisanos/smengine/a/j;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 24
    :cond_5
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/smartisanos/launcher/view/x;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDockCellLoc 3X4 dockCell3_2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smartisanos/launcher/view/x;->gv:[Lcom/smartisanos/smengine/a/j;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const/4 v10, 0x4

    if-ne p0, v10, :cond_b

    new-array p0, v10, [Lcom/smartisanos/smengine/a/j;

    .line 25
    sput-object p0, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    move p0, v0

    :goto_2
    if-ge p0, v10, :cond_7

    .line 26
    sget-object v11, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12}, Lcom/smartisanos/smengine/a/j;-><init>()V

    aput-object v12, v11, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 27
    :cond_7
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, p0

    const/high16 v11, 0x40a00000    # 5.0f

    div-float/2addr v3, v11

    sget-object p0, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, v0

    invoke-static {v3, v4, p0, v1}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 28
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, p0

    const/high16 v11, 0x40a00000    # 5.0f

    div-float/2addr v6, v11

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v6, v11

    sget-object p0, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, v7

    invoke-static {v6, v4, p0, v1}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 29
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, p0

    const/high16 v11, 0x40a00000    # 5.0f

    div-float/2addr v5, v11

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v5, v11

    sget-object p0, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, v8

    invoke-static {v5, v4, p0, v1}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 30
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, p0

    const/high16 v11, 0x40a00000    # 5.0f

    div-float/2addr v2, v11

    const/high16 v11, 0x40800000    # 4.0f

    mul-float/2addr v2, v11

    sget-object p0, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, v9

    invoke-static {v2, v4, p0, v1}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 31
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/smartisanos/launcher/view/x;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDockCellLoc 4X5 dockCell4_0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 32
    :cond_8
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/smartisanos/launcher/view/x;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDockCellLoc 4X5 dockCell4_1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 33
    :cond_9
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_a

    sget-object p0, Lcom/smartisanos/launcher/view/x;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDockCellLoc 4X5 dockCell4_2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 34
    :cond_a
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/smartisanos/launcher/view/x;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDockCellLoc 4X5 dockCell4_3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smartisanos/launcher/view/x;->hv:[Lcom/smartisanos/smengine/a/j;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private static rx()V
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/smartisanos/smengine/a/j;

    .line 1
    sput-object v1, Lcom/smartisanos/launcher/view/x;->cv:[Lcom/smartisanos/smengine/a/j;

    new-array v1, v0, [Lcom/smartisanos/smengine/a/j;

    .line 2
    sput-object v1, Lcom/smartisanos/launcher/view/x;->dv:[Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    sget-object v3, Lcom/smartisanos/launcher/view/x;->cv:[Lcom/smartisanos/smengine/a/j;

    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 4
    sget-object v3, Lcom/smartisanos/launcher/view/x;->dv:[Lcom/smartisanos/smengine/a/j;

    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/view/x;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v0

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 7
    sget-object v2, Lcom/smartisanos/launcher/view/x;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/smartisanos/launcher/view/x;->c(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 9
    invoke-static {v2}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v4

    .line 10
    invoke-static {v2}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v4, v6

    sub-float v4, v7, v4

    .line 11
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    const/high16 v5, 0x41000000    # 8.0f

    div-float/2addr v3, v5

    move v5, v3

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    move v6, v3

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr v6, v0

    move v0, v3

    const/high16 v8, 0x40e00000    # 7.0f

    mul-float/2addr v0, v8

    .line 12
    sget-object v8, Lcom/smartisanos/launcher/view/x;->cv:[Lcom/smartisanos/smengine/a/j;

    aget-object v8, v8, v1

    invoke-static {v3, v7, v8, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 13
    sget-object v8, Lcom/smartisanos/launcher/view/x;->cv:[Lcom/smartisanos/smengine/a/j;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v5, v7, v8, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 14
    sget-object v8, Lcom/smartisanos/launcher/view/x;->cv:[Lcom/smartisanos/smengine/a/j;

    const/4 v10, 0x2

    aget-object v8, v8, v10

    invoke-static {v6, v7, v8, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 15
    sget-object v8, Lcom/smartisanos/launcher/view/x;->cv:[Lcom/smartisanos/smengine/a/j;

    const/4 v11, 0x3

    aget-object v8, v8, v11

    invoke-static {v0, v7, v8, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 16
    sget-object v7, Lcom/smartisanos/launcher/view/x;->dv:[Lcom/smartisanos/smengine/a/j;

    aget-object v1, v7, v1

    invoke-static {v3, v4, v1, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 17
    sget-object v1, Lcom/smartisanos/launcher/view/x;->dv:[Lcom/smartisanos/smengine/a/j;

    aget-object v1, v1, v9

    invoke-static {v5, v4, v1, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 18
    sget-object v1, Lcom/smartisanos/launcher/view/x;->dv:[Lcom/smartisanos/smengine/a/j;

    aget-object v1, v1, v10

    invoke-static {v6, v4, v1, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 19
    sget-object v1, Lcom/smartisanos/launcher/view/x;->dv:[Lcom/smartisanos/smengine/a/j;

    aget-object v1, v1, v11

    invoke-static {v0, v4, v1, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    return-void
.end method

.method private static s(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/a/j;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 4
    invoke-static {p0}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v3

    div-float/2addr v3, v2

    .line 5
    invoke-static {v1, v3, v0, p0}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    return-object v0
.end method

.method private static sx()V
    .locals 17

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/view/x;->Zu:Lcom/smartisanos/smengine/a/j;

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/view/x;->av:Lcom/smartisanos/smengine/a/j;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/view/x;->bv:Lcom/smartisanos/smengine/a/j;

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/view/x;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->getMultiPageMode()I

    move-result v0

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/smartisanos/launcher/view/x;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/smartisanos/launcher/view/x;->c(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 8
    invoke-static {v2}, Lcom/smartisanos/launcher/view/x;->a(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v4

    .line 9
    invoke-static {v2}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v5

    .line 10
    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->e(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 11
    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageWorldCenterPointsInWindow:[[Lcom/smartisanos/smengine/a/j;

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result v9

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/smartisanos/smengine/a/j;->y:F

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result v9

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    div-float/2addr v9, v7

    add-float/2addr v8, v9

    sub-float/2addr v3, v8

    iget v8, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float v9, v8, v7

    add-float/2addr v3, v9

    add-float v9, v3, v8

    add-float v10, v9, v8

    add-float/2addr v8, v10

    .line 14
    move/from16 v16, v8

    sget v11, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v11, v11

    const/high16 v12, 0x41000000    # 8.0f

    div-float/2addr v11, v12

    .line 15
    sget-object v8, Lcom/smartisanos/launcher/view/x;->Zu:Lcom/smartisanos/smengine/a/j;

    invoke-static {v11, v4, v8, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 16
    move v13, v11

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float/2addr v13, v14

    sget-object v8, Lcom/smartisanos/launcher/view/x;->av:Lcom/smartisanos/smengine/a/j;

    invoke-static {v13, v4, v8, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 17
    const/high16 v14, 0x40e00000    # 7.0f

    mul-float/2addr v11, v14

    sget-object v8, Lcom/smartisanos/launcher/view/x;->bv:Lcom/smartisanos/smengine/a/j;

    invoke-static {v11, v4, v8, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 23
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    sput-object v4, Lcom/smartisanos/launcher/view/x;->Yu:Lcom/smartisanos/smengine/a/j;

    .line 24
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v4}, Lcom/smartisanos/smengine/a/j;-><init>()V

    sput-object v4, Lcom/smartisanos/launcher/view/x;->_u:Lcom/smartisanos/smengine/a/j;

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_4_3X4_MODE()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 26
    iget v0, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v0, v7

    add-float/2addr v3, v0

    sget-object v0, Lcom/smartisanos/launcher/view/x;->Yu:Lcom/smartisanos/smengine/a/j;

    invoke-static {v6, v3, v0, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 27
    iget v0, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    div-float/2addr v0, v7

    add-float/2addr v10, v0

    sget-object v0, Lcom/smartisanos/launcher/view/x;->_u:Lcom/smartisanos/smengine/a/j;

    invoke-static {v6, v10, v0, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_4_4X5_MODE()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 29
    sget-object v0, Lcom/smartisanos/launcher/view/x;->Yu:Lcom/smartisanos/smengine/a/j;

    invoke-static {v6, v9, v0, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 30
    sget-object v0, Lcom/smartisanos/launcher/view/x;->_u:Lcom/smartisanos/smengine/a/j;

    move/from16 v10, v16

    invoke-static {v6, v10, v0, v2}, Lcom/smartisanos/launcher/view/x;->a(FFLcom/smartisanos/smengine/a/j;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/smartisanos/launcher/view/x;->Yu:Lcom/smartisanos/smengine/a/j;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->f(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iput v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    .line 32
    sget-object v0, Lcom/smartisanos/launcher/view/x;->_u:Lcom/smartisanos/smengine/a/j;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->f(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iput v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    return-void
.end method
