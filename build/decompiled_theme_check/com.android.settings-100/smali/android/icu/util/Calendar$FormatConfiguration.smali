.class public Landroid/icu/util/Calendar$FormatConfiguration;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatConfiguration"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cal:Landroid/icu/util/Calendar;

.field private formatData:Landroid/icu/text/DateFormatSymbols;

.field private loc:Landroid/icu/util/ULocale;

.field private override:Ljava/lang/String;

.field private pattern:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/Calendar$1;)V
    .locals 0

    .line 3679
    invoke-direct {p0}, Landroid/icu/util/Calendar$FormatConfiguration;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3679
    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->pattern:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3679
    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->override:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/text/DateFormatSymbols;)Landroid/icu/text/DateFormatSymbols;
    .locals 0

    .line 3679
    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->formatData:Landroid/icu/text/DateFormatSymbols;

    return-object p1
.end method

.method static synthetic access$402(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 0

    .line 3679
    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->loc:Landroid/icu/util/ULocale;

    return-object p1
.end method

.method static synthetic access$502(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/Calendar;)Landroid/icu/util/Calendar;
    .locals 0

    .line 3679
    iput-object p1, p0, Landroid/icu/util/Calendar$FormatConfiguration;->cal:Landroid/icu/util/Calendar;

    return-object p1
.end method


# virtual methods
.method public getCalendar()Landroid/icu/util/Calendar;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3721
    iget-object p0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->cal:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method public getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3745
    iget-object p0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->formatData:Landroid/icu/text/DateFormatSymbols;

    return-object p0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3733
    iget-object p0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->loc:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public getOverrideString()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3709
    iget-object p0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->override:Ljava/lang/String;

    return-object p0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3699
    iget-object p0, p0, Landroid/icu/util/Calendar$FormatConfiguration;->pattern:Ljava/lang/String;

    return-object p0
.end method
