.class public Landroid/icu/impl/data/HolidayBundle_en_US;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en_US.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0x12

    new-array v0, v0, [Landroid/icu/util/Holiday;

    .line 25
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x2

    const-string v7, "Martin Luther King Day"

    const/16 v8, 0x7c2

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v5, 0x1

    const/16 v6, 0xf

    const/4 v7, 0x2

    const-string v8, "Presidents\' Day"

    const/16 v9, 0x7b8

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v6, 0x1

    const/16 v7, 0x16

    const-string v8, "Washington\'s Birthday"

    const/16 v9, 0x6f0

    const/16 v10, 0x7b7

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;II)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v9, 0x4

    const/16 v10, 0x8

    const/4 v11, 0x1

    const-string v12, "Mother\'s Day"

    const/16 v13, 0x77a

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/4 v7, 0x6

    aput-object v1, v0, v7

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v10, 0x1f

    const/4 v11, -0x2

    const-string v12, "Memorial Day"

    const/16 v13, 0x7b3

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/4 v8, 0x7

    aput-object v1, v0, v8

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v10, 0x4

    const/16 v11, 0x1e

    const-string v12, "Memorial Day"

    const/16 v13, 0x74c

    const/16 v14, 0x7b2

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;II)V

    const/16 v8, 0x8

    aput-object v1, v0, v8

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/4 v10, 0x5

    const/16 v11, 0xf

    const/4 v12, 0x1

    const-string v13, "Father\'s Day"

    const/16 v14, 0x7a4

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v8, 0x9

    aput-object v1, v0, v8

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v9, "Independence Day"

    const/16 v10, 0x6f0

    invoke-direct {v1, v7, v6, v9, v10}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;I)V

    const/16 v6, 0xa

    aput-object v1, v0, v6

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v10, 0x8

    const/4 v11, 0x1

    const/4 v12, 0x2

    const-string v13, "Labor Day"

    const/16 v14, 0x766

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v7, 0xb

    aput-object v1, v0, v7

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v9, "Election Day"

    invoke-direct {v1, v6, v4, v5, v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/16 v5, 0xc

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v10, 0x9

    const/16 v11, 0x8

    const-string v13, "Columbus Day"

    const/16 v14, 0x7b3

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v5, 0xd

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v5, 0x1f

    const-string v9, "Halloween"

    invoke-direct {v1, v8, v5, v9}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    const/16 v5, 0xe

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string v5, "Veterans\' Day"

    const/16 v8, 0x77e

    invoke-direct {v1, v6, v7, v5, v8}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;I)V

    const/16 v5, 0xf

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const/16 v7, 0xa

    const/16 v8, 0x16

    const/4 v9, 0x5

    const-string v10, "Thanksgiving"

    const/16 v11, 0x747

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v5, 0x10

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    const/16 v5, 0x11

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_US;->fHolidays:[Landroid/icu/util/Holiday;

    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "holidays"

    aput-object v4, v1, v2

    .line 51
    sget-object v4, Landroid/icu/impl/data/HolidayBundle_en_US;->fHolidays:[Landroid/icu/util/Holiday;

    aput-object v4, v1, v3

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_US;->fContents:[[Ljava/lang/Object;

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

    .line 55
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en_US;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
