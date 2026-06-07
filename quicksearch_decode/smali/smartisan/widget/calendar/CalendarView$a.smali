.class public Lsmartisan/widget/calendar/CalendarView$a;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/calendar/CalendarView;


# direct methods
.method public constructor <init>(Lsmartisan/widget/calendar/CalendarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/CalendarView$a;->a:Lsmartisan/widget/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellClicked(Landroid/text/format/Time;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView$a;->a:Lsmartisan/widget/calendar/CalendarView;

    invoke-static {v0}, Lsmartisan/widget/calendar/CalendarView;->a(Lsmartisan/widget/calendar/CalendarView;)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView$a;->a:Lsmartisan/widget/calendar/CalendarView;

    invoke-static {v1}, Lsmartisan/widget/calendar/CalendarView;->b(Lsmartisan/widget/calendar/CalendarView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-static {v0, p1, v1}, Li/r/a;->a(Landroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView$a;->a:Lsmartisan/widget/calendar/CalendarView;

    invoke-static {v0, p1}, Lsmartisan/widget/calendar/CalendarView;->a(Lsmartisan/widget/calendar/CalendarView;Landroid/text/format/Time;)V

    :cond_0
    return-void
.end method

.method public onCellLongClicked(Landroid/text/format/Time;)V
    .locals 0

    return-void
.end method
