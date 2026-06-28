.class public final Landroid/icu/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/util/VersionInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final ICU_DATA_VERSION:Landroid/icu/util/VersionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_DATA_VERSION_PATH:Ljava/lang/String; = "60b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_VERSION:Landroid/icu/util/VersionInfo;

.field private static final INVALID_VERSION_NUMBER_:Ljava/lang/String; = "Invalid version number: Version number may be negative or greater than 255"

.field private static final LAST_BYTE_MASK_:I = 0xff

.field private static final MAP_:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/icu/util/VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile TZDATA_VERSION:Ljava/lang/String;

.field public static final UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

.field public static final UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

.field public static final UCOL_TAILORINGS_VERSION:Landroid/icu/util/VersionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNICODE_10_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_1_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_1_0_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_1_1_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_1_1_5:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_5:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_8:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_2_1_9:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_0_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_1_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_1_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_3_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_4_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_4_0_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_4_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_5_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_5_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_5_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_1:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_2:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_6_3:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_7_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_8_0:Landroid/icu/util/VersionInfo;

.field public static final UNICODE_9_0:Landroid/icu/util/VersionInfo;

.field private static final UNICODE_VERSION:Landroid/icu/util/VersionInfo;

.field private static volatile javaVersion:Landroid/icu/util/VersionInfo;


# instance fields
.field private m_version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 484
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 501
    invoke-static {v0, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_1_0:Landroid/icu/util/VersionInfo;

    .line 502
    invoke-static {v0, v1, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_1_0_1:Landroid/icu/util/VersionInfo;

    .line 503
    invoke-static {v0, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_1_1_0:Landroid/icu/util/VersionInfo;

    const/4 v2, 0x5

    .line 504
    invoke-static {v0, v0, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v3

    sput-object v3, Landroid/icu/util/VersionInfo;->UNICODE_1_1_5:Landroid/icu/util/VersionInfo;

    const/4 v3, 0x2

    .line 505
    invoke-static {v3, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v4

    sput-object v4, Landroid/icu/util/VersionInfo;->UNICODE_2_0:Landroid/icu/util/VersionInfo;

    .line 506
    invoke-static {v3, v0, v3, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v4

    sput-object v4, Landroid/icu/util/VersionInfo;->UNICODE_2_1_2:Landroid/icu/util/VersionInfo;

    .line 507
    invoke-static {v3, v0, v2, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v4

    sput-object v4, Landroid/icu/util/VersionInfo;->UNICODE_2_1_5:Landroid/icu/util/VersionInfo;

    const/16 v4, 0x8

    .line 508
    invoke-static {v3, v0, v4, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v5

    sput-object v5, Landroid/icu/util/VersionInfo;->UNICODE_2_1_8:Landroid/icu/util/VersionInfo;

    const/16 v5, 0x9

    .line 509
    invoke-static {v3, v0, v5, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v6

    sput-object v6, Landroid/icu/util/VersionInfo;->UNICODE_2_1_9:Landroid/icu/util/VersionInfo;

    const/4 v6, 0x3

    .line 510
    invoke-static {v6, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_3_0:Landroid/icu/util/VersionInfo;

    .line 511
    invoke-static {v6, v1, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_3_0_1:Landroid/icu/util/VersionInfo;

    .line 512
    invoke-static {v6, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_3_1_0:Landroid/icu/util/VersionInfo;

    .line 513
    invoke-static {v6, v0, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_3_1_1:Landroid/icu/util/VersionInfo;

    .line 514
    invoke-static {v6, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_3_2:Landroid/icu/util/VersionInfo;

    const/4 v7, 0x4

    .line 515
    invoke-static {v7, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v8

    sput-object v8, Landroid/icu/util/VersionInfo;->UNICODE_4_0:Landroid/icu/util/VersionInfo;

    .line 516
    invoke-static {v7, v1, v0, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v8

    sput-object v8, Landroid/icu/util/VersionInfo;->UNICODE_4_0_1:Landroid/icu/util/VersionInfo;

    .line 517
    invoke-static {v7, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_4_1:Landroid/icu/util/VersionInfo;

    .line 518
    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_5_0:Landroid/icu/util/VersionInfo;

    .line 519
    invoke-static {v2, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_5_1:Landroid/icu/util/VersionInfo;

    .line 520
    invoke-static {v2, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_5_2:Landroid/icu/util/VersionInfo;

    const/4 v2, 0x6

    .line 521
    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_6_0:Landroid/icu/util/VersionInfo;

    .line 522
    invoke-static {v2, v0, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_6_1:Landroid/icu/util/VersionInfo;

    .line 523
    invoke-static {v2, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Landroid/icu/util/VersionInfo;->UNICODE_6_2:Landroid/icu/util/VersionInfo;

    .line 524
    invoke-static {v2, v6, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_6_3:Landroid/icu/util/VersionInfo;

    const/4 v2, 0x7

    .line 525
    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_7_0:Landroid/icu/util/VersionInfo;

    .line 526
    invoke-static {v4, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_8_0:Landroid/icu/util/VersionInfo;

    .line 527
    invoke-static {v5, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_9_0:Landroid/icu/util/VersionInfo;

    const/16 v2, 0xa

    .line 528
    invoke-static {v2, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/VersionInfo;->UNICODE_10_0:Landroid/icu/util/VersionInfo;

    const/16 v2, 0x3c

    .line 530
    invoke-static {v2, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v4

    sput-object v4, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    .line 531
    invoke-static {v2, v3, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v1

    sput-object v1, Landroid/icu/util/VersionInfo;->ICU_DATA_VERSION:Landroid/icu/util/VersionInfo;

    .line 532
    sget-object v1, Landroid/icu/util/VersionInfo;->UNICODE_10_0:Landroid/icu/util/VersionInfo;

    sput-object v1, Landroid/icu/util/VersionInfo;->UNICODE_VERSION:Landroid/icu/util/VersionInfo;

    .line 534
    invoke-static {v5}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    move-result-object v1

    sput-object v1, Landroid/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

    .line 535
    invoke-static {v5}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    move-result-object v1

    sput-object v1, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    .line 536
    invoke-static {v0}, Landroid/icu/util/VersionInfo;->getInstance(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VersionInfo;->UCOL_TAILORINGS_VERSION:Landroid/icu/util/VersionInfo;

    const/4 v0, 0x0

    .line 647
    sput-object v0, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput p1, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    return-void
.end method

.method public static getInstance(I)Landroid/icu/util/VersionInfo;
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-static {p0, v0, v0, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(II)Landroid/icu/util/VersionInfo;
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-static {p0, p1, v0, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(III)Landroid/icu/util/VersionInfo;
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-static {p0, p1, p2, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(IIII)Landroid/icu/util/VersionInfo;
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0xff

    if-gt p0, v0, :cond_1

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    if-gt p3, v0, :cond_1

    .line 266
    invoke-static {p0, p1, p2, p3}, Landroid/icu/util/VersionInfo;->getInt(IIII)I

    move-result p0

    .line 267
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 268
    sget-object p2, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/util/VersionInfo;

    if-nez p2, :cond_0

    .line 270
    new-instance p2, Landroid/icu/util/VersionInfo;

    invoke-direct {p2, p0}, Landroid/icu/util/VersionInfo;-><init>(I)V

    .line 271
    sget-object p0, Landroid/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/VersionInfo;

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2

    .line 264
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid version number: Version number may be negative or greater than 255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;
    .locals 9

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 217
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const-string v6, "Invalid version number: Version number may be negative or greater than 255"

    if-ge v4, v1, :cond_2

    if-ge v5, v0, :cond_2

    .line 222
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, -0x30

    int-to-char v7, v7

    if-ltz v7, :cond_1

    const/16 v8, 0x9

    if-gt v7, v8, :cond_1

    .line 231
    aget v6, v2, v4

    mul-int/lit8 v6, v6, 0xa

    aput v6, v2, v4

    .line 232
    aget v6, v2, v4

    add-int/2addr v6, v7

    aput v6, v2, v4

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 229
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ne v5, v0, :cond_5

    move p0, v3

    :goto_2
    if-ge p0, v1, :cond_4

    .line 241
    aget v0, v2, p0

    if-ltz v0, :cond_3

    aget v0, v2, p0

    const/16 v4, 0xff

    if-gt v0, v4, :cond_3

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 242
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_4
    aget p0, v2, v3

    const/4 v0, 0x1

    aget v0, v2, v0

    const/4 v1, 0x2

    aget v1, v2, v1

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-static {p0, v0, v1, v2}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0

    .line 237
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version number: String \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' exceeds version format"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static getInt(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method static getTZDataVersion()Ljava/lang/String;
    .locals 3

    .line 650
    sget-object v0, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 651
    const-class v0, Landroid/icu/util/VersionInfo;

    monitor-enter v0

    .line 652
    :try_start_0
    sget-object v1, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string/jumbo v2, "zoneinfo64"

    .line 653
    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "TZVersion"

    .line 655
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    .line 657
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 659
    :cond_1
    :goto_0
    sget-object v0, Landroid/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static javaVersion()Landroid/icu/util/VersionInfo;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    sget-object v0, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;

    if-nez v0, :cond_7

    .line 328
    const-class v0, Landroid/icu/util/VersionInfo;

    monitor-enter v0

    .line 329
    :try_start_0
    sget-object v1, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;

    if-nez v1, :cond_6

    const-string v1, "java.version"

    .line 330
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 339
    :goto_0
    array-length v7, v1

    const/16 v8, 0x2e

    if-ge v3, v7, :cond_4

    add-int/lit8 v7, v3, 0x1

    .line 340
    aget-char v3, v1, v3

    const/16 v9, 0x30

    if-lt v3, v9, :cond_1

    const/16 v9, 0x39

    if-le v3, v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 353
    aput-char v3, v1, v4

    const/4 v3, 0x1

    move v4, v6

    move v6, v3

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    const/4 v3, 0x3

    if-ne v5, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v4, 0x1

    .line 348
    aput-char v8, v1, v4

    add-int/lit8 v5, v5, 0x1

    move v6, v2

    move v4, v3

    :cond_3
    :goto_2
    move v3, v7

    goto :goto_0

    :cond_4
    :goto_3
    if-lez v4, :cond_5

    add-int/lit8 v3, v4, -0x1

    .line 356
    aget-char v3, v1, v3

    if-ne v3, v8, :cond_5

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 360
    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 362
    invoke-static {v3}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    move-result-object v1

    sput-object v1, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;

    .line 364
    :cond_6
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 366
    :cond_7
    :goto_4
    sget-object v0, Landroid/icu/util/VersionInfo;->javaVersion:Landroid/icu/util/VersionInfo;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .line 570
    sget-object p0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result p0

    const-string v0, "M"

    const-string v1, ""

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-gt p0, v2, :cond_2

    .line 571
    sget-object p0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result p0

    rem-int/2addr p0, v3

    if-eqz p0, :cond_1

    .line 573
    sget-object p0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result p0

    .line 574
    sget-object v4, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-lt v4, v5, :cond_0

    add-int/lit8 v4, v4, -0xa

    add-int/lit8 p0, p0, 0x1

    .line 579
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 581
    :cond_1
    sget-object p0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {p0, v3, v3}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 584
    :cond_2
    sget-object p0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result p0

    if-nez p0, :cond_3

    .line 586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v4}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 588
    :cond_3
    sget-object p0, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {p0, v3, v3}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object p0

    .line 593
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "International Components for Unicode for Java "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 595
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 596
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implementation Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/icu/util/VersionInfo;->ICU_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v1, v3, v2}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 597
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unicode Data Version:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/icu/util/VersionInfo;->UNICODE_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v1, v3, v2}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 598
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLDR Data Version:      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/icu/util/LocaleData;->getCLDRVersion()Landroid/icu/util/VersionInfo;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 599
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time Zone Data Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/icu/util/VersionInfo;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/util/VersionInfo;)I
    .locals 0

    .line 460
    iget p0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    iget p1, p1, Landroid/icu/util/VersionInfo;->m_version_:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Landroid/icu/util/VersionInfo;

    invoke-virtual {p0, p1}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMajor()I
    .locals 0

    .line 394
    iget p0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getMicro()I
    .locals 0

    .line 421
    iget p0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getMilli()I
    .locals 0

    .line 412
    iget p0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getMinor()I
    .locals 0

    .line 403
    iget p0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getVersionString(II)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    const/4 v1, 0x4

    if-gt p1, v1, :cond_3

    if-gt p2, v1, :cond_3

    if-gt p1, p2, :cond_3

    new-array v1, v1, [I

    .line 621
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 622
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v2

    aput v2, v1, v0

    const/4 v2, 0x2

    .line 623
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v4

    aput v4, v1, v2

    const/4 v2, 0x3

    .line 624
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMicro()I

    move-result p0

    aput p0, v1, v2

    :goto_0
    if-le p2, p1, :cond_1

    add-int/lit8 p0, p2, -0x1

    .line 628
    aget p0, v1, p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 634
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 635
    aget p1, v1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    if-ge v0, p2, :cond_2

    const-string p1, "."

    .line 637
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    aget p1, v1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 641
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 617
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid min/maxDigits range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 0

    .line 444
    iget p0, p0, Landroid/icu/util/VersionInfo;->m_version_:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 378
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMicro()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
