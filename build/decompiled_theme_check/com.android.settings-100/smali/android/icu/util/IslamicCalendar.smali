.class public Landroid/icu/util/IslamicCalendar;
.super Landroid/icu/util/Calendar;
.source "IslamicCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/IslamicCalendar$CalculationType;
    }
.end annotation


# static fields
.field private static final ASTRONOMICAL_EPOC:J = 0x1dbb17L

.field private static final CIVIL_EPOC:J = 0x1dbb18L

.field public static final DHU_AL_HIJJAH:I = 0xb

.field public static final DHU_AL_QIDAH:I = 0xa

.field private static final HIJRA_MILLIS:J = -0x26ac5419b000L

.field public static final JUMADA_1:I = 0x4

.field public static final JUMADA_2:I = 0x5

.field private static final LIMITS:[[I

.field public static final MUHARRAM:I = 0x0

.field public static final RABI_1:I = 0x2

.field public static final RABI_2:I = 0x3

.field public static final RAJAB:I = 0x6

.field public static final RAMADAN:I = 0x8

.field public static final SAFAR:I = 0x1

.field public static final SHABAN:I = 0x7

.field public static final SHAWWAL:I = 0x9

.field private static final UMALQURA_MONTHLENGTH:[I

.field private static final UMALQURA_YEAR_END:I = 0x640

.field private static final UMALQURA_YEAR_START:I = 0x514

.field private static final UMALQURA_YEAR_START_ESTIMATE_FIX:[B

.field private static astro:Landroid/icu/impl/CalendarAstronomer; = null

.field private static cache:Landroid/icu/impl/CalendarCache; = null

.field private static final serialVersionUID:J = -0x56c86ac454dd7c0dL


# instance fields
.field private cType:Landroid/icu/util/IslamicCalendar$CalculationType;

.field private civil:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 347
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v3, [I

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v3, [I

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/IslamicCalendar;->LIMITS:[[I

    const/16 v0, 0x12d

    new-array v1, v0, [I

    .line 377
    fill-array-data v1, :array_9

    sput-object v1, Landroid/icu/util/IslamicCalendar;->UMALQURA_MONTHLENGTH:[I

    new-array v0, v0, [B

    .line 496
    fill-array-data v0, :array_a

    sput-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_YEAR_START_ESTIMATE_FIX:[B

    .line 681
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {v0}, Landroid/icu/impl/CalendarAstronomer;-><init>()V

    sput-object v0, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    .line 683
    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    sput-object v0, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xb
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x32
        0x33
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x1d
        0x1e
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
        0x162
        0x163
    .end array-data

    :array_6
    .array-data 4
        -0x1
        -0x1
        0x5
        0x5
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x4c4b40
        0x4c4b40
    .end array-data

    :array_9
    .array-data 4
        0xaaa
        0xd54
        0xec9
        0x6d4
        0x6ea
        0x36c
        0xaad
        0x555
        0x6a9
        0x792
        0xba9
        0x5d4
        0xada
        0x55c
        0xd2d
        0x695
        0x74a
        0xb54
        0xb6a
        0x5ad
        0x4ae
        0xa4f
        0x517
        0x68b
        0x6a5
        0xad5
        0x2d6
        0x95b
        0x49d
        0xa4d
        0xd26
        0xd95
        0x5ac
        0x9b6
        0x2ba
        0xa5b
        0x52b
        0xa95
        0x6ca
        0xae9
        0x2f4
        0x976
        0x2b6
        0x956
        0xaca
        0xba4
        0xbd2
        0x5d9
        0x2dc
        0x96d
        0x54d
        0xaa5
        0xb52
        0xba5
        0x5b4
        0x9b6
        0x557
        0x297
        0x54b
        0x6a3
        0x752
        0xb65
        0x56a
        0xaab
        0x52b
        0xc95
        0xd4a
        0xda5
        0x5ca
        0xad6
        0x957
        0x4ab
        0x94b
        0xaa5
        0xb52
        0xb6a
        0x575
        0x276
        0x8b7
        0x45b
        0x555
        0x5a9
        0x5b4
        0x9da
        0x4dd
        0x26e
        0x936
        0xaaa
        0xd54
        0xdb2
        0x5d5
        0x2da
        0x95b
        0x4ab
        0xa55
        0xb49
        0xb64
        0xb71
        0x5b4
        0xab5
        0xa55
        0xd25
        0xe92
        0xec9
        0x6d4
        0xae9
        0x96b
        0x4ab
        0xa93
        0xd49
        0xda4
        0xdb2
        0xab9
        0x4ba
        0xa5b
        0x52b
        0xa95
        0xb2a
        0xb55
        0x55c
        0x4bd
        0x23d
        0x91d
        0xa95
        0xb4a
        0xb5a
        0x56d
        0x2b6
        0x93b
        0x49b
        0x655
        0x6a9
        0x754
        0xb6a
        0x56c
        0xaad
        0x555
        0xb29
        0xb92
        0xba9
        0x5d4
        0xada
        0x55a
        0xaab
        0x595
        0x749
        0x764
        0xbaa
        0x5b5
        0x2b6
        0xa56
        0xe4d
        0xb25
        0xb52
        0xb6a
        0x5ad
        0x2ae
        0x92f
        0x497
        0x64b
        0x6a5
        0x6ac
        0xad6
        0x55d
        0x49d
        0xa4d
        0xd16
        0xd95
        0x5aa
        0x5b5
        0x2da
        0x95b
        0x4ad
        0x595
        0x6ca
        0x6e4
        0xaea
        0x4f5
        0x2b6
        0x956
        0xaaa
        0xb54
        0xbd2
        0x5d9
        0x2ea
        0x96d
        0x4ad
        0xa95
        0xb4a
        0xba5
        0x5b2
        0x9b5
        0x4d6
        0xa97
        0x547
        0x693
        0x749
        0xb55
        0x56a
        0xa6b
        0x52b
        0xa8b
        0xd46
        0xda3
        0x5ca
        0xad6
        0x4db
        0x26b
        0x94b
        0xaa5
        0xb52
        0xb69
        0x575
        0x176
        0x8b7
        0x25b
        0x52b
        0x565
        0x5b4
        0x9da
        0x4ed
        0x16d
        0x8b6
        0xaa6
        0xd52
        0xda9
        0x5d4
        0xada
        0x95b
        0x4ab
        0x653
        0x729
        0x762
        0xba9
        0x5b2
        0xab5
        0x555
        0xb25
        0xd92
        0xec9
        0x6d2
        0xae9
        0x56b
        0x4ab
        0xa55
        0xd29
        0xd54
        0xdaa
        0x9b5
        0x4ba
        0xa3b
        0x49b
        0xa4d
        0xaaa
        0xad5
        0x2da
        0x95d
        0x45e
        0xa2e
        0xc9a
        0xd55
        0x6b2
        0x6b9
        0x4ba
        0xa5d
        0x52d
        0xa95
        0xb52
        0xba8
        0xbb4
        0x5b9
        0x2da
        0x95a
        0xb4a
        0xda4
        0xed1
        0x6e8
        0xb6a
        0x56d
        0x535
        0x695
        0xd4a
        0xda8
        0xdd4
        0x6da
        0x55b
        0x29d
        0x62b
        0xb15
        0xb4a
        0xb95
        0x5aa
        0xaae
        0x92e
        0xc8f
        0x527
        0x695
        0x6aa
        0xad6
        0x55d
        0x29d
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 176
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 262
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 692
    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    .line 699
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 263
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;->set(II)V

    const/4 p1, 0x2

    .line 264
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/IslamicCalendar;->set(II)V

    const/4 p1, 0x5

    .line 265
    invoke-virtual {p0, p1, p3}, Landroid/icu/util/IslamicCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2

    .line 287
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 692
    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    .line 699
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 288
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;->set(II)V

    const/4 p1, 0x2

    .line 289
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/IslamicCalendar;->set(II)V

    const/4 p1, 0x5

    .line 290
    invoke-virtual {p0, p1, p3}, Landroid/icu/util/IslamicCalendar;->set(II)V

    const/16 p1, 0xb

    .line 291
    invoke-virtual {p0, p1, p4}, Landroid/icu/util/IslamicCalendar;->set(II)V

    const/16 p1, 0xc

    .line 292
    invoke-virtual {p0, p1, p5}, Landroid/icu/util/IslamicCalendar;->set(II)V

    const/16 p1, 0xd

    .line 293
    invoke-virtual {p0, p1, p6}, Landroid/icu/util/IslamicCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1

    .line 187
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 p1, 0x1

    .line 692
    iput-boolean p1, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    .line 699
    sget-object p1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object p1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 234
    invoke-direct {p0, p2}, Landroid/icu/util/IslamicCalendar;->setCalcTypeForLocale(Landroid/icu/util/ULocale;)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/IslamicCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 221
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 209
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 246
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 692
    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    .line 699
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 247
    invoke-virtual {p0, p1}, Landroid/icu/util/IslamicCalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 198
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method private static final civilLeapYear(I)Z
    .locals 1

    const/16 v0, 0xb

    mul-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xe

    .line 553
    rem-int/lit8 p0, p0, 0x1e

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private monthStart(II)J
    .locals 5

    .line 588
    div-int/lit8 v0, p2, 0xc

    add-int/2addr v0, p1

    .line 589
    rem-int/lit8 v1, p2, 0xc

    .line 591
    iget-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v3, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v3, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v3, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v2, v3, :cond_0

    const/16 v2, 0x514

    if-ge p1, v2, :cond_0

    goto :goto_1

    .line 596
    :cond_0
    iget-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v3, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v1

    int-to-long p0, v0

    .line 597
    invoke-static {p0, p1}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide p0

    goto :goto_2

    .line 598
    :cond_1
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_3

    .line 599
    invoke-direct {p0, p1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 601
    invoke-virtual {p0, p1, v2}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-wide p0, v0

    goto :goto_2

    :cond_3
    const-wide/16 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const-wide p0, 0x403d800000000000L    # 29.5

    int-to-double v1, v1

    mul-double/2addr v1, p0

    .line 594
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-long p0, p0

    add-int/lit8 p2, v0, -0x1

    mul-int/lit16 p2, p2, 0x162

    int-to-long v1, p2

    add-long/2addr p0, v1

    mul-int/lit8 v0, v0, 0xb

    add-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    .line 595
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    add-long/2addr p0, v0

    :goto_2
    return-wide p0
.end method

.method static final moonAge(J)D
    .locals 4

    .line 663
    sget-object v0, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    monitor-enter v0

    .line 664
    :try_start_0
    sget-object v1, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    invoke-virtual {v1, p0, p1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 665
    sget-object p0, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getMoonAge()D

    move-result-wide p0

    .line 666
    monitor-exit v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v2

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x4076800000000000L    # 360.0

    sub-double/2addr p0, v0

    :cond_0
    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 978
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 980
    iget-object p1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-nez p1, :cond_1

    .line 983
    iget-boolean p1, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    if-eqz p1, :cond_0

    sget-object p1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    :goto_0
    iput-object p1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    goto :goto_2

    .line 986
    :cond_1
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    :goto_2
    return-void
.end method

.method private setCalcTypeForLocale(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 949
    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "islamic-civil"

    .line 950
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    sget-object p1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, p1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0

    :cond_0
    const-string v0, "islamic-umalqura"

    .line 952
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    sget-object p1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, p1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0

    :cond_1
    const-string v0, "islamic-tbla"

    .line 954
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 955
    sget-object p1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, p1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0

    :cond_2
    const-string v0, "islamic"

    .line 956
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 957
    sget-object p1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, p1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_0

    .line 959
    :cond_3
    sget-object p1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, p1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    :goto_0
    return-void
.end method

.method private static final trueMonthStart(J)J
    .locals 10

    .line 618
    sget-object v0, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    .line 620
    sget-wide v2, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    long-to-double v0, p0

    const-wide v2, 0x403d87d4abcb41d5L    # 29.530588853

    mul-double/2addr v0, v2

    .line 624
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    const-wide v4, -0x26ac5419b000L

    add-long/2addr v0, v4

    .line 626
    invoke-static {v0, v1}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    .line 628
    invoke-static {v0, v1}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_1

    :cond_0
    sub-long/2addr v0, v2

    .line 632
    invoke-static {v0, v1}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v6

    cmpl-double v6, v6, v8

    if-gez v6, :cond_0

    goto :goto_0

    :cond_1
    add-long/2addr v0, v2

    .line 639
    invoke-static {v0, v1}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v6

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_1

    :goto_0
    sub-long/2addr v0, v4

    .line 643
    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 645
    sget-object v2, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    invoke-virtual {v2, p0, p1, v0, v1}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    :cond_2
    return-wide v0
.end method

.method private yearStart(I)J
    .locals 4

    .line 562
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x514

    if-lt p1, v0, :cond_3

    const/16 v0, 0x640

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0xc

    int-to-long p0, p1

    .line 567
    invoke-static {p0, p1}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide p0

    goto :goto_1

    .line 568
    :cond_1
    iget-object p0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne p0, v0, :cond_2

    add-int/lit16 p1, p1, -0x514

    const-wide v0, 0x407625e00d1b7176L    # 354.3672

    int-to-double v2, p1

    mul-double/2addr v2, v0

    const-wide v0, 0x411c188833333333L    # 460322.05

    add-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v0

    double-to-int p0, v2

    .line 573
    sget-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_YEAR_START_ESTIMATE_FIX:[B

    aget-byte p1, v0, p1

    add-int/2addr p0, p1

    int-to-long p0, p0

    goto :goto_1

    :cond_2
    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 p0, p1, -0x1

    mul-int/lit16 p0, p0, 0x162

    int-to-long v0, p0

    mul-int/lit8 p1, p1, 0xb

    add-int/lit8 p1, p1, 0x3

    int-to-double p0, p1

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v2

    .line 565
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    add-long/2addr p0, v0

    :goto_1
    return-wide p0
.end method


# virtual methods
.method public getCalculationType()Landroid/icu/util/IslamicCalendar$CalculationType;
    .locals 0

    .line 942
    iget-object p0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 968
    iget-object p0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-nez p0, :cond_0

    const-string p0, "islamic"

    return-object p0

    .line 974
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleComputeFields(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v1, v1

    const-wide/32 v3, 0x1dbb18

    sub-long v3, v1, v3

    .line 816
    iget-object v5, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    const-wide/16 v9, 0x1d

    const-wide v11, 0x40c4c38000000000L    # 10631.0

    const-wide/16 v13, 0x2996

    const-wide/16 v15, 0x1e

    const-wide/16 v17, 0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_a

    iget-object v5, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v5, v6, :cond_0

    goto/16 :goto_3

    .line 824
    :cond_0
    iget-object v1, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v2, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v1, v2, :cond_3

    long-to-double v1, v3

    const-wide v5, 0x403d87d4abcb41d5L    # 29.530588853

    div-double/2addr v1, v5

    .line 826
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v9, v1

    mul-double/2addr v9, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v5

    .line 828
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-long v5, v5

    sub-long v5, v3, v5

    const-wide/16 v9, 0x19

    cmp-long v2, v5, v9

    if-ltz v2, :cond_1

    .line 830
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/IslamicCalendar;->internalGetTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmpl-double v2, v5, v9

    if-lez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_0
    int-to-long v5, v1

    .line 837
    invoke-static {v5, v6}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 842
    :cond_2
    div-int/lit8 v2, v1, 0xc

    add-int/2addr v2, v8

    .line 843
    rem-int/lit8 v1, v1, 0xc

    move/from16 v19, v2

    move v2, v1

    move/from16 v1, v19

    goto/16 :goto_4

    .line 844
    :cond_3
    iget-object v1, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v2, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v1, v2, :cond_9

    const/16 v1, 0x514

    .line 845
    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-gez v1, :cond_4

    mul-long/2addr v15, v3

    add-long v1, v15, v13

    long-to-double v1, v1

    div-double/2addr v1, v11

    .line 848
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-long v5, v3, v9

    .line 849
    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v9

    sub-long/2addr v5, v9

    long-to-double v5, v5

    const-wide v9, 0x403d800000000000L    # 29.5

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    const/16 v5, 0xb

    .line 850
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto/16 :goto_4

    :cond_4
    const/16 v1, 0x513

    move v5, v1

    move-wide/from16 v1, v17

    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-lez v1, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 856
    invoke-direct {v0, v5}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v1

    sub-long v1, v3, v1

    add-long v1, v1, v17

    .line 857
    invoke-virtual {v0, v5}, Landroid/icu/util/IslamicCalendar;->handleGetYearLength(I)I

    move-result v6

    int-to-long v9, v6

    cmp-long v6, v1, v9

    if-nez v6, :cond_6

    const/16 v9, 0xb

    goto :goto_2

    .line 860
    :cond_6
    invoke-virtual {v0, v5}, Landroid/icu/util/IslamicCalendar;->handleGetYearLength(I)I

    move-result v6

    int-to-long v9, v6

    cmp-long v6, v1, v9

    if-gez v6, :cond_5

    .line 861
    invoke-virtual {v0, v5, v7}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v6

    move v9, v7

    :goto_1
    int-to-long v10, v6

    cmp-long v6, v1, v10

    if-lez v6, :cond_8

    sub-long/2addr v1, v10

    add-int/lit8 v9, v9, 0x1

    .line 866
    invoke-virtual {v0, v5, v9}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v6

    goto :goto_1

    :cond_7
    move v9, v7

    :cond_8
    :goto_2
    move v1, v5

    move v2, v9

    goto :goto_4

    :cond_9
    move v1, v7

    move v2, v1

    goto :goto_4

    .line 817
    :cond_a
    :goto_3
    iget-object v5, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v5, v6, :cond_b

    const-wide/32 v3, 0x1dbb17

    sub-long v3, v1, v3

    :cond_b
    mul-long/2addr v15, v3

    add-long v1, v15, v13

    long-to-double v1, v1

    div-double/2addr v1, v11

    .line 821
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-long v5, v3, v9

    .line 822
    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    move-result-wide v9

    sub-long/2addr v5, v9

    long-to-double v5, v5

    const-wide v9, 0x403d800000000000L    # 29.5

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    const/16 v5, 0xb

    .line 823
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 877
    :goto_4
    invoke-direct {v0, v1, v2}, Landroid/icu/util/IslamicCalendar;->monthStart(II)J

    move-result-wide v5

    sub-long v5, v3, v5

    long-to-int v5, v5

    add-int/2addr v5, v8

    .line 880
    invoke-direct {v0, v1, v7}, Landroid/icu/util/IslamicCalendar;->monthStart(II)J

    move-result-wide v9

    sub-long/2addr v3, v9

    add-long v3, v3, v17

    long-to-int v3, v3

    .line 883
    invoke-virtual {v0, v7, v7}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    .line 884
    invoke-virtual {v0, v8, v1}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    const/16 v4, 0x13

    .line 885
    invoke-virtual {v0, v4, v1}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    const/4 v1, 0x2

    .line 886
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    const/4 v1, 0x5

    .line 887
    invoke-virtual {v0, v1, v5}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    const/4 v1, 0x6

    .line 888
    invoke-virtual {v0, v1, v3}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 2

    .line 775
    invoke-direct {p0, p1, p2}, Landroid/icu/util/IslamicCalendar;->monthStart(II)J

    move-result-wide p1

    iget-object p0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object p3, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne p0, p3, :cond_0

    const-wide/32 v0, 0x1dbb17

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x1dbb18

    :goto_0
    add-long/2addr p1, v0

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    long-to-int p0, p1

    return p0
.end method

.method protected handleGetExtendedYear()I
    .locals 3

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 787
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 788
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->internalGet(II)I

    move-result p0

    goto :goto_0

    .line 790
    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/IslamicCalendar;->internalGet(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected handleGetLimit(II)I
    .locals 0

    .line 488
    sget-object p0, Landroid/icu/util/IslamicCalendar;->LIMITS:[[I

    aget-object p0, p0, p1

    aget p0, p0, p2

    return p0
.end method

.method protected handleGetMonthLength(II)I
    .locals 5

    .line 716
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    const/16 v2, 0xb

    const/16 v3, 0x1d

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    const/16 v4, 0x514

    if-ne v0, v1, :cond_0

    if-lt p1, v4, :cond_3

    const/16 v0, 0x640

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    iget-object p0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1

    sub-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p1, p2

    add-int/lit8 p0, p1, 0x1

    int-to-long v0, p0

    .line 726
    invoke-static {v0, v1}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v0

    int-to-long p0, p1

    invoke-static {p0, p1}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int v3, v0

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v4

    sub-int/2addr v2, p2

    shl-int p0, v1, v2

    .line 731
    sget-object p2, Landroid/icu/util/IslamicCalendar;->UMALQURA_MONTHLENGTH:[I

    aget p1, p2, p1

    and-int/2addr p0, p1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x1e

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 p0, p2, 0x1

    .line 719
    rem-int/lit8 p0, p0, 0x2

    add-int/2addr v3, p0

    if-ne p2, v2, :cond_4

    .line 720
    invoke-static {p1}, Landroid/icu/util/IslamicCalendar;->civilLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_1
    return v3
.end method

.method protected handleGetYearLength(I)I
    .locals 4

    .line 747
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x514

    if-lt p1, v0, :cond_3

    const/16 v0, 0x640

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 751
    :cond_0
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    const/16 v3, 0xc

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, v3

    add-int/lit8 p0, p1, 0xc

    int-to-long v0, p0

    .line 753
    invoke-static {v0, v1}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide v0

    int-to-long p0, p1

    invoke-static {p0, p1}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int v2, v0

    goto :goto_2

    .line 754
    :cond_1
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne v0, v1, :cond_4

    move v0, v2

    :goto_0
    if-ge v2, v3, :cond_2

    .line 756
    invoke-virtual {p0, p1, v2}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_2

    .line 750
    :cond_3
    :goto_1
    invoke-static {p1}, Landroid/icu/util/IslamicCalendar;->civilLeapYear(I)Z

    move-result p0

    add-int/lit16 v2, p0, 0x162

    :cond_4
    :goto_2
    return v2
.end method

.method public isCivil()Z
    .locals 1

    .line 334
    iget-object p0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V
    .locals 1

    .line 929
    iput-object p1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 932
    iget-object p1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 933
    iput-boolean p1, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 935
    iput-boolean p1, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    :goto_0
    return-void
.end method

.method public setCivil(Z)V
    .locals 2

    .line 307
    iput-boolean p1, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    if-eqz p1, :cond_0

    .line 309
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_0

    .line 312
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 313
    sget-object p1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object p1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 314
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->clear()V

    .line 315
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 316
    iget-object p1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq p1, v0, :cond_1

    .line 319
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 320
    sget-object p1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object p1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 321
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->clear()V

    .line 322
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method
