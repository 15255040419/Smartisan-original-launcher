.class public Lsmartisan/widget/calendar/MonthWeekEventsView;
.super Landroid/view/View;
.source "MonthWeekEventsView.java"


# static fields
.field public static V:I = 0x0

.field public static W:I = 0x0

.field public static a0:I = 0x2

.field public static b0:I = 0x18

.field public static c0:Z = false

.field public static d0:I = 0x20

.field public static e0:I = 0x0

.field public static f0:F = 0.0f

.field public static g0:F = 4.0f

.field public static h0:I = 0x3

.field public static i0:I = 0x2

.field public static j0:I = 0xa

.field public static k0:I = 0xa


# instance fields
.field public A:I

.field public B:Z

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:Ljava/lang/String;

.field public K:Landroid/content/Context;

.field public L:Landroid/content/res/Resources;

.field public M:Z

.field public N:F

.field public O:Li/t/e/b;

.field public P:I

.field public Q:I

.field public R:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

.field public S:I

.field public T:F

.field public U:Z

.field public a:F

.field public b:Z

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:I

.field public j:Z

.field public k:I

.field public l:Landroid/text/format/Time;

.field public m:I

.field public n:Landroid/graphics/Rect;

.field public o:Landroid/graphics/Paint;

.field public p:[Ljava/lang/String;

.field public q:[Ljava/lang/String;

.field public r:Z

.field public s:[Z

.field public t:[Z

.field public u:[Z

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->b:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->c:I

    .line 4
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->k:I

    .line 5
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->l:Landroid/text/format/Time;

    .line 6
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->m:I

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    .line 8
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->o:Landroid/graphics/Paint;

    .line 9
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Z

    .line 10
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->v:I

    .line 11
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->w:I

    .line 12
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->x:I

    .line 13
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->y:I

    .line 14
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->d0:I

    iput v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->A:I

    .line 15
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->B:Z

    .line 16
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->C:I

    .line 17
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->D:I

    .line 18
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->E:I

    const/4 v2, 0x7

    .line 19
    iput v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->F:I

    .line 20
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->F:I

    iput v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->G:I

    .line 21
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->H:I

    .line 22
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->I:I

    .line 23
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->J:Ljava/lang/String;

    const/4 v2, 0x0

    .line 24
    iput v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->N:F

    .line 25
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->S:I

    .line 26
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->U:Z

    .line 27
    new-instance v0, Lsmartisan/widget/calendar/MonthWeekEventsView$b;

    invoke-direct {v0, p0}, Lsmartisan/widget/calendar/MonthWeekEventsView$b;-><init>(Lsmartisan/widget/calendar/MonthWeekEventsView;)V

    .line 28
    new-instance v0, Lsmartisan/widget/calendar/MonthWeekEventsView$c;

    invoke-direct {v0, p0}, Lsmartisan/widget/calendar/MonthWeekEventsView$c;-><init>(Lsmartisan/widget/calendar/MonthWeekEventsView;)V

    .line 29
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->K:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->L:Landroid/content/res/Resources;

    .line 31
    sget v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->f0:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->f0:F

    .line 33
    sget v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->f0:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 34
    sget v1, Lsmartisan/widget/calendar/MonthWeekEventsView;->d0:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->d0:I

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->monthbyweek_v:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->g0:F

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->monthbyweek_h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->h0:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->monthbyweek_border_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sput p1, Lsmartisan/widget/calendar/MonthWeekEventsView;->i0:I

    .line 38
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a()V

    .line 39
    iput-object p2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->R:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

    .line 40
    new-instance p1, Lsmartisan/widget/calendar/MonthWeekEventsView$a;

    invoke-direct {p1, p0}, Lsmartisan/widget/calendar/MonthWeekEventsView$a;-><init>(Lsmartisan/widget/calendar/MonthWeekEventsView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/calendar/MonthWeekEventsView;F)F
    .locals 0

    .line 2
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->T:F

    return p1
.end method

.method public static synthetic a(Lsmartisan/widget/calendar/MonthWeekEventsView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->K:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lsmartisan/widget/calendar/MonthWeekEventsView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->c()V

    return-void
.end method

.method private setDrawerFocusState(Li/t/e/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->M:Z

    invoke-virtual {p1, v0}, Li/t/e/a;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 3

    .line 113
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->m:I

    int-to-float v1, v0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 114
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->z:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v1

    .line 115
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->a:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a(I)I
    .locals 1

    int-to-float p1, p1

    .line 108
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->a:F

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 109
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 3

    .line 10
    sget-boolean v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->c0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->L:Landroid/content/res/Resources;

    sget v2, Lsmartisan/widget/R$dimen;->monthweek_grid_bg_interval_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->L:Landroid/content/res/Resources;

    sget v2, Lsmartisan/widget/R$dimen;->text_size_month_number:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->e0:I

    .line 13
    sget v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->f0:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 14
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->j0:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->j0:I

    .line 15
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->k0:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->k0:I

    .line 16
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->b0:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->b0:I

    .line 17
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->W:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->W:I

    .line 18
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->V:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->V:I

    .line 19
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->a0:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->a0:I

    .line 20
    :cond_0
    sput-boolean v1, Lsmartisan/widget/calendar/MonthWeekEventsView;->c0:Z

    .line 21
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->L:Landroid/content/res/Resources;

    sget v2, Lsmartisan/widget/R$dimen;->monthweek_item_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->a:F

    .line 22
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->o:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 23
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->o:Landroid/graphics/Paint;

    sget v1, Lsmartisan/widget/calendar/MonthWeekEventsView;->e0:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 25
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    sget v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->V:I

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->m:I

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->L:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$color;->today_highlight_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->i:I

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->L:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_month_grid_body_for_drop:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->d:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->L:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_month_view_grey_day_item:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->e:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->L:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_calendar_month_view_today_focused_2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->f:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->L:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_calendar_month_view_day_unfocused:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->g:Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->L:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_calendar_month_view_day_focused_2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->h:Landroid/graphics/drawable/Drawable;

    .line 9
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->L:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_today_blue_week_holo_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    .line 110
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->b(Landroid/graphics/Canvas;)V

    .line 111
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->M:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->c(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "week"

    .line 28
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    iput-object p2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->J:Ljava/lang/String;

    const-string v1, "is_single_week"

    .line 31
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iput-boolean v4, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Z

    goto :goto_0

    .line 33
    :cond_0
    iput-boolean v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Z

    .line 34
    :goto_0
    iget-boolean v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Z

    if-eqz v1, :cond_1

    .line 35
    sget v1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->y:I

    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->A:I

    goto :goto_1

    .line 36
    :cond_1
    sget v1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->x:I

    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->A:I

    :goto_1
    const-string v1, "selected_day"

    .line 37
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->C:I

    .line 39
    :cond_2
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->C:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->B:Z

    const-string v1, "num_days"

    .line 40
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 41
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->F:I

    .line 42
    :cond_4
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->F:I

    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->G:I

    .line 43
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->G:I

    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:[Ljava/lang/String;

    .line 44
    new-array v1, v1, [Z

    iput-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->s:[Z

    .line 45
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->y:I

    .line 46
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->y:I

    invoke-static {v0}, Li/r/a;->a(I)I

    move-result v0

    .line 47
    new-instance v1, Landroid/text/format/Time;

    const-string v5, "Asia/Shanghai"

    invoke-direct {v1, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    const-string v0, "week_start"

    .line 49
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 50
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->E:I

    :cond_5
    const-string v0, "max_julianday"

    .line 51
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 52
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->P:I

    goto :goto_3

    :cond_6
    const v0, 0x7fffffff

    .line 53
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->P:I

    :goto_3
    const-string v0, "min_julianday"

    .line 54
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->Q:I

    goto :goto_4

    .line 56
    :cond_7
    iput v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->Q:I

    .line 57
    :goto_4
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->E:I

    invoke-static {v1, v0}, Li/r/a;->a(Landroid/text/format/Time;I)V

    .line 58
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iget-wide v7, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->v:I

    .line 59
    iget v0, v1, Landroid/text/format/Time;->month:I

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->w:I

    .line 60
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 62
    iput-boolean v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->b:Z

    const-string v5, "focus_month"

    .line 63
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_8
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->t:[Z

    .line 65
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->u:[Z

    move p1, v3

    .line 66
    :goto_5
    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->G:I

    if-ge p1, v5, :cond_14

    .line 67
    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    if-ne v5, v4, :cond_9

    .line 68
    iget v5, v1, Landroid/text/format/Time;->month:I

    iput v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->w:I

    .line 69
    :cond_9
    iget v5, v1, Landroid/text/format/Time;->month:I

    if-ne v5, v2, :cond_a

    .line 70
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->s:[Z

    aput-boolean v4, v5, p1

    goto :goto_6

    .line 71
    :cond_a
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->s:[Z

    aput-boolean v3, v5, p1

    :goto_6
    if-gez v2, :cond_b

    .line 72
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->s:[Z

    aput-boolean v4, v5, p1

    .line 73
    :cond_b
    iget v5, v1, Landroid/text/format/Time;->year:I

    iget v6, v0, Landroid/text/format/Time;->year:I

    if-ne v5, v6, :cond_c

    iget v5, v1, Landroid/text/format/Time;->month:I

    iget v6, v0, Landroid/text/format/Time;->month:I

    if-ne v5, v6, :cond_c

    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    if-ne v5, v6, :cond_c

    .line 74
    iput-boolean v4, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->b:Z

    .line 75
    :cond_c
    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->v:I

    add-int/2addr v5, p1

    .line 76
    iget v6, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->P:I

    if-gt v5, v6, :cond_d

    iget v6, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->Q:I

    if-ge v5, v6, :cond_f

    .line 77
    :cond_d
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->u:[Z

    if-nez v5, :cond_e

    .line 78
    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->G:I

    new-array v5, v5, [Z

    iput-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->u:[Z

    .line 79
    :cond_e
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->u:[Z

    aput-boolean v4, v5, p1

    .line 80
    :cond_f
    iget v5, v1, Landroid/text/format/Time;->year:I

    const/16 v6, 0x7b2

    if-lt v5, v6, :cond_10

    const/16 v6, 0x7f5

    if-le v5, v6, :cond_12

    .line 81
    :cond_10
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->s:[Z

    aput-boolean v3, v5, p1

    .line 82
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->t:[Z

    if-nez v5, :cond_11

    .line 83
    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->G:I

    new-array v5, v5, [Z

    iput-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->t:[Z

    .line 84
    :cond_11
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->t:[Z

    aput-boolean v4, v5, p1

    .line 85
    :cond_12
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:[Ljava/lang/String;

    iget v6, v1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 86
    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v5, v4

    iput v5, v1, Landroid/text/format/Time;->monthDay:I

    .line 87
    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    const/16 v6, 0x1c

    if-le v5, v6, :cond_13

    .line 88
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_5

    .line 89
    :cond_14
    iget p1, v1, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v4, :cond_15

    sub-int/2addr p1, v4

    .line 90
    iput p1, v1, Landroid/text/format/Time;->monthDay:I

    .line 91
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 92
    :cond_15
    iget p1, v1, Landroid/text/format/Time;->month:I

    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->x:I

    .line 93
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->d()V

    .line 94
    invoke-virtual {p0, p2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(Ljava/lang/String;)Z

    .line 95
    iget p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->F:I

    add-int/2addr p1, v4

    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->G:I

    .line 96
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->c()V

    return-void

    .line 97
    :cond_16
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "You must specify the week number for this view"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    .line 98
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->l:Landroid/text/format/Time;

    iput-object p1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 99
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 100
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->l:Landroid/text/format/Time;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 101
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->l:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->l:Landroid/text/format/Time;

    iget-wide v4, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p1

    .line 102
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->v:I

    if-lt p1, v2, :cond_0

    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->F:I

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_0

    .line 103
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->b:Z

    sub-int/2addr p1, v2

    .line 104
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->c:I

    goto :goto_0

    .line 105
    :cond_0
    iput-boolean v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->b:Z

    const/4 p1, -0x1

    .line 106
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->c:I

    .line 107
    :goto_0
    iget-boolean p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->b:Z

    return p1
.end method

.method public b(F)Landroid/text/format/Time;
    .locals 3

    .line 13
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(F)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_0
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->v:I

    add-int/2addr v0, p1

    .line 15
    new-instance p1, Landroid/text/format/Time;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->J:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 16
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->y:I

    if-nez v1, :cond_1

    const v1, 0x253d8c    # 3.419992E-39f

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x7b2

    const/4 v2, 0x1

    .line 17
    invoke-virtual {p1, v2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 18
    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    return-object p1

    .line 19
    :cond_1
    invoke-virtual {p1, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    const/4 v0, 0x4

    .line 20
    iput v0, p1, Landroid/text/format/Time;->hour:I

    return-object p1
.end method

.method public final b()V
    .locals 1

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->O:Li/t/e/b;

    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setDrawerFocusState(Li/t/e/a;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 5
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->A:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 7
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 8
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->z:I

    sget v3, Lsmartisan/widget/calendar/MonthWeekEventsView;->i0:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 9
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 12
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public b(I)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->u:[Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    aget-boolean p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .locals 3

    .line 34
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->U:Z

    if-eqz v0, :cond_0

    .line 35
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->A:I

    sget v1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->y:I

    sget v2, Lsmartisan/widget/calendar/MonthByWeekAdapter;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->N:F

    goto :goto_0

    .line 36
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->N:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->N:F

    :goto_0
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 6

    .line 3
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->C:I

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->E:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 4
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 5
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->g0:F

    neg-float v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 6
    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->A:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    .line 7
    :goto_0
    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->F:I

    if-ge v2, v3, :cond_5

    .line 8
    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->S:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->s:[Z

    if-eqz v3, :cond_3

    aget-boolean v3, v3, v2

    if-nez v3, :cond_3

    .line 10
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 11
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 12
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->e:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {p0, v2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->c(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 14
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->e:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->N:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 15
    :cond_2
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    :cond_3
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->u:[Z

    if-eqz v3, :cond_4

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_4

    .line 17
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 18
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 19
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->e:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 20
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_5
    iget-boolean v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->b:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->c:I

    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->S:I

    if-eq v2, v3, :cond_7

    .line 22
    invoke-virtual {p0, v2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(I)I

    move-result v2

    sget v3, Lsmartisan/widget/calendar/MonthWeekEventsView;->h0:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 23
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(I)I

    move-result v2

    sget v3, Lsmartisan/widget/calendar/MonthWeekEventsView;->h0:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 24
    iget-boolean v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->B:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->c:I

    if-ne v0, v2, :cond_6

    .line 25
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 26
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 27
    :cond_6
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 28
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    :cond_7
    :goto_2
    iget-boolean v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->B:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->S:I

    if-eq v0, v2, :cond_8

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->c:I

    if-eq v0, v2, :cond_8

    .line 30
    invoke-virtual {p0, v0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(I)I

    move-result v2

    sget v3, Lsmartisan/widget/calendar/MonthWeekEventsView;->h0:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(I)I

    move-result v0

    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->h0:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 32
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 33
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method public c(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->t:[Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->s:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 2
    aget-boolean p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 6

    .line 10
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->B:Z

    if-eqz v0, :cond_1

    .line 11
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->C:I

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->E:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 12
    :cond_0
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->z:I

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->m:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    .line 13
    sget v3, Lsmartisan/widget/calendar/MonthWeekEventsView;->b0:I

    sub-int/2addr v1, v3

    mul-int v4, v0, v1

    .line 14
    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->F:I

    div-int/2addr v4, v5

    add-int/2addr v4, v2

    iput v4, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->H:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    .line 15
    div-int/2addr v0, v5

    add-int/2addr v0, v2

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->I:I

    .line 16
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->H:I

    add-int/2addr v0, v3

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->H:I

    .line 17
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->I:I

    add-int/2addr v0, v3

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->I:I

    :cond_1
    return-void
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    sget v1, Lsmartisan/widget/calendar/MonthWeekEventsView;->W:I

    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->a0:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->A:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->o:Landroid/graphics/Paint;

    sget v1, Lsmartisan/widget/calendar/MonthWeekEventsView;->a0:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->c:I

    invoke-virtual {p0, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(I)I

    move-result v1

    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->a0:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(I)I

    move-result v1

    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->a0:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 7
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->o:Landroid/graphics/Paint;

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->i:I

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->k:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->n:Landroid/graphics/Rect;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 9
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->o:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->C:I

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->E:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->getDayCellViewDrawer()Li/t/e/a;

    move-result-object v9

    .line 3
    iget-boolean v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->M:Z

    invoke-virtual {v9, v1}, Li/t/e/a;->a(Z)V

    const/4 v1, 0x0

    move v10, v1

    .line 4
    :goto_0
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->F:I

    if-ge v10, v1, :cond_9

    .line 5
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:[Ljava/lang/String;

    if-eqz v1, :cond_8

    aget-object v1, v1, v10

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v10, 0x1

    .line 6
    invoke-virtual {p0, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(I)I

    move-result v2

    .line 7
    sget v1, Li/t/e/a;->a:I

    .line 8
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->s:[Z

    aget-boolean v3, v3, v10

    if-nez v3, :cond_2

    .line 9
    sget v3, Li/t/e/a;->d:I

    or-int/2addr v1, v3

    .line 10
    :cond_2
    invoke-virtual {p0, v10}, Lsmartisan/widget/calendar/MonthWeekEventsView;->c(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    sget v3, Li/t/e/a;->e:I

    or-int/2addr v1, v3

    .line 12
    :cond_3
    iget-boolean v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->b:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->c:I

    if-ne v3, v10, :cond_4

    .line 13
    sget v3, Li/t/e/a;->c:I

    or-int/2addr v1, v3

    .line 14
    :cond_4
    iget-boolean v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->B:Z

    if-eqz v3, :cond_5

    if-ne v0, v10, :cond_5

    .line 15
    sget v3, Li/t/e/a;->b:I

    or-int/2addr v1, v3

    .line 16
    :cond_5
    invoke-virtual {p0, v10}, Lsmartisan/widget/calendar/MonthWeekEventsView;->b(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 17
    sget v3, Li/t/e/a;->f:I

    or-int/2addr v1, v3

    :cond_6
    move v6, v1

    .line 18
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->q:[Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    goto :goto_1

    :cond_7
    aget-object v1, v1, v10

    :goto_1
    move-object v4, v1

    .line 19
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:[Ljava/lang/String;

    aget-object v3, v1, v10

    const/4 v5, 0x2

    iget v8, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->N:F

    move-object v1, v9

    move-object v7, p1

    invoke-virtual/range {v1 .. v8}, Li/t/e/a;->a(ILjava/lang/String;Ljava/lang/String;IILandroid/graphics/Canvas;F)V

    :cond_8
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public getDayCellViewDrawer()Li/t/e/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->O:Li/t/e/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Li/t/e/b;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->K:Landroid/content/Context;

    iget-boolean v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->M:Z

    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->a:F

    invoke-direct {v0, v1, v2, v3}, Li/t/e/b;-><init>(Landroid/content/Context;ZF)V

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->O:Li/t/e/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->O:Li/t/e/b;

    return-object v0
.end method

.method public getFirstJulianDay()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->v:I

    return v0
.end method

.method public getFirstMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->w:I

    return v0
.end method

.method public getLastMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->x:I

    return v0
.end method

.method public getmUndrawBackgoundIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->S:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->e(Landroid/graphics/Canvas;)V

    .line 3
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->M:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->j:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->d(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->A:I

    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sget p2, Lsmartisan/widget/calendar/MonthWeekEventsView;->i0:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40e00000    # 7.0f

    div-float/2addr p1, p2

    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->a:F

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->z:I

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->d()V

    return-void
.end method

.method public setFakeSelectedDay(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->D:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->D:I

    :cond_0
    return-void
.end method

.method public setHasEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setHasFocus(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->M:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->s:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    .line 3
    aput-boolean v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->b()V

    return-void
.end method

.method public setOriginalView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->C:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->C:I

    :cond_0
    return-void
.end method

.method public setmUndrawBackgoundIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->S:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
