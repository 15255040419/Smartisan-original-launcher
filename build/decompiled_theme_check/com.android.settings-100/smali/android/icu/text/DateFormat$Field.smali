.class public Landroid/icu/text/DateFormat$Field;
.super Ljava/text/Format$Field;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final AM_PM:Landroid/icu/text/DateFormat$Field;

.field public static final AM_PM_MIDNIGHT_NOON:Landroid/icu/text/DateFormat$Field;

.field private static final CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

.field private static final CAL_FIELD_COUNT:I

.field public static final DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

.field public static final DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

.field public static final ERA:Landroid/icu/text/DateFormat$Field;

.field public static final EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

.field private static final FIELD_NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLEXIBLE_DAY_PERIOD:Landroid/icu/text/DateFormat$Field;

.field public static final HOUR0:Landroid/icu/text/DateFormat$Field;

.field public static final HOUR1:Landroid/icu/text/DateFormat$Field;

.field public static final HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

.field public static final HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

.field public static final JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

.field public static final MILLISECOND:Landroid/icu/text/DateFormat$Field;

.field public static final MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

.field public static final MINUTE:Landroid/icu/text/DateFormat$Field;

.field public static final MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final QUARTER:Landroid/icu/text/DateFormat$Field;

.field public static final RELATED_YEAR:Landroid/icu/text/DateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECOND:Landroid/icu/text/DateFormat$Field;

.field public static final TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_ZONE:Landroid/icu/text/DateFormat$Field;

.field public static final WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

.field public static final WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final YEAR:Landroid/icu/text/DateFormat$Field;

.field public static final YEAR_WOY:Landroid/icu/text/DateFormat$Field;

.field private static final serialVersionUID:J = -0x325750c275d0f8cdL


# instance fields
.field private final calendarField:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2133
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    .line 2134
    invoke-virtual {v0}, Landroid/icu/util/GregorianCalendar;->getFieldCount()I

    move-result v0

    sput v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    .line 2135
    sget v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    new-array v1, v0, [Landroid/icu/text/DateFormat$Field;

    sput-object v1, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    .line 2136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    .line 2144
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "am pm"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->AM_PM:Landroid/icu/text/DateFormat$Field;

    .line 2149
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "day of month"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    .line 2154
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "day of week"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    .line 2159
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "day of week in month"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

    .line 2165
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "day of year"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    .line 2170
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "era"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->ERA:Landroid/icu/text/DateFormat$Field;

    .line 2175
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v1, "hour of day"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

    .line 2180
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const/4 v1, -0x1

    const-string v2, "hour of day 1"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

    .line 2185
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v2, "hour"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->HOUR0:Landroid/icu/text/DateFormat$Field;

    .line 2190
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v2, "hour 1"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->HOUR1:Landroid/icu/text/DateFormat$Field;

    .line 2195
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v2, "millisecond"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->MILLISECOND:Landroid/icu/text/DateFormat$Field;

    .line 2200
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v2, "minute"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    .line 2205
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v2, "month"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    .line 2210
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "second"

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    .line 2215
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "time zone"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    .line 2220
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "week of month"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    .line 2226
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "week of year"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    .line 2231
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "year"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    .line 2239
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v2, "local day of week"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

    .line 2244
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v2, "extended year"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

    .line 2250
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v2, "Julian day"

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

    .line 2255
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v2, "milliseconds in day"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

    .line 2261
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "year for week of year"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->YEAR_WOY:Landroid/icu/text/DateFormat$Field;

    .line 2266
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "quarter"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    .line 2274
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "related year"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->RELATED_YEAR:Landroid/icu/text/DateFormat$Field;

    .line 2279
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v2, "am/pm/midnight/noon"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->AM_PM_MIDNIGHT_NOON:Landroid/icu/text/DateFormat$Field;

    .line 2284
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string v2, "flexible day period"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->FLEXIBLE_DAY_PERIOD:Landroid/icu/text/DateFormat$Field;

    .line 2292
    new-instance v0, Landroid/icu/text/DateFormat$Field;

    const-string/jumbo v2, "time separator"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$Field;->TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 2316
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 2317
    iput p2, p0, Landroid/icu/text/DateFormat$Field;->calendarField:I

    .line 2318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/icu/text/DateFormat$Field;

    if-ne v0, v1, :cond_0

    .line 2319
    sget-object v0, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_0

    .line 2320
    sget p1, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    if-ge p2, p1, :cond_0

    .line 2321
    sget-object p1, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    aput-object p0, p1, p2

    :cond_0
    return-void
.end method

.method public static ofCalendarField(I)Landroid/icu/text/DateFormat$Field;
    .locals 1

    if-ltz p0, :cond_0

    .line 2338
    sget v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELD_COUNT:I

    if-ge p0, v0, :cond_0

    .line 2341
    sget-object v0, Landroid/icu/text/DateFormat$Field;->CAL_FIELDS:[Landroid/icu/text/DateFormat$Field;

    aget-object p0, v0, p0

    return-object p0

    .line 2339
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Calendar field number is out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCalendarField()I
    .locals 0

    .line 2352
    iget p0, p0, Landroid/icu/text/DateFormat$Field;->calendarField:I

    return p0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 2363
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/icu/text/DateFormat$Field;

    if-ne v0, v1, :cond_1

    .line 2368
    sget-object v0, Landroid/icu/text/DateFormat$Field;->FIELD_NAME_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/icu/text/DateFormat$Field;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2371
    :cond_0
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string v0, "Unknown attribute name."

    invoke-direct {p0, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2364
    :cond_1
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string v0, "A subclass of DateFormat.Field must implement readResolve."

    invoke-direct {p0, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
