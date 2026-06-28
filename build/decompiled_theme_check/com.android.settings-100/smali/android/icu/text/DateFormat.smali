.class public abstract Landroid/icu/text/DateFormat;
.super Landroid/icu/text/UFormat;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateFormat$Field;,
        Landroid/icu/text/DateFormat$BooleanAttribute;
    }
.end annotation


# static fields
.field public static final ABBR_GENERIC_TZ:Ljava/lang/String; = "v"

.field public static final ABBR_MONTH:Ljava/lang/String; = "MMM"

.field public static final ABBR_MONTH_DAY:Ljava/lang/String; = "MMMd"

.field public static final ABBR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MMMEd"

.field public static final ABBR_QUARTER:Ljava/lang/String; = "QQQ"

.field public static final ABBR_SPECIFIC_TZ:Ljava/lang/String; = "z"

.field public static final ABBR_STANDALONE_MONTH:Ljava/lang/String; = "LLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBR_UTC_TZ:Ljava/lang/String; = "ZZZZ"

.field public static final ABBR_WEEKDAY:Ljava/lang/String; = "E"

.field public static final AM_PM_FIELD:I = 0xe

.field public static final AM_PM_MIDNIGHT_NOON_FIELD:I = 0x23

.field public static final DATE_FIELD:I = 0x3

.field public static final DATE_SKELETONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DAY:Ljava/lang/String; = "d"

.field public static final DAY_OF_WEEK_FIELD:I = 0x9

.field public static final DAY_OF_WEEK_IN_MONTH_FIELD:I = 0xb

.field public static final DAY_OF_YEAR_FIELD:I = 0xa

.field public static final DEFAULT:I = 0x2

.field public static final DOW_LOCAL_FIELD:I = 0x13

.field public static final ERA_FIELD:I = 0x0

.field public static final EXTENDED_YEAR_FIELD:I = 0x14

.field public static final FIELD_COUNT:I = 0x26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLEXIBLE_DAY_PERIOD_FIELD:I = 0x24

.field public static final FRACTIONAL_SECOND_FIELD:I = 0x8

.field public static final FULL:I = 0x0

.field public static final GENERIC_TZ:Ljava/lang/String; = "vvvv"

.field public static final HOUR:Ljava/lang/String; = "j"

.field public static final HOUR0_FIELD:I = 0x10

.field public static final HOUR1_FIELD:I = 0xf

.field public static final HOUR24:Ljava/lang/String; = "H"

.field public static final HOUR24_MINUTE:Ljava/lang/String; = "Hm"

.field public static final HOUR24_MINUTE_SECOND:Ljava/lang/String; = "Hms"

.field public static final HOUR_GENERIC_TZ:Ljava/lang/String; = "jv"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_MINUTE:Ljava/lang/String; = "jm"

.field public static final HOUR_MINUTE_GENERIC_TZ:Ljava/lang/String; = "jmv"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_MINUTE_SECOND:Ljava/lang/String; = "jms"

.field public static final HOUR_MINUTE_TZ:Ljava/lang/String; = "jmz"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_OF_DAY0_FIELD:I = 0x5

.field public static final HOUR_OF_DAY1_FIELD:I = 0x4

.field public static final HOUR_TZ:Ljava/lang/String; = "jz"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JULIAN_DAY_FIELD:I = 0x15

.field public static final LOCATION_TZ:Ljava/lang/String; = "VVVV"

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final MILLISECONDS_IN_DAY_FIELD:I = 0x16

.field public static final MILLISECOND_FIELD:I = 0x8

.field public static final MINUTE:Ljava/lang/String; = "m"

.field public static final MINUTE_FIELD:I = 0x6

.field public static final MINUTE_SECOND:Ljava/lang/String; = "ms"

.field public static final MONTH:Ljava/lang/String; = "MMMM"

.field public static final MONTH_DAY:Ljava/lang/String; = "MMMMd"

.field public static final MONTH_FIELD:I = 0x2

.field public static final MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MMMMEEEEd"

.field public static final NONE:I = -0x1

.field public static final NUM_MONTH:Ljava/lang/String; = "M"

.field public static final NUM_MONTH_DAY:Ljava/lang/String; = "Md"

.field public static final NUM_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MEd"

.field public static final QUARTER:Ljava/lang/String; = "QQQQ"

.field public static final QUARTER_FIELD:I = 0x1b

.field static final RELATED_YEAR:I = 0x22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RELATIVE:I = 0x80

.field public static final RELATIVE_DEFAULT:I = 0x82

.field public static final RELATIVE_FULL:I = 0x80

.field public static final RELATIVE_LONG:I = 0x81

.field public static final RELATIVE_MEDIUM:I = 0x82

.field public static final RELATIVE_SHORT:I = 0x83

.field public static final SECOND:Ljava/lang/String; = "s"

.field public static final SECOND_FIELD:I = 0x7

.field public static final SHORT:I = 0x3

.field public static final SPECIFIC_TZ:Ljava/lang/String; = "zzzz"

.field public static final STANDALONE_DAY_FIELD:I = 0x19

.field public static final STANDALONE_MONTH:Ljava/lang/String; = "LLLL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDALONE_MONTH_FIELD:I = 0x1a

.field public static final STANDALONE_QUARTER_FIELD:I = 0x1c

.field public static final TIMEZONE_FIELD:I = 0x11

.field public static final TIMEZONE_GENERIC_FIELD:I = 0x18

.field public static final TIMEZONE_ISO_FIELD:I = 0x20

.field public static final TIMEZONE_ISO_LOCAL_FIELD:I = 0x21

.field public static final TIMEZONE_LOCALIZED_GMT_OFFSET_FIELD:I = 0x1f

.field public static final TIMEZONE_RFC_FIELD:I = 0x17

.field public static final TIMEZONE_SPECIAL_FIELD:I = 0x1d

.field public static final TIME_SEPARATOR:I = 0x25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_SKELETONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKDAY:Ljava/lang/String; = "EEEE"

.field public static final WEEK_OF_MONTH_FIELD:I = 0xd

.field public static final WEEK_OF_YEAR_FIELD:I = 0xc

.field public static final YEAR:Ljava/lang/String; = "y"

.field public static final YEAR_ABBR_MONTH:Ljava/lang/String; = "yMMM"

.field public static final YEAR_ABBR_MONTH_DAY:Ljava/lang/String; = "yMMMd"

.field public static final YEAR_ABBR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMMMEd"

.field public static final YEAR_ABBR_QUARTER:Ljava/lang/String; = "yQQQ"

.field public static final YEAR_FIELD:I = 0x1

.field public static final YEAR_MONTH:Ljava/lang/String; = "yMMMM"

.field public static final YEAR_MONTH_DAY:Ljava/lang/String; = "yMMMMd"

.field public static final YEAR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMMMMEEEEd"

.field public static final YEAR_NAME_FIELD:I = 0x1e

.field public static final YEAR_NUM_MONTH:Ljava/lang/String; = "yM"

.field public static final YEAR_NUM_MONTH_DAY:Ljava/lang/String; = "yMd"

.field public static final YEAR_NUM_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMEd"

.field public static final YEAR_QUARTER:Ljava/lang/String; = "yQQQQ"

.field public static final YEAR_WOY_FIELD:I = 0x12

.field public static final ZONE_SKELETONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field private static final serialVersionUID:J = 0x642ca1e4c22615fcL


# instance fields
.field private booleanAttributes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/DateFormat$BooleanAttribute;",
            ">;"
        }
    .end annotation
.end field

.field protected calendar:Landroid/icu/util/Calendar;

.field private capitalizationSetting:Landroid/icu/text/DisplayContext;

.field protected numberFormat:Landroid/icu/text/NumberFormat;

.field private serialVersionOnStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string/jumbo v0, "y"

    const-string v1, "QQQQ"

    const-string v2, "QQQ"

    const-string/jumbo v3, "yQQQQ"

    const-string/jumbo v4, "yQQQ"

    const-string v5, "MMMM"

    const-string v6, "MMM"

    const-string v7, "M"

    const-string/jumbo v8, "yMMMM"

    const-string/jumbo v9, "yMMM"

    const-string/jumbo v10, "yM"

    const-string v11, "d"

    const-string/jumbo v12, "yMMMMd"

    const-string/jumbo v13, "yMMMd"

    const-string/jumbo v14, "yMd"

    const-string v15, "EEEE"

    const-string v16, "E"

    const-string/jumbo v17, "yMMMMEEEEd"

    const-string/jumbo v18, "yMMMEd"

    const-string/jumbo v19, "yMEd"

    const-string v20, "MMMMd"

    const-string v21, "MMMd"

    const-string v22, "Md"

    const-string v23, "MMMMEEEEd"

    const-string v24, "MMMEd"

    const-string v25, "MEd"

    .line 995
    filled-new-array/range {v0 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormat;->DATE_SKELETONS:Ljava/util/List;

    const-string v1, "j"

    const-string v2, "H"

    const-string v3, "m"

    const-string v4, "jm"

    const-string v5, "Hm"

    const-string/jumbo v6, "s"

    const-string v7, "jms"

    const-string v8, "Hms"

    const-string v9, "ms"

    .line 1087
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormat;->TIME_SKELETONS:Ljava/util/List;

    const-string v1, "VVVV"

    const-string/jumbo v2, "vvvv"

    const-string/jumbo v3, "v"

    const-string/jumbo v4, "zzzz"

    const-string/jumbo v5, "z"

    const-string v6, "ZZZZ"

    .line 1158
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormat;->ZONE_SKELETONS:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1739
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 492
    const-class v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    .line 500
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    const/4 v0, 0x1

    .line 518
    iput v0, p0, Landroid/icu/text/DateFormat;->serialVersionOnStream:I

    return-void
.end method

.method static fixNumberFormatForDates(Landroid/icu/text/NumberFormat;)V
    .locals 2

    const/4 v0, 0x0

    .line 1468
    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 1469
    instance-of v1, p0, Landroid/icu/text/DecimalFormat;

    if-eqz v1, :cond_0

    .line 1470
    move-object v1, p0

    check-cast v1, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, v0}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    :cond_0
    const/4 v1, 0x1

    .line 1472
    invoke-virtual {p0, v1}, Landroid/icu/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 1473
    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    return-void
.end method

.method private static get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    and-int/lit16 v1, p1, 0x80

    if-gtz v1, :cond_1

    :cond_0
    if-eq p0, v0, :cond_2

    and-int/lit16 v1, p0, 0x80

    if-lez v1, :cond_2

    .line 1682
    :cond_1
    new-instance v0, Landroid/icu/impl/RelativeDateFormat;

    invoke-direct {v0, p1, p0, p2, p3}, Landroid/icu/impl/RelativeDateFormat;-><init>(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)V

    return-object v0

    :cond_2
    if-lt p1, v0, :cond_5

    const/4 v1, 0x3

    if-gt p1, v1, :cond_5

    if-lt p0, v0, :cond_4

    if-gt p0, v1, :cond_4

    if-nez p3, :cond_3

    .line 1694
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object p3

    .line 1698
    :cond_3
    :try_start_0
    invoke-virtual {p3, p0, p1, p2}, Landroid/icu/util/Calendar;->getDateTimeFormat(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    .line 1699
    sget-object p1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p3, p1}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object p1

    sget-object p2, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    .line 1700
    invoke-virtual {p3, p2}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object p2

    .line 1699
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1705
    :catch_0
    new-instance p0, Landroid/icu/text/SimpleDateFormat;

    const-string p1, "M/d/yy h:mm a"

    invoke-direct {p0, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1690
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal date style "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1687
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal time style "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 1422
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    .line 1432
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance()Landroid/icu/text/DateFormat;
    .locals 4

    .line 1282
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(I)Landroid/icu/text/DateFormat;
    .locals 3

    .line 1299
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1335
    invoke-static {p0, v0, p1, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateInstance(ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 2

    .line 1317
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateInstance(Landroid/icu/util/Calendar;I)Landroid/icu/text/DateFormat;
    .locals 1

    .line 1911
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/text/DateFormat;->getDateInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1

    const/4 v0, -0x1

    .line 1779
    invoke-static {p0, p1, v0, p2}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateInstance(Landroid/icu/util/Calendar;ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    .line 1762
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateTimeInstance()Landroid/icu/text/DateFormat;
    .locals 3

    .line 1346
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v1, v0, v2}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(II)Landroid/icu/text/DateFormat;
    .locals 2

    .line 1367
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateTimeInstance(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1

    const/4 v0, 0x0

    .line 1405
    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateTimeInstance(IILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    .line 1386
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateTimeInstance(Landroid/icu/util/Calendar;II)Landroid/icu/text/DateFormat;
    .locals 1

    .line 1945
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 0

    if-eqz p0, :cond_0

    .line 1864
    invoke-static {p1, p2, p3, p0}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0

    .line 1862
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Calendar must be supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getDateTimeInstance(Landroid/icu/util/Calendar;IILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 1838
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Landroid/icu/text/DateFormat;
    .locals 1

    const/4 v0, 0x3

    .line 1413
    invoke-static {v0, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(II)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;
    .locals 1

    .line 1897
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateFormat;->getInstance(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1

    const/4 v0, 0x3

    .line 1887
    invoke-static {p0, v0, v0, p1}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    .line 1875
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p0, v0, v0, p1}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1

    .line 2022
    invoke-static {p2}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 2023
    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2024
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 2025
    invoke-virtual {v0, p0}, Landroid/icu/text/SimpleDateFormat;->setCalendar(Landroid/icu/util/Calendar;)V

    return-object v0
.end method

.method public static final getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 2004
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/icu/text/DateFormat;->getPatternInstance(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;
    .locals 1

    .line 1957
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateFormat;->getPatternInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstanceForSkeleton(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1

    .line 1985
    invoke-static {p1}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 1986
    invoke-virtual {v0, p0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1987
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static final getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 1971
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getPatternInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getPatternInstance(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 2107
    invoke-static {p0, p1, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getPatternInstance(Landroid/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 2088
    invoke-static {p0, p1, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Landroid/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getPatternInstance(Ljava/lang/String;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 2040
    invoke-static {p0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getPatternInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 2070
    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getPatternInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 2055
    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance()Landroid/icu/text/DateFormat;
    .locals 4

    .line 1227
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(I)Landroid/icu/text/DateFormat;
    .locals 3

    .line 1241
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1271
    invoke-static {v0, p0, p1, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance(ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 2

    .line 1256
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Landroid/icu/text/DateFormat;->get(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance(Landroid/icu/util/Calendar;I)Landroid/icu/text/DateFormat;
    .locals 1

    .line 1926
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/text/DateFormat;->getTimeInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1

    const/4 v0, -0x1

    .line 1815
    invoke-static {p0, v0, p1, p2}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getTimeInstance(Landroid/icu/util/Calendar;ILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    .line 1797
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1722
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1723
    iget p1, p0, Landroid/icu/text/DateFormat;->serialVersionOnStream:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1725
    sget-object p1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object p1, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 1729
    :cond_0
    iget-object p1, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    if-nez p1, :cond_1

    .line 1730
    const-class p1, Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-static {p1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    .line 1733
    :cond_1
    iput v0, p0, Landroid/icu/text/DateFormat;->serialVersionOnStream:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1661
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat;

    .line 1662
    iget-object v1, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    iput-object v1, v0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 1663
    iget-object p0, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-eqz p0, :cond_0

    .line 1664
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/NumberFormat;

    iput-object p0, v0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1646
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1647
    :cond_1
    check-cast p1, Landroid/icu/text/DateFormat;

    .line 1648
    iget-object v2, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    if-eqz v2, :cond_6

    iget-object v3, p1, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    if-eqz v3, :cond_6

    .line 1649
    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-eqz v2, :cond_6

    iget-object v3, p1, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-eqz v3, :cond_6

    .line 1651
    invoke-virtual {v2, v3}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object p0, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    iget-object p1, p1, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    if-ne p0, p1, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public final format(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 628
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .line 551
    instance-of v0, p1, Landroid/icu/util/Calendar;

    if-eqz v0, :cond_0

    .line 552
    check-cast p1, Landroid/icu/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 553
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 554
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 555
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 556
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 559
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot format given Object ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") as a Date"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 617
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 618
    iget-object p1, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z
    .locals 1

    .line 1597
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    if-ne p1, v0, :cond_0

    .line 1598
    sget-object p1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 1600
    :cond_0
    iget-object p0, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCalendar()Landroid/icu/util/Calendar;
    .locals 0

    .line 1451
    iget-object p0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method public getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .locals 1

    .line 1624
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1625
    :cond_0
    sget-object p0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    :goto_0
    return-object p0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 0

    .line 1483
    iget-object p0, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    return-object p0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 0

    .line 1501
    iget-object p0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1635
    iget-object p0, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result p0

    return p0
.end method

.method public isCalendarLenient()Z
    .locals 0

    .line 1562
    iget-object p0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result p0

    return p0
.end method

.method public isLenient()Z
    .locals 1

    .line 1538
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 1539
    invoke-virtual {p0, v0}, Landroid/icu/text/DateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 1540
    invoke-virtual {p0, v0}, Landroid/icu/text/DateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 666
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 667
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    .line 668
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 669
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unparseable date: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 670
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 3

    .line 749
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 750
    iget-object v1, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 751
    iget-object v2, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->clear()V

    .line 752
    iget-object v2, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0, p1, v2, p2}, Landroid/icu/text/DateFormat;->parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V

    .line 753
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 755
    :try_start_0
    iget-object p1, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 760
    :catch_0
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 761
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_0
    const/4 p1, 0x0

    .line 765
    :goto_0
    iget-object p0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    return-object p1
.end method

.method public abstract parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 778
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;
    .locals 1

    .line 1573
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat$BooleanAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    sget-object p1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    :cond_0
    if-eqz p2, :cond_1

    .line 1578
    iget-object p2, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1582
    :cond_1
    iget-object p2, p0, Landroid/icu/text/DateFormat;->booleanAttributes:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public setCalendar(Landroid/icu/util/Calendar;)V
    .locals 0

    .line 1442
    iput-object p1, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    return-void
.end method

.method public setCalendarLenient(Z)V
    .locals 0

    .line 1553
    iget-object p0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setLenient(Z)V

    return-void
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 2

    .line 1611
    invoke-virtual {p1}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne v0, v1, :cond_0

    .line 1612
    iput-object p1, p0, Landroid/icu/text/DateFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    :cond_0
    return-void
.end method

.method public setLenient(Z)V
    .locals 1

    .line 1527
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 1528
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v0, p1}, Landroid/icu/text/DateFormat;->setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;

    .line 1529
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v0, p1}, Landroid/icu/text/DateFormat;->setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;

    return-void
.end method

.method public setNumberFormat(Landroid/icu/text/NumberFormat;)V
    .locals 0

    .line 1460
    invoke-virtual {p1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/NumberFormat;

    iput-object p1, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 1461
    iget-object p0, p0, Landroid/icu/text/DateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-static {p0}, Landroid/icu/text/DateFormat;->fixNumberFormatForDates(Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)V
    .locals 0

    .line 1492
    iget-object p0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    return-void
.end method
