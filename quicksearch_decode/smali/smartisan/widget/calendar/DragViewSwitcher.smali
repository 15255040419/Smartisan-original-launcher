.class public Lsmartisan/widget/calendar/DragViewSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "DragViewSwitcher.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;
    }
.end annotation


# instance fields
.field public a:Landroid/view/GestureDetector;

.field public b:Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;

.field public c:Landroid/content/Context;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->d:Z

    .line 3
    iput-object p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->d:Z

    .line 6
    iput-object p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->a:Landroid/view/GestureDetector;

    .line 2
    iput-object p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->b:Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setClickable(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setLongClickable(Z)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 7
    invoke-virtual {p0, p0}, Landroid/widget/ViewSwitcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->c:Landroid/content/Context;

    const-string v0, "window"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 3
    invoke-static {p1}, Li/o;->a(Landroid/view/WindowManager;)Z

    move-result p1

    iput-boolean p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->e:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->d:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    iget-object p3, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->c:Landroid/content/Context;

    const-string p4, "window"

    .line 2
    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    .line 3
    invoke-static {p3}, Li/o;->a(Landroid/view/WindowManager;)Z

    move-result p3

    .line 4
    iget-boolean p4, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->e:Z

    const/4 v0, 0x1

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    return v0

    .line 5
    :cond_0
    iput-boolean v0, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->d:Z

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p4, v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpl-float p3, p3, p4

    if-lez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    const/4 p4, 0x0

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    cmpg-float p1, p1, p4

    const/4 p2, 0x2

    if-gez p1, :cond_2

    .line 8
    iget-object p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->b:Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;

    invoke-interface {p1, p2}, Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;->preparePreviouseView(I)Z

    move-result p1

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->b:Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;

    invoke-interface {p1, p2}, Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;->prepareNextView(I)Z

    move-result p1

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    cmpg-float p1, p1, p4

    if-gez p1, :cond_4

    .line 11
    iget-object p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->b:Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;

    invoke-interface {p1, v0}, Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;->preparePreviouseView(I)Z

    move-result p1

    goto :goto_1

    .line 12
    :cond_4
    iget-object p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->b:Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;

    invoke-interface {p1, v0}, Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;->prepareNextView(I)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_5
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    :goto_0
    iget-boolean p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->d:Z

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->d:Z

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/calendar/DragViewSwitcher;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
