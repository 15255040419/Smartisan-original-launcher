.class public Lsmartisan/widget/SmartisanDatePicker;
.super Landroid/widget/FrameLayout;
.source "SmartisanDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanDatePicker$SavedState;,
        Lsmartisan/widget/SmartisanDatePicker$OnDateChangedListener;,
        Lsmartisan/widget/SmartisanDatePicker$c;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Landroid/widget/LinearLayout;

.field public final b:Lsmartisan/widget/SmartisanNumberPicker;

.field public final c:Lsmartisan/widget/SmartisanNumberPicker;

.field public final d:Lsmartisan/widget/SmartisanNumberPicker;

.field public e:Ljava/util/Locale;

.field public f:Lsmartisan/widget/SmartisanDatePicker$OnDateChangedListener;

.field public g:[Ljava/lang/String;

.field public h:I

.field public i:Ljava/util/Calendar;

.field public j:Ljava/util/Calendar;

.field public k:Ljava/util/Calendar;

.field public l:Ljava/util/Calendar;

.field public m:Z

.field public n:Lsmartisan/widget/SmartisanDatePicker$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "MM/dd/yyyy"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanDatePicker;->m:Z

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lsmartisan/widget/SmartisanDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    const-string p3, "layout_inflater"

    .line 7
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 8
    sget p3, Lsmartisan/widget/R$layout;->date_picker:I

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 10
    sget p3, Lsmartisan/widget/R$color;->date_pick_normal_day_color:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 11
    sget v0, Lsmartisan/widget/R$color;->date_pick_select_day_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 12
    new-instance v0, Lsmartisan/widget/SmartisanDatePicker$a;

    invoke-direct {v0, p0}, Lsmartisan/widget/SmartisanDatePicker$a;-><init>(Lsmartisan/widget/SmartisanDatePicker;)V

    .line 13
    sget v1, Lsmartisan/widget/R$id;->pickers:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->a:Landroid/widget/LinearLayout;

    .line 14
    sget v1, Lsmartisan/widget/R$id;->day:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SmartisanNumberPicker;

    iput-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    .line 15
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {}, Lsmartisan/widget/SmartisanNumberPicker;->getTwoDigitFormatter()Lsmartisan/widget/SmartisanNumberPicker$Formatter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsmartisan/widget/SmartisanNumberPicker;->setFormatter(Lsmartisan/widget/SmartisanNumberPicker$Formatter;)V

    .line 16
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;)V

    .line 17
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-static {v2, v3, v4}, Li/r/c;->a(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-wide/high16 v6, 0x4032000000000000L    # 18.0

    invoke-static {v5, v6, v7}, Li/r/c;->a(Landroid/content/Context;D)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lsmartisan/widget/SmartisanNumberPicker;->d(II)V

    .line 18
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1, p3, p1}, Lsmartisan/widget/SmartisanNumberPicker;->c(II)V

    .line 19
    sget v1, Lsmartisan/widget/R$id;->month:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SmartisanNumberPicker;

    iput-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    .line 20
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 21
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    iget v2, p0, Lsmartisan/widget/SmartisanDatePicker;->h:I

    sub-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    .line 22
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v2, p0, Lsmartisan/widget/SmartisanDatePicker;->g:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsmartisan/widget/SmartisanNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;)V

    .line 24
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v4}, Li/r/c;->a(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6, v7}, Li/r/c;->a(Landroid/content/Context;D)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lsmartisan/widget/SmartisanNumberPicker;->d(II)V

    .line 25
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1, p3, p1}, Lsmartisan/widget/SmartisanNumberPicker;->c(II)V

    .line 26
    sget v1, Lsmartisan/widget/R$id;->year:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SmartisanNumberPicker;

    iput-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    .line 27
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;)V

    .line 28
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v4}, Li/r/c;->a(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v7}, Li/r/c;->a(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsmartisan/widget/SmartisanNumberPicker;->d(II)V

    .line 29
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, p3, p1}, Lsmartisan/widget/SmartisanNumberPicker;->c(II)V

    .line 30
    invoke-virtual {p0, p2}, Lsmartisan/widget/SmartisanDatePicker;->setSpinnersShown(Z)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 33
    :cond_0
    sget p1, Lsmartisan/widget/R$drawable;->time_picker_widget_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanDatePicker;III)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lsmartisan/widget/SmartisanDatePicker;->a(III)V

    return-void
.end method

.method public static synthetic b(Lsmartisan/widget/SmartisanDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanDatePicker;->i:Ljava/util/Calendar;

    return-object p0
.end method

.method public static synthetic c(Lsmartisan/widget/SmartisanDatePicker;)Lsmartisan/widget/SmartisanNumberPicker;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    return-object p0
.end method

.method public static synthetic d(Lsmartisan/widget/SmartisanDatePicker;)Lsmartisan/widget/SmartisanNumberPicker;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    return-object p0
.end method

.method public static synthetic e(Lsmartisan/widget/SmartisanDatePicker;)Lsmartisan/widget/SmartisanNumberPicker;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanDatePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    return-object p0
.end method

.method public static synthetic f(Lsmartisan/widget/SmartisanDatePicker;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanDatePicker;->b()V

    return-void
.end method

.method public static synthetic g(Lsmartisan/widget/SmartisanDatePicker;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanDatePicker;->a()V

    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->e:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->e:Ljava/util/Locale;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {p0, v0, p1}, Lsmartisan/widget/SmartisanDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->i:Ljava/util/Calendar;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {p0, v0, p1}, Lsmartisan/widget/SmartisanDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->j:Ljava/util/Calendar;

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {p0, v0, p1}, Lsmartisan/widget/SmartisanDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {p0, v0, p1}, Lsmartisan/widget/SmartisanDatePicker;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    .line 7
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->i:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lsmartisan/widget/SmartisanDatePicker;->h:I

    .line 8
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->g:[Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanDatePicker;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget p1, p0, Lsmartisan/widget/SmartisanDatePicker;->h:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->g:[Ljava/lang/String;

    const/4 p1, 0x0

    move v1, p1

    .line 11
    :goto_0
    iget v2, p0, Lsmartisan/widget/SmartisanDatePicker;->h:I

    if-ge v1, v2, :cond_1

    .line 12
    iget-object v2, p0, Lsmartisan/widget/SmartisanDatePicker;->g:[Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, p1

    const-string v5, "%d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 3
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 5
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method public final a()V
    .locals 7

    const/4 v0, 0x4

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 13
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->f:Lsmartisan/widget/SmartisanDatePicker$OnDateChangedListener;

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanDatePicker;->getYear()I

    move-result v3

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanDatePicker;->getMonth()I

    move-result v4

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanDatePicker;->getDayOfMonth()I

    move-result v5

    iget-object v6, p0, Lsmartisan/widget/SmartisanDatePicker;->n:Lsmartisan/widget/SmartisanDatePicker$c;

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lsmartisan/widget/SmartisanDatePicker$OnDateChangedListener;->onDateChanged(Lsmartisan/widget/SmartisanDatePicker;IIILsmartisan/widget/SmartisanDatePicker$c;)V

    :cond_0
    return-void
.end method

.method public final a(III)V
    .locals 1

    .line 7
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v5, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v5, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    iget-object v5, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v5, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 10
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v5, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    .line 11
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 13
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, v4}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 15
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v5, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    .line 16
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 18
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    .line 19
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->g:[Ljava/lang/String;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    .line 20
    invoke-virtual {v1}, Lsmartisan/widget/SmartisanNumberPicker;->getMinValue()I

    move-result v1

    iget-object v5, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v5}, Lsmartisan/widget/SmartisanNumberPicker;->getMaxValue()I

    move-result v5

    add-int/2addr v5, v4

    .line 21
    invoke-static {v0, v1, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 24
    sget-object v0, Lsmartisan/widget/SmartisanDatePicker$b;->a:[I

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->n:Lsmartisan/widget/SmartisanDatePicker$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_2

    .line 25
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    goto :goto_1

    .line 26
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lsmartisan/widget/SmartisanNumberPicker;->a(IZ)V

    .line 27
    :goto_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setValue(I)V

    .line 28
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setValue(I)V

    .line 29
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setValue(I)V

    return-void
.end method

.method public final c()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->g:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanDatePicker;->m:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lsmartisan/widget/SmartisanDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lsmartisan/widget/SmartisanDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    .line 3
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    .line 4
    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lsmartisan/widget/SmartisanDatePicker$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    invoke-static {p1}, Lsmartisan/widget/SmartisanDatePicker$SavedState;->c(Lsmartisan/widget/SmartisanDatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lsmartisan/widget/SmartisanDatePicker$SavedState;->a(Lsmartisan/widget/SmartisanDatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lsmartisan/widget/SmartisanDatePicker$SavedState;->b(Lsmartisan/widget/SmartisanDatePicker$SavedState;)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lsmartisan/widget/SmartisanDatePicker;->a(III)V

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanDatePicker;->b()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2
    new-instance v6, Lsmartisan/widget/SmartisanDatePicker$SavedState;

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lsmartisan/widget/SmartisanDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILsmartisan/widget/SmartisanDatePicker$a;)V

    return-object v6
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanDatePicker;->m:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->b:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanDatePicker;->m:Z

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->i:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->i:Ljava/util/Calendar;

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->i:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lsmartisan/widget/SmartisanDatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->i:Ljava/util/Calendar;

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lsmartisan/widget/SmartisanDatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePicker;->l:Ljava/util/Calendar;

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePicker;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
