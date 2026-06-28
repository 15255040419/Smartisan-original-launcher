.class public Landroid/icu/impl/data/HolidayBundle_fr_CA;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_fr_CA.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0xe

    new-array v0, v0, [Landroid/icu/util/Holiday;

    .line 24
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "New Year\'s Day"

    invoke-direct {v1, v3, v2, v3, v4}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v4, 0x4

    const/16 v5, 0x13

    const-string v6, "Victoria Day"

    invoke-direct {v1, v4, v5, v3, v6}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v5, 0x5

    const/16 v6, 0x18

    const-string v7, "National Day"

    invoke-direct {v1, v5, v6, v3, v7}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v7, 0x6

    const-string v8, "Canada Day"

    invoke-direct {v1, v7, v2, v3, v8}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v8, 0x3

    aput-object v1, v0, v8

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v8, 0x7

    const-string v9, "Civic Holiday"

    invoke-direct {v1, v8, v2, v6, v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v4, 0x8

    const-string v9, "Labour Day"

    invoke-direct {v1, v4, v2, v6, v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v5, 0x9

    const-string v9, "Thanksgiving"

    invoke-direct {v1, v5, v4, v6, v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v7, 0xb

    const/16 v9, 0xa

    const-string v10, "Remembrance Day"

    invoke-direct {v1, v9, v7, v3, v10}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    const/16 v4, 0xc

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    const/16 v4, 0xd

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fHolidays:[Landroid/icu/util/Holiday;

    new-array v0, v2, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v4, "holidays"

    aput-object v4, v1, v3

    .line 42
    sget-object v4, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fHolidays:[Landroid/icu/util/Holiday;

    aput-object v4, v1, v2

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fContents:[[Ljava/lang/Object;

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

    .line 46
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
