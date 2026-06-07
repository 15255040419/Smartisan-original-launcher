.class public Li/r/a;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/r/a$a;
    }
.end annotation


# static fields
.field public static final a:Li/r/a$a;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/r/a$a;

    const-string v1, "com.android.calendar_preferences"

    invoke-direct {v0, v1}, Li/r/a$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/r/a;->a:Li/r/a$a;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calendar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li/r/a;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Li/r/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bg.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Li/r/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ring.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Li/r/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flip.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public static a(I)I
    .locals 1

    mul-int/lit8 p0, p0, 0x7

    const v0, 0x253d89

    add-int/2addr p0, v0

    return p0
.end method

.method public static a(II)I
    .locals 1

    rsub-int/lit8 p1, p1, 0x4

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x7

    :cond_0
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v0, p1

    sub-int/2addr p0, v0

    .line 11
    div-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 9
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Landroid/text/format/Time;)I
    .locals 4

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 5

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 19
    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide p0, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, p0, p1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/r/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Li/r/a;->a:Li/r/a$a;

    invoke-virtual {v0, p0, p1}, Li/r/a$a;->a(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/util/Calendar;)V
    .locals 4

    .line 22
    invoke-static {p0}, Li/r/a;->b(Landroid/content/Context;)I

    move-result p0

    .line 23
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 24
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 v3, 0x4

    .line 25
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    const/4 v3, 0x3

    .line 26
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->clear(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Li/r/a;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Li/r/a;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Landroid/text/format/Time;I)V
    .locals 1

    .line 4
    iget v0, p0, Landroid/text/format/Time;->weekDay:I

    sub-int/2addr v0, p1

    if-eqz v0, :cond_1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 5
    :cond_0
    iget p1, p0, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->normalize(Z)J

    :cond_1
    return-void
.end method

.method public static a(J)Z
    .locals 7

    .line 12
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x7b2

    .line 13
    invoke-virtual {v0, v2, v1, v3}, Landroid/text/format/Time;->set(III)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 15
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    const/16 v5, 0x7f6

    .line 16
    invoke-virtual {v0, v2, v1, v5}, Landroid/text/format/Time;->set(III)V

    .line 17
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    cmp-long v0, p0, v5

    if-gtz v0, :cond_0

    cmp-long p0, p0, v3

    if-ltz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static a(Landroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;)Z
    .locals 0

    .line 20
    invoke-static {p0, p1}, Li/r/a;->a(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result p0

    if-gtz p0, :cond_0

    .line 21
    invoke-static {p2, p1}, Li/r/a;->a(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/text/format/Time;Z)Z
    .locals 4

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 28
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v0, 0x7f5

    if-gt p1, v0, :cond_0

    move p0, v1

    :cond_0
    return p0

    :cond_1
    const/4 p1, -0x1

    .line 31
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v0, 0x7b2

    if-lt p1, v0, :cond_2

    move p0, v1

    :cond_2
    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Li/r/a;->a(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 4
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 0

    .line 6
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Landroid/text/format/Time;Landroid/text/format/Time;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Landroid/text/format/Time;->year:I

    iget v2, p1, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/text/format/Time;->month:I

    iget v2, p1, Landroid/text/format/Time;->month:I

    if-ne v1, v2, :cond_1

    iget p0, p0, Landroid/text/format/Time;->monthDay:I

    iget p1, p1, Landroid/text/format/Time;->monthDay:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Li/r/a;->a(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method
