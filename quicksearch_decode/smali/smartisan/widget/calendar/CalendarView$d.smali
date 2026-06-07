.class public Lsmartisan/widget/calendar/CalendarView$d;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/calendar/CalendarView;->a(ZLjava/util/Calendar;I)Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/Calendar;

.field public final synthetic d:Lsmartisan/widget/calendar/CalendarView;


# direct methods
.method public constructor <init>(Lsmartisan/widget/calendar/CalendarView;IZLjava/util/Calendar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    iput p2, p0, Lsmartisan/widget/calendar/CalendarView$d;->a:I

    iput-boolean p3, p0, Lsmartisan/widget/calendar/CalendarView$d;->b:Z

    iput-object p4, p0, Lsmartisan/widget/calendar/CalendarView$d;->c:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    iget-object p1, p1, Lsmartisan/widget/calendar/CalendarView;->n:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    invoke-virtual {p1}, Lsmartisan/widget/calendar/CalendarView;->h()V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    iget-object p1, p1, Lsmartisan/widget/calendar/CalendarView;->n:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 4
    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    invoke-virtual {v1, v0}, Lsmartisan/widget/calendar/CalendarView;->setupWeeksLayout(Z)V

    .line 5
    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    iget-object v2, v1, Lsmartisan/widget/calendar/CalendarView;->o:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    invoke-virtual {v1, p1}, Lsmartisan/widget/calendar/CalendarView;->c(Ljava/util/Calendar;)Landroid/text/format/Time;

    move-result-object v1

    iget-object v3, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    iget-object v3, v3, Lsmartisan/widget/calendar/CalendarView;->n:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v0, v4

    :cond_0
    invoke-virtual {v2, v1, v0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->a(Landroid/text/format/Time;Z)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    iget-object v0, v0, Lsmartisan/widget/calendar/CalendarView;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 7
    iget v0, p0, Lsmartisan/widget/calendar/CalendarView$d;->a:I

    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    iget-object v1, v1, Lsmartisan/widget/calendar/CalendarView;->n:Ljava/util/LinkedList;

    .line 8
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {v0, v1}, Li/t/e/e;->b(II)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 9
    iget v1, p0, Lsmartisan/widget/calendar/CalendarView$d;->a:I

    iget-object v2, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    iget-object v2, v2, Lsmartisan/widget/calendar/CalendarView;->n:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v1, v2}, Li/t/e/e;->a(II)I

    move-result v1

    .line 10
    iget-object v2, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lsmartisan/widget/calendar/CalendarView;->a(Lsmartisan/widget/calendar/CalendarView;J)J

    .line 11
    iget-object v2, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    invoke-static {v2}, Lsmartisan/widget/calendar/CalendarView;->c(Lsmartisan/widget/calendar/CalendarView;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Lsmartisan/widget/calendar/CalendarView;->a(JZ)Z

    .line 12
    iget-object v2, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    iget-boolean v3, p0, Lsmartisan/widget/calendar/CalendarView$d;->b:Z

    iget-object v5, v2, Lsmartisan/widget/calendar/CalendarView;->n:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v3, p1, v5}, Lsmartisan/widget/calendar/CalendarView;->a(ZLjava/util/Calendar;I)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0, v1}, Lsmartisan/widget/calendar/CalendarView;->a(ZLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;I)V

    .line 13
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    iget-object p1, p1, Lsmartisan/widget/calendar/CalendarView;->f:Lsmartisan/widget/calendar/DragViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView$d;->c:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Lsmartisan/widget/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    .line 15
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    invoke-static {p1, v0}, Lsmartisan/widget/calendar/CalendarView;->a(Lsmartisan/widget/calendar/CalendarView;Z)Z

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView$d;->d:Lsmartisan/widget/calendar/CalendarView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/calendar/CalendarView;->a(Lsmartisan/widget/calendar/CalendarView;Z)Z

    return-void
.end method
