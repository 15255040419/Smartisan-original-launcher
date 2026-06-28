.class public Landroid/icu/text/ChineseDateFormatSymbols;
.super Landroid/icu/text/DateFormatSymbols;
.source "ChineseDateFormatSymbols.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final serialVersionUID:J = 0x5ec14695eb6891faL


# instance fields
.field isLeapMonth:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/ChineseDateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Ljava/util/Locale;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    const-class v0, Landroid/icu/util/ChineseCalendar;

    invoke-direct {p0, v0, p1}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    const-class v0, Landroid/icu/util/ChineseCalendar;

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private initializeIsLeapMonth()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 132
    iput-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    .line 133
    iget-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 134
    iget-object v3, p0, Landroid/icu/text/ChineseDateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object p0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object p0, p0, v1

    const-string/jumbo v1, "{0}"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 p0, 0x1

    aput-object v2, v0, p0

    return-void
.end method


# virtual methods
.method public getLeapMonth(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    iget-object p0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method initializeData(Landroid/icu/text/DateFormatSymbols;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/text/DateFormatSymbols;)V

    .line 119
    instance-of v0, p1, Landroid/icu/text/ChineseDateFormatSymbols;

    if-eqz v0, :cond_0

    .line 121
    check-cast p1, Landroid/icu/text/ChineseDateFormatSymbols;

    iget-object p1, p1, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    iput-object p1, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/ChineseDateFormatSymbols;->initializeIsLeapMonth()V

    :goto_0
    return-void
.end method

.method protected initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Landroid/icu/text/ChineseDateFormatSymbols;->initializeIsLeapMonth()V

    return-void
.end method
