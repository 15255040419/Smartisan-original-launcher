.class public Landroid/icu/util/SimpleHoliday;
.super Landroid/icu/util/Holiday;
.source "SimpleHoliday.java"


# static fields
.field public static final ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final ALL_SOULS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final ASSUMPTION:Landroid/icu/util/SimpleHoliday;

.field public static final BOXING_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final CHRISTMAS:Landroid/icu/util/SimpleHoliday;

.field public static final CHRISTMAS_EVE:Landroid/icu/util/SimpleHoliday;

.field public static final EPIPHANY:Landroid/icu/util/SimpleHoliday;

.field public static final IMMACULATE_CONCEPTION:Landroid/icu/util/SimpleHoliday;

.field public static final MAY_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

.field public static final ST_STEPHENS_DAY:Landroid/icu/util/SimpleHoliday;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 170
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "New Year\'s Day"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    .line 177
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/4 v3, 0x6

    const-string v4, "Epiphany"

    invoke-direct {v0, v1, v3, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->EPIPHANY:Landroid/icu/util/SimpleHoliday;

    .line 184
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/4 v1, 0x4

    const-string v3, "May Day"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    .line 191
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/4 v1, 0x7

    const/16 v3, 0xf

    const-string v4, "Assumption"

    invoke-direct {v0, v1, v3, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ASSUMPTION:Landroid/icu/util/SimpleHoliday;

    .line 198
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/16 v1, 0xa

    const-string v3, "All Saints\' Day"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    .line 205
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x2

    const-string v3, "All Souls\' Day"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ALL_SOULS_DAY:Landroid/icu/util/SimpleHoliday;

    .line 212
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/16 v1, 0xb

    const/16 v2, 0x8

    const-string v3, "Immaculate Conception"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->IMMACULATE_CONCEPTION:Landroid/icu/util/SimpleHoliday;

    .line 219
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/16 v2, 0x18

    const-string v3, "Christmas Eve"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS_EVE:Landroid/icu/util/SimpleHoliday;

    .line 226
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/16 v2, 0x19

    const-string v3, "Christmas"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    .line 233
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/16 v2, 0x1a

    const-string v3, "Boxing Day"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    .line 240
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string v3, "St. Stephen\'s Day"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ST_STEPHENS_DAY:Landroid/icu/util/SimpleHoliday;

    .line 247
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const/16 v2, 0x1f

    const-string v3, "New Year\'s Eve"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2

    .line 111
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    if-lez p3, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    neg-int v1, p3

    :goto_0
    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 112
    :goto_1
    invoke-direct {v0, p1, p2, v1, p3}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    .line 111
    invoke-direct {p0, p4, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 3

    .line 122
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    if-lez p3, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    neg-int v1, p3

    :goto_0
    const/4 v2, 0x0

    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    move p3, v2

    .line 124
    :goto_1
    invoke-direct {v0, p1, p2, v1, p3}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    .line 122
    invoke-static {p5, v2, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;II)V
    .locals 2

    .line 135
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    if-lez p3, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    neg-int v1, p3

    :goto_0
    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 137
    :goto_1
    invoke-direct {v0, p1, p2, v1, p3}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    .line 135
    invoke-static {p5, p6, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 42
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 1

    .line 62
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    const/4 p1, 0x0

    invoke-static {p4, p1, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 1

    .line 82
    new-instance v0, Landroid/icu/util/SimpleDateRule;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    invoke-static {p4, p5, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method private static rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object p2

    .line 147
    :cond_0
    new-instance v0, Landroid/icu/util/RangeDateRule;

    invoke-direct {v0}, Landroid/icu/util/RangeDateRule;-><init>()V

    if-eqz p0, :cond_1

    .line 150
    new-instance v1, Landroid/icu/util/GregorianCalendar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    .line 151
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v0, p2}, Landroid/icu/util/RangeDateRule;->add(Landroid/icu/util/DateRule;)V

    :goto_0
    if-eqz p1, :cond_2

    .line 156
    new-instance p0, Landroid/icu/util/GregorianCalendar;

    const/16 p2, 0xb

    const/16 v1, 0x1f

    invoke-direct {p0, p1, p2, v1}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const/4 p1, 0x0

    .line 157
    invoke-virtual {v0, p0, p1}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    :cond_2
    return-object v0
.end method
