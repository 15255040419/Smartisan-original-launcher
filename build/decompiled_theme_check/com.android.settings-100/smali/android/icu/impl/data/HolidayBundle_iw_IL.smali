.class public Landroid/icu/impl/data/HolidayBundle_iw_IL;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_iw_IL.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/icu/util/Holiday;

    .line 22
    sget-object v1, Landroid/icu/util/HebrewHoliday;->ROSH_HASHANAH:Landroid/icu/util/HebrewHoliday;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/HebrewHoliday;->YOM_KIPPUR:Landroid/icu/util/HebrewHoliday;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/util/HebrewHoliday;->HANUKKAH:Landroid/icu/util/HebrewHoliday;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/HebrewHoliday;->PURIM:Landroid/icu/util/HebrewHoliday;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/HebrewHoliday;->PASSOVER:Landroid/icu/util/HebrewHoliday;

    const/4 v5, 0x4

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/HebrewHoliday;->SHAVUOT:Landroid/icu/util/HebrewHoliday;

    const/4 v5, 0x5

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/HebrewHoliday;->SELIHOT:Landroid/icu/util/HebrewHoliday;

    const/4 v5, 0x6

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fHolidays:[Landroid/icu/util/Holiday;

    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "holidays"

    aput-object v4, v1, v2

    .line 32
    sget-object v4, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fHolidays:[Landroid/icu/util/Holiday;

    aput-object v4, v1, v3

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getContents()[[Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
