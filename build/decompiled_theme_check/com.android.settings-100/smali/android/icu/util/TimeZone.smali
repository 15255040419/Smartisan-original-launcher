.class public abstract Landroid/icu/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/TimeZone$ConstantZone;,
        Landroid/icu/util/TimeZone$SystemTimeZoneType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/util/TimeZone;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final GENERIC_LOCATION:I = 0x7

.field public static final GMT_ZONE:Landroid/icu/util/TimeZone;

.field static final GMT_ZONE_ID:Ljava/lang/String; = "Etc/GMT"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final LONG:I = 0x1

.field public static final LONG_GENERIC:I = 0x3

.field public static final LONG_GMT:I = 0x5

.field public static final SHORT:I = 0x0

.field public static final SHORT_COMMONLY_USED:I = 0x6

.field public static final SHORT_GENERIC:I = 0x2

.field public static final SHORT_GMT:I = 0x4

.field public static final TIMEZONE_ICU:I = 0x0

.field public static final TIMEZONE_JDK:I = 0x1

.field private static final TZIMPL_CONFIG_ICU:Ljava/lang/String; = "ICU"

.field private static final TZIMPL_CONFIG_JDK:Ljava/lang/String; = "JDK"

.field private static final TZIMPL_CONFIG_KEY:Ljava/lang/String; = "android.icu.util.TimeZone.DefaultTimeZoneType"

.field private static TZ_IMPL:I = 0x0

.field public static final UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

.field public static final UNKNOWN_ZONE_ID:Ljava/lang/String; = "Etc/Unknown"

.field private static volatile defaultZone:Landroid/icu/util/TimeZone; = null

.field private static final serialVersionUID:J = -0xa5690eb38a351bfL


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.icu.util.TimeZone"

    .line 95
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroid/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    .line 210
    new-instance v0, Landroid/icu/util/TimeZone$ConstantZone;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Etc/Unknown"

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Landroid/icu/util/TimeZone$1;)V

    invoke-virtual {v0}, Landroid/icu/util/TimeZone$ConstantZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Landroid/icu/util/TimeZone;->UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

    .line 215
    new-instance v0, Landroid/icu/util/TimeZone$ConstantZone;

    const-string v3, "Etc/GMT"

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Landroid/icu/util/TimeZone$1;)V

    invoke-virtual {v0}, Landroid/icu/util/TimeZone$ConstantZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Landroid/icu/util/TimeZone;->GMT_ZONE:Landroid/icu/util/TimeZone;

    .line 1231
    sput-object v1, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    .line 1236
    sput v2, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    const-string v0, "android.icu.util.TimeZone.DefaultTimeZoneType"

    const-string v1, "ICU"

    .line 1246
    invoke-static {v0, v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JDK"

    .line 1247
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1248
    sput v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 119
    iput-object p1, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-void

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private _getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 11

    if-eqz p3, :cond_16

    const/4 v0, 0x3

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v1, :cond_d

    if-eq p1, v0, :cond_d

    if-ne p1, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_8

    if-ne p1, v0, :cond_1

    goto :goto_3

    .line 522
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 523
    invoke-static {p3}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_2

    const/4 v5, 0x6

    if-eq p1, v5, :cond_4

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 527
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 531
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    :cond_5
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .line 534
    :goto_0
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2, v0, v1}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    .line 537
    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object p3

    if-eqz p2, :cond_6

    .line 538
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    move-result p0

    add-int/2addr p2, p0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    :goto_1
    if-ne p1, v4, :cond_7

    .line 540
    invoke-virtual {p3, p2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_7
    invoke-virtual {p3, p2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    move-object v0, p0

    goto/16 :goto_9

    .line 507
    :cond_8
    :goto_3
    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object p3

    if-eqz p2, :cond_9

    .line 508
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    move-result p0

    add-int/2addr p2, p0

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    :goto_4
    if-eq p1, v0, :cond_c

    if-eq p1, v1, :cond_b

    :cond_a
    :goto_5
    move-object v0, v2

    goto/16 :goto_9

    .line 511
    :cond_b
    invoke-virtual {p3, p2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_c
    const/4 p0, 0x0

    .line 514
    invoke-virtual {p3, p2, p0, p0, p0}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 479
    :cond_d
    :goto_6
    invoke-static {p3}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object p3

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 481
    new-instance v10, Landroid/icu/util/Output;

    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v10, v4}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    if-eq p1, v3, :cond_10

    if-eq p1, v0, :cond_f

    if-eq p1, v1, :cond_e

    goto :goto_7

    .line 485
    :cond_e
    sget-object v5, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    move-object v4, p3

    move-object v6, p0

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 488
    :cond_f
    sget-object v5, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    move-object v4, p3

    move-object v6, p0

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 491
    :cond_10
    sget-object v5, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object v4, p3

    move-object v6, p0

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    if-eqz p2, :cond_11

    .line 498
    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-eq v0, v1, :cond_12

    :cond_11
    if-nez p2, :cond_a

    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v1, :cond_a

    :cond_12
    if-eqz p2, :cond_13

    .line 500
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    move-result p0

    add-int/2addr p2, p0

    goto :goto_8

    :cond_13
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    :goto_8
    if-ne p1, v3, :cond_14

    .line 502
    invoke-virtual {p3, p2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p3, p2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_15
    :goto_9
    return-object v0

    .line 472
    :cond_16
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "locale is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static countEquivalentIDs(Ljava/lang/String;)I
    .locals 0

    .line 814
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->countEquivalentIDs(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/TimeZone$SystemTimeZoneType;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 753
    invoke-static {p0, p1, p2}, Landroid/icu/impl/ZoneMeta;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableIDs()[Ljava/lang/String;
    .locals 2

    .line 796
    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 797
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getAvailableIDs(I)[Ljava/lang/String;
    .locals 2

    .line 767
    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 768
    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 783
    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 784
    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1011
    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 3

    const-string v0, "Etc/Unknown"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 1028
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1029
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    .line 1038
    :cond_1
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCustomID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move p0, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 1043
    aput-boolean p0, p1, v1

    :cond_3
    return-object v0
.end method

.method public static getDefault()Landroid/icu/util/TimeZone;
    .locals 4

    .line 848
    sget-object v0, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    if-nez v0, :cond_2

    .line 851
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 852
    :try_start_0
    const-class v0, Landroid/icu/util/TimeZone;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 853
    :try_start_1
    sget-object v2, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    if-nez v2, :cond_1

    .line 855
    sget v2, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 856
    new-instance v2, Landroid/icu/impl/JavaTimeZone;

    invoke-direct {v2}, Landroid/icu/impl/JavaTimeZone;-><init>()V

    goto :goto_0

    .line 858
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 859
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v2

    .line 861
    :goto_0
    sput-object v2, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    .line 863
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 864
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 863
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v0

    .line 864
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 867
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTimeZoneType()I
    .locals 1

    .line 736
    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    return v0
.end method

.method public static getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 836
    invoke-static {p0, p1}, Landroid/icu/impl/ZoneMeta;->getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getFrozenICUTimeZone(Ljava/lang/String;Z)Landroid/icu/util/BasicTimeZone;
    .locals 0

    if-eqz p1, :cond_0

    .line 708
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 711
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCustomTimeZone(Ljava/lang/String;)Landroid/icu/util/SimpleTimeZone;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 2

    .line 654
    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static getIDForWindowsID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1155
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string/jumbo v2, "windowsZones"

    invoke-static {v1, v2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "mapTimezones"

    .line 1157
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 1160
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_1

    .line 1163
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    .line 1166
    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 1168
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    move-object v1, p1

    :catch_1
    :cond_1
    if-nez v1, :cond_2

    :try_start_3
    const-string p1, "001"

    .line 1176
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_2
    return-object v1
.end method

.method public static getRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "Etc/Unknown"

    .line 1065
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 1070
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown system zone id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTZDataVersion()Ljava/lang/String;
    .locals 1

    .line 998
    invoke-static {}, Landroid/icu/util/VersionInfo;->getTZDataVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 2

    .line 636
    sget v0, Landroid/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeZone(Ljava/lang/String;I)Landroid/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x0

    .line 669
    invoke-static {p0, p1, v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method private static getTimeZone(Ljava/lang/String;IZ)Landroid/icu/util/TimeZone;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 683
    invoke-static {p0}, Landroid/icu/impl/JavaTimeZone;->createTimeZone(Ljava/lang/String;)Landroid/icu/impl/JavaTimeZone;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 685
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 687
    invoke-static {p0, p1}, Landroid/icu/util/TimeZone;->getFrozenICUTimeZone(Ljava/lang/String;Z)Landroid/icu/util/BasicTimeZone;

    move-result-object p1

    goto :goto_0

    .line 689
    :cond_2
    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getFrozenICUTimeZone(Ljava/lang/String;Z)Landroid/icu/util/BasicTimeZone;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    .line 692
    sget-object p1, Landroid/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" is a bogus id so timezone is falling back to Etc/Unknown(GMT)."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 693
    sget-object p1, Landroid/icu/util/TimeZone;->UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

    :cond_3
    if-eqz p2, :cond_4

    goto :goto_1

    .line 695
    :cond_4
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static getWindowsID(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 1096
    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    .line 1097
    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 1102
    :cond_0
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v3, "android/icu/impl/data/icudt60b"

    const-string/jumbo v4, "windowsZones"

    invoke-static {v3, v4, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v3, "mapTimezones"

    .line 1104
    invoke-virtual {v0, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 1106
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v0

    .line 1107
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1108
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 1109
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 1112
    :cond_2
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v4

    .line 1113
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1114
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v5

    .line 1115
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 1118
    :cond_4
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1119
    array-length v6, v5

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 1120
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1121
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    return-object v2
.end method

.method public static declared-synchronized setDefault(Landroid/icu/util/TimeZone;)V
    .locals 5

    const-class v0, Landroid/icu/util/TimeZone;

    monitor-enter v0

    .line 882
    :try_start_0
    invoke-static {p0}, Landroid/icu/util/TimeZone;->setICUDefault(Landroid/icu/util/TimeZone;)V

    if-eqz p0, :cond_4

    .line 888
    instance-of v1, p0, Landroid/icu/impl/JavaTimeZone;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 889
    move-object v1, p0

    check-cast v1, Landroid/icu/impl/JavaTimeZone;

    invoke-virtual {v1}, Landroid/icu/impl/JavaTimeZone;->unwrap()Ljava/util/TimeZone;

    move-result-object v2

    goto :goto_0

    .line 890
    :cond_0
    instance-of v1, p0, Landroid/icu/impl/OlsonTimeZone;

    if-eqz v1, :cond_2

    .line 899
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 901
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 907
    invoke-static {v1}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 909
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 916
    invoke-static {p0}, Landroid/icu/impl/TimeZoneAdapter;->wrap(Landroid/icu/util/TimeZone;)Ljava/util/TimeZone;

    move-result-object v2

    .line 918
    :cond_3
    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefaultTimeZoneType(I)V
    .locals 2

    const-class v0, Landroid/icu/util/TimeZone;

    monitor-enter v0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid timezone type"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 726
    :cond_1
    :goto_0
    sput p0, Landroid/icu/util/TimeZone;->TZ_IMPL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setICUDefault(Landroid/icu/util/TimeZone;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/icu/util/TimeZone;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 936
    :try_start_0
    sput-object p0, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 939
    sput-object p0, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;

    goto :goto_0

    .line 942
    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/TimeZone;

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object p0

    sput-object p0, Landroid/icu/util/TimeZone;->defaultZone:Landroid/icu/util/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 965
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 968
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 1

    .line 1209
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1212
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 977
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 978
    :cond_1
    iget-object p0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    check-cast p1, Landroid/icu/util/TimeZone;

    iget-object p1, p1, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    .line 1200
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Needs to be implemented by the subclass."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public getDSTSavings()I
    .locals 0

    .line 563
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x36ee80

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 3

    .line 372
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 400
    invoke-direct {p0, v0, v1, p1}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 386
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .locals 1

    .line 418
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/util/TimeZone;->getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    .line 462
    invoke-direct {p0, p2, p1, p3}, Landroid/icu/util/TimeZone;->_getDisplayName(IZLandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 459
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal style: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 438
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/TimeZone;->getDisplayName(ZILandroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getID()Ljava/lang/String;
    .locals 0

    .line 344
    iget-object p0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 270
    aget p0, v0, v1

    const/4 p1, 0x1

    aget p1, v0, p1

    add-int/2addr p0, p1

    return p0
.end method

.method public getOffset(JZ[I)V
    .locals 11

    .line 293
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p4, v1

    if-nez p3, :cond_0

    .line 295
    aget v0, p4, v1

    int-to-long v2, v0

    add-long/2addr p1, v2

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [I

    move v2, v1

    .line 312
    :goto_0
    invoke-static {p1, p2, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v4, 0x1

    .line 313
    aget v5, v0, v1

    const/4 v10, 0x1

    aget v6, v0, v10

    const/4 v3, 0x2

    aget v7, v0, v3

    const/4 v3, 0x3

    aget v8, v0, v3

    const/4 v3, 0x5

    aget v9, v0, v3

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/icu/util/TimeZone;->getOffset(IIIIII)I

    move-result v3

    aget v4, p4, v1

    sub-int/2addr v3, v4

    aput v3, p4, v10

    if-nez v2, :cond_2

    if-eqz p3, :cond_2

    .line 317
    aget v3, p4, v10

    if-nez v3, :cond_1

    goto :goto_1

    .line 321
    :cond_1
    aget v3, p4, v10

    int-to-long v3, v3

    sub-long/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 956
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 957
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result p0

    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 986
    iget-object p0, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public isFrozen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public observesDaylightTime()Z
    .locals 1

    .line 612
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iput-object p1, p0, Landroid/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-void

    .line 357
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen TimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 354
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
