.class public Landroid/icu/impl/data/HolidayBundle_el_GR;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_el_GR.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/icu/util/Holiday;

    .line 24
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/SimpleHoliday;->EPIPHANY:Landroid/icu/util/SimpleHoliday;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v4, 0x2

    const/16 v5, 0x19

    const-string v6, "Independence Day"

    invoke-direct {v1, v4, v5, v2, v6}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/SimpleHoliday;->ASSUMPTION:Landroid/icu/util/SimpleHoliday;

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v5, 0x9

    const/16 v6, 0x1c

    const-string v7, "Ochi Day"

    invoke-direct {v1, v5, v6, v2, v7}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v6, 0x5

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    const/4 v6, 0x6

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    const/4 v6, 0x7

    aput-object v1, v0, v6

    new-instance v1, Landroid/icu/util/EasterHoliday;

    const/4 v6, -0x2

    const-string v7, "Good Friday"

    invoke-direct {v1, v6, v3, v7}, Landroid/icu/util/EasterHoliday;-><init>(IZLjava/lang/String;)V

    const/16 v6, 0x8

    aput-object v1, v0, v6

    new-instance v1, Landroid/icu/util/EasterHoliday;

    const-string v6, "Easter Sunday"

    invoke-direct {v1, v2, v3, v6}, Landroid/icu/util/EasterHoliday;-><init>(IZLjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/EasterHoliday;

    const-string v5, "Easter Monday"

    invoke-direct {v1, v3, v3, v5}, Landroid/icu/util/EasterHoliday;-><init>(IZLjava/lang/String;)V

    const/16 v5, 0xa

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/EasterHoliday;

    const/16 v5, 0x32

    const-string v6, "Whit Monday"

    invoke-direct {v1, v5, v3, v6}, Landroid/icu/util/EasterHoliday;-><init>(IZLjava/lang/String;)V

    const/16 v5, 0xb

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_el_GR;->fHolidays:[Landroid/icu/util/Holiday;

    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "holidays"

    aput-object v4, v1, v2

    .line 44
    sget-object v4, Landroid/icu/impl/data/HolidayBundle_el_GR;->fHolidays:[Landroid/icu/util/Holiday;

    aput-object v4, v1, v3

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_el_GR;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getContents()[[Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_el_GR;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
