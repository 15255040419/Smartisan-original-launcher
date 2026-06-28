.class public Landroid/icu/util/SimpleDateRule;
.super Ljava/lang/Object;
.source "SimpleDateRule.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# instance fields
.field private calendar:Landroid/icu/util/Calendar;

.field private dayOfMonth:I

.field private dayOfWeek:I

.field private month:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    .line 34
    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    .line 35
    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    .line 61
    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    .line 62
    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    neg-int p3, p3

    .line 63
    :goto_0
    iput p3, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    return-void
.end method

.method constructor <init>(IILandroid/icu/util/Calendar;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    .line 42
    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    .line 43
    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    .line 45
    iput-object p3, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    return-void
.end method

.method private computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;
    .locals 3

    .line 176
    monitor-enter p2

    .line 177
    :try_start_0
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->clear()V

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p2, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 180
    iget v0, p0, Landroid/icu/util/SimpleDateRule;->month:I

    invoke-virtual {p2, p1, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 181
    iget p1, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    .line 185
    iget p1, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x7

    .line 187
    invoke-virtual {p2, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 193
    iget v2, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    if-lez v2, :cond_0

    .line 196
    iget p0, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    sub-int/2addr p0, v1

    add-int/2addr p0, p1

    rem-int/2addr p0, p1

    goto :goto_0

    .line 201
    :cond_0
    iget p0, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    add-int/2addr p0, v1

    add-int/2addr p0, p1

    rem-int/2addr p0, p1

    neg-int p0, p0

    .line 204
    :goto_0
    invoke-virtual {p2, v0, p0}, Landroid/icu/util/Calendar;->add(II)V

    .line 207
    :cond_1
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    monitor-exit p2

    return-object p0

    :catchall_0
    move-exception p0

    .line 208
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    .line 144
    iget-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    .line 146
    monitor-enter v0

    .line 147
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 150
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    .line 154
    iget v4, p0, Landroid/icu/util/SimpleDateRule;->month:I

    if-le v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 159
    :cond_0
    invoke-direct {p0, v2, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    move-result-object v4

    .line 163
    iget v5, p0, Landroid/icu/util/SimpleDateRule;->month:I

    if-ne v3, v5, :cond_1

    invoke-virtual {v4, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/2addr v2, v1

    .line 164
    invoke-direct {p0, v2, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    move-result-object v4

    :cond_1
    if-eqz p2, :cond_2

    .line 167
    invoke-virtual {v4, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 168
    monitor-exit v0

    return-object p0

    .line 170
    :cond_2
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p0

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Landroid/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/SimpleDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 4

    .line 116
    iget-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    .line 118
    monitor-enter v0

    .line 119
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x6

    .line 121
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
