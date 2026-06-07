.class public Lsmartisan/widget/calendar/MonthByWeekAdapter;
.super Ljava/lang/Object;
.source "MonthByWeekAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;
    }
.end annotation


# static fields
.field public static t:I = 0x0

.field public static u:I = 0x7

.field public static v:I = 0x7

.field public static w:F

.field public static x:I

.field public static y:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/content/Context;

.field public g:Landroid/text/format/Time;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsmartisan/widget/calendar/MonthWeekEventsView;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

.field public r:I

.field public s:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->b:Ljava/util/List;

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->d:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->e:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->i:I

    .line 6
    sget v2, Lsmartisan/widget/calendar/MonthByWeekAdapter;->u:I

    iput v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->k:I

    .line 7
    sget v2, Lsmartisan/widget/calendar/MonthByWeekAdapter;->t:I

    iput v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->l:I

    .line 8
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->m:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->o:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->p:Ljava/util/ArrayList;

    .line 11
    iput v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->r:I

    .line 12
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->f:Landroid/content/Context;

    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->j:I

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 16
    sget v0, Lsmartisan/widget/R$dimen;->monthweek_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->x:I

    .line 17
    sget v0, Lsmartisan/widget/R$dimen;->monthweek_item_single_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->y:I

    .line 18
    sget v0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->w:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->w:F

    .line 20
    sget p1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->w:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 21
    sget v0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->v:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    sput p1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->v:I

    .line 22
    :cond_0
    iput-object p3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->q:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

    .line 23
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->e()V

    .line 24
    invoke-virtual {p0, p2}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 89
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->d()I

    move-result v0

    return v0
.end method

.method public a(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v1

    :goto_1
    if-le p2, p1, :cond_2

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 62
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object v0
.end method

.method public a([Lsmartisan/widget/calendar/MonthWeekEventsView;I)Lsmartisan/widget/calendar/MonthWeekEventsView;
    .locals 4

    if-eqz p1, :cond_1

    .line 24
    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget-object v0, p1, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    aget-object p1, p1, p2

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    new-instance p1, Lsmartisan/widget/calendar/MonthWeekEventsView;

    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->f:Landroid/content/Context;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->q:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

    invoke-direct {p1, v0, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;-><init>(Landroid/content/Context;Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;)V

    .line 29
    :cond_2
    :goto_1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 32
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->h:I

    iget v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->r:I

    add-int/2addr v3, p2

    if-ne v1, v3, :cond_3

    .line 35
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g:Landroid/text/format/Time;

    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    .line 36
    :cond_3
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->l:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "focus_month"

    .line 38
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "selected_day"

    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->j:I

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "week_start"

    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->k:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "num_days"

    .line 46
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->r:I

    add-int/2addr v1, p2

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "week"

    .line 49
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->i:I

    if-ne p2, v1, :cond_4

    iget-boolean p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->m:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "is_single_week"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_4
    iget p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "max_julianday"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->e:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "min_julianday"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g:Landroid/text/format/Time;

    iget-object p2, p2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->a(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 55
    iget-boolean p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->n:Z

    if-eqz p2, :cond_5

    .line 56
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a(Lsmartisan/widget/calendar/MonthWeekEventsView;)V

    .line 57
    :cond_5
    iget-boolean p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->n:Z

    invoke-virtual {p1, p2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setHasFocus(Z)V

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->r:I

    if-ne v0, p1, :cond_0

    return-void

    .line 87
    :cond_0
    iput p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->r:I

    return-void
.end method

.method public a(Landroid/text/format/Time;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g:Landroid/text/format/Time;

    if-ne v0, p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->b(Landroid/text/format/Time;)V

    return-void
.end method

.method public a(Landroid/text/format/Time;Z)V
    .locals 2

    .line 16
    iput-boolean p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->n:Z

    .line 17
    iget-object p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g:Landroid/text/format/Time;

    invoke-virtual {p2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 18
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g:Landroid/text/format/Time;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide p1

    .line 19
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->f:Landroid/content/Context;

    invoke-static {v0}, Li/r/a;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->j:I

    .line 20
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g:Landroid/text/format/Time;

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    .line 21
    invoke-static {p1, p2, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p1

    iget p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->j:I

    .line 22
    invoke-static {p1, p2}, Li/r/a;->a(II)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->h:I

    .line 23
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g()V

    return-void
.end method

.method public a(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->s:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "MonthByWeek"

    const-string v0, "WeekParameters are null! Cannot update adapter."

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "focus_month"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->l:I

    .line 4
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "num_weeks"

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_2
    const-string v0, "single_week"

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->m:Z

    :cond_4
    const-string v0, "week_start"

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->j:I

    :cond_5
    const-string v0, "selected_day"

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 12
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->j:I

    invoke-static {v0, v1}, Li/r/a;->a(II)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->h:I

    :cond_6
    const-string v0, "days_per_week"

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->k:I

    .line 15
    :cond_7
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->h()V

    return-void
.end method

.method public final a(Lsmartisan/widget/calendar/MonthWeekEventsView;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p1, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setHasEvents(Ljava/util/List;)V

    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->getFirstJulianDay()I

    move-result v0

    .line 79
    iget v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->c:I

    sub-int/2addr v0, v2

    .line 80
    iget v2, p1, Lsmartisan/widget/calendar/MonthWeekEventsView;->F:I

    add-int/2addr v2, v0

    if-ltz v0, :cond_2

    .line 81
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->b:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setHasEvents(Ljava/util/List;)V

    return-void

    .line 83
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setHasEvents(Ljava/util/List;)V

    return-void
.end method

.method public a(ZI)V
    .locals 8

    .line 63
    new-array v0, p2, [Lsmartisan/widget/calendar/MonthWeekEventsView;

    const/4 v1, 0x0

    move v2, v1

    .line 64
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 65
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lsmartisan/widget/calendar/MonthWeekEventsView;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 67
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 68
    iget v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->h:I

    iget v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->r:I

    sub-int/2addr v2, v3

    iput v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->i:I

    .line 69
    iget v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->i:I

    invoke-virtual {p0, v2, p2}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a(II)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->p:Ljava/util/ArrayList;

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_2

    .line 70
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 71
    invoke-virtual {p0, v0, v2}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a([Lsmartisan/widget/calendar/MonthWeekEventsView;I)Lsmartisan/widget/calendar/MonthWeekEventsView;

    move-result-object v4

    .line 72
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_1

    move v6, v1

    goto :goto_2

    .line 73
    :cond_1
    sget v6, Lsmartisan/widget/calendar/MonthByWeekAdapter;->x:I

    :goto_2
    mul-int/2addr v6, v3

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 74
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    .line 6
    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->l:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 5
    iput p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->l:I

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 2
    iput p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->d:I

    .line 3
    iput p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->e:I

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->h()V

    return-void
.end method

.method public b(Landroid/text/format/Time;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a(Landroid/text/format/Time;Z)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 4

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->r:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    .line 2
    invoke-static {v0}, Li/r/a;->a(I)I

    move-result v0

    .line 3
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g:Landroid/text/format/Time;

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->f:Landroid/content/Context;

    .line 5
    invoke-static {v3}, Li/r/a;->c(Landroid/content/Context;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    sub-int/2addr v0, v3

    .line 6
    invoke-virtual {v2, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 7
    iget v0, v2, Landroid/text/format/Time;->month:I

    iget v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->l:I

    if-ne v0, v2, :cond_0

    .line 8
    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->r:I

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 9
    invoke-static {v0}, Li/r/a;->a(I)I

    move-result v0

    .line 10
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g:Landroid/text/format/Time;

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->f:Landroid/content/Context;

    .line 12
    invoke-static {v3}, Li/r/a;->c(Landroid/content/Context;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    sub-int/2addr v0, v3

    .line 13
    invoke-virtual {v2, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 14
    iget v0, v2, Landroid/text/format/Time;->month:I

    iget v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->l:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    return v1
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li/r/a;->a(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g:Landroid/text/format/Time;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->r:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->s:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->m:Z

    invoke-virtual {p0, v1, v0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a(ZI)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->f:Landroid/content/Context;

    invoke-static {v0}, Li/r/a;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->j:I

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->f:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li/r/a;->a(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->i()V

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g()V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->g:Landroid/text/format/Time;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-void
.end method
