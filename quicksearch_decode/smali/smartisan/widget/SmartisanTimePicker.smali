.class public Lsmartisan/widget/SmartisanTimePicker;
.super Landroid/widget/FrameLayout;
.source "SmartisanTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanTimePicker$SavedState;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lsmartisan/widget/SmartisanNumberPicker;

.field public d:Lsmartisan/widget/SmartisanNumberPicker;

.field public e:Lsmartisan/widget/SmartisanNumberPicker;

.field public f:Landroid/widget/Button;

.field public g:[Ljava/lang/String;

.field public h:Z

.field public i:Ljava/util/Calendar;

.field public j:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanTimePicker;->h:Z

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lsmartisan/widget/SmartisanTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    const-string p3, "layout_inflater"

    .line 6
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 7
    invoke-static {p1}, Li/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget v0, Lsmartisan/widget/R$layout;->revone_time_picker:I

    invoke-virtual {p3, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 9
    :cond_0
    sget v0, Lsmartisan/widget/R$layout;->time_picker:I

    invoke-virtual {p3, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 11
    sget v0, Lsmartisan/widget/R$color;->date_pick_normal_day_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 12
    sget v1, Lsmartisan/widget/R$color;->date_pick_select_day_color:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 13
    sget v1, Lsmartisan/widget/R$id;->hour:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SmartisanNumberPicker;

    iput-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    .line 14
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

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

    .line 15
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1, v0, p3}, Lsmartisan/widget/SmartisanNumberPicker;->c(II)V

    .line 16
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    new-instance v2, Lsmartisan/widget/SmartisanTimePicker$a;

    invoke-direct {v2, p0}, Lsmartisan/widget/SmartisanTimePicker$a;-><init>(Lsmartisan/widget/SmartisanTimePicker;)V

    invoke-virtual {v1, v2}, Lsmartisan/widget/SmartisanNumberPicker;->setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;)V

    .line 17
    sget v1, Lsmartisan/widget/R$id;->minute:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SmartisanNumberPicker;

    iput-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    .line 18
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 19
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    const/16 v5, 0x3b

    invoke-virtual {v1, v5}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    .line 20
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {}, Lsmartisan/widget/SmartisanNumberPicker;->getTwoDigitFormatter()Lsmartisan/widget/SmartisanNumberPicker$Formatter;

    move-result-object v5

    invoke-virtual {v1, v5}, Lsmartisan/widget/SmartisanNumberPicker;->setFormatter(Lsmartisan/widget/SmartisanNumberPicker$Formatter;)V

    .line 21
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v4}, Li/r/c;->a(Landroid/content/Context;D)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6, v7}, Li/r/c;->a(Landroid/content/Context;D)I

    move-result v8

    invoke-virtual {v1, v5, v8}, Lsmartisan/widget/SmartisanNumberPicker;->d(II)V

    .line 22
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1, v0, p3}, Lsmartisan/widget/SmartisanNumberPicker;->c(II)V

    .line 23
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    new-instance v5, Lsmartisan/widget/SmartisanTimePicker$b;

    invoke-direct {v5, p0}, Lsmartisan/widget/SmartisanTimePicker$b;-><init>(Lsmartisan/widget/SmartisanTimePicker;)V

    invoke-virtual {v1, v5}, Lsmartisan/widget/SmartisanNumberPicker;->setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;)V

    .line 24
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->g:[Ljava/lang/String;

    .line 25
    sget v1, Lsmartisan/widget/R$id;->amPm:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 26
    instance-of v5, v1, Landroid/widget/Button;

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    .line 27
    iput-object v8, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    .line 28
    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->f:Landroid/widget/Button;

    .line 29
    iget-object p3, p0, Lsmartisan/widget/SmartisanTimePicker;->f:Landroid/widget/Button;

    new-instance v0, Lsmartisan/widget/SmartisanTimePicker$c;

    invoke-direct {v0, p0}, Lsmartisan/widget/SmartisanTimePicker$c;-><init>(Lsmartisan/widget/SmartisanTimePicker;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 30
    :cond_1
    iput-object v8, p0, Lsmartisan/widget/SmartisanTimePicker;->f:Landroid/widget/Button;

    .line 31
    check-cast v1, Lsmartisan/widget/SmartisanNumberPicker;

    iput-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    .line 32
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1, v2}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 33
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1, p2}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    .line 34
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    iget-object v5, p0, Lsmartisan/widget/SmartisanTimePicker;->g:[Ljava/lang/String;

    invoke-virtual {v1, v5}, Lsmartisan/widget/SmartisanNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    new-instance v5, Lsmartisan/widget/SmartisanTimePicker$d;

    invoke-direct {v5, p0}, Lsmartisan/widget/SmartisanTimePicker$d;-><init>(Lsmartisan/widget/SmartisanTimePicker;)V

    .line 36
    invoke-virtual {v1, v5}, Lsmartisan/widget/SmartisanNumberPicker;->setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;)V

    .line 37
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v4}, Li/r/c;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v7}, Li/r/c;->a(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lsmartisan/widget/SmartisanNumberPicker;->d(II)V

    .line 38
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v1, v0, p3}, Lsmartisan/widget/SmartisanNumberPicker;->c(II)V

    .line 39
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "time_12_24"

    .line 40
    invoke-static {p1, p3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "24"

    .line 41
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 42
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_2

    .line 43
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 44
    :goto_2
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->d()V

    .line 45
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->c()V

    .line 46
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 47
    invoke-virtual {p0, v2}, Lsmartisan/widget/SmartisanTimePicker;->setEnabled(Z)V

    .line 48
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 49
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 50
    :cond_4
    sget p1, Lsmartisan/widget/R$drawable;->time_picker_widget_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanTimePicker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/SmartisanTimePicker;->b:Z

    return p0
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanTimePicker;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanTimePicker;->b:Z

    return p1
.end method

.method public static synthetic b(Lsmartisan/widget/SmartisanTimePicker;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->c()V

    return-void
.end method

.method public static synthetic c(Lsmartisan/widget/SmartisanTimePicker;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->b()V

    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->j:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SmartisanTimePicker;->j:Ljava/util/Locale;

    .line 3
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/SmartisanTimePicker;->i:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanTimePicker;->a:Z

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public final c()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanTimePicker;->b:Z

    xor-int/lit8 v0, v0, 0x1

    .line 7
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->setValue(I)V

    .line 9
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->f:Landroid/widget/Button;

    iget-object v3, p0, Lsmartisan/widget/SmartisanTimePicker;->g:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-static {}, Lsmartisan/widget/SmartisanNumberPicker;->getTwoDigitFormatter()Lsmartisan/widget/SmartisanNumberPicker$Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setFormatter(Lsmartisan/widget/SmartisanNumberPicker$Formatter;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMinValue(I)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(I)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->setFormatter(Lsmartisan/widget/SmartisanNumberPicker$Formatter;)V

    :goto_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getBaseline()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanTimePicker;->b:Z

    if-eqz v1, :cond_1

    .line 5
    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanTimePicker;->h:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lsmartisan/widget/SmartisanTimePicker;

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
    const-class v0, Lsmartisan/widget/SmartisanTimePicker;

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
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanTimePicker;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    .line 3
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->i:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 4
    iget-object v1, p0, Lsmartisan/widget/SmartisanTimePicker;->i:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lsmartisan/widget/SmartisanTimePicker;->i:Ljava/util/Calendar;

    .line 6
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 7
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lsmartisan/widget/SmartisanTimePicker$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p1}, Lsmartisan/widget/SmartisanTimePicker$SavedState;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 4
    invoke-virtual {p1}, Lsmartisan/widget/SmartisanTimePicker$SavedState;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lsmartisan/widget/SmartisanTimePicker$SavedState;

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lsmartisan/widget/SmartisanTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILsmartisan/widget/SmartisanTimePicker$a;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lsmartisan/widget/SmartisanTimePicker;->b:Z

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lsmartisan/widget/SmartisanTimePicker;->b:Z

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->c()V

    .line 11
    :cond_3
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->setValue(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->setValue(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanTimePicker;->h:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->d:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->c:Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->e:Lsmartisan/widget/SmartisanNumberPicker;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanTimePicker;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8
    :goto_0
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanTimePicker;->h:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanTimePicker;->a:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lsmartisan/widget/SmartisanTimePicker;->a:Z

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->d()V

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 6
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanTimePicker;->c()V

    .line 7
    sget p1, Lsmartisan/widget/R$drawable;->time_picker_widget_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    return-void
.end method
