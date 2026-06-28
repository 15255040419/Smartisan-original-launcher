.class public Landroid/icu/impl/data/HolidayBundle_en_CA;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en_CA.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v0, 0xa

    new-array v1, v0, [Landroid/icu/util/Holiday;

    .line 23
    sget-object v2, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const/4 v4, 0x4

    const/16 v5, 0x13

    const-string v6, "Victoria Day"

    invoke-direct {v2, v4, v5, v3, v6}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const/4 v6, 0x6

    const-string v7, "Canada Day"

    invoke-direct {v2, v6, v5, v3, v7}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v7, 0x2

    aput-object v2, v1, v7

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const/4 v8, 0x7

    const-string v9, "Civic Holiday"

    invoke-direct {v2, v8, v5, v7, v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v9, 0x3

    aput-object v2, v1, v9

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const-string v9, "Labor Day"

    const/16 v10, 0x8

    invoke-direct {v2, v10, v5, v7, v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const/16 v4, 0x9

    const-string v11, "Thanksgiving"

    invoke-direct {v2, v4, v10, v7, v11}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v11, 0x5

    aput-object v2, v1, v11

    new-instance v2, Landroid/icu/util/SimpleHoliday;

    const/16 v11, 0xb

    const-string v12, "Remembrance Day"

    invoke-direct {v2, v0, v11, v3, v12}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v6

    sget-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    aput-object v0, v1, v8

    sget-object v0, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v0, v1, v10

    sget-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    aput-object v0, v1, v4

    sput-object v1, Landroid/icu/impl/data/HolidayBundle_en_CA;->fHolidays:[Landroid/icu/util/Holiday;

    new-array v0, v7, [[Ljava/lang/Object;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "holidays"

    aput-object v2, v1, v3

    .line 42
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_en_CA;->fHolidays:[Landroid/icu/util/Holiday;

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v9, v1, v3

    const-string v2, "Labour Day"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_CA;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getContents()[[Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en_CA;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
