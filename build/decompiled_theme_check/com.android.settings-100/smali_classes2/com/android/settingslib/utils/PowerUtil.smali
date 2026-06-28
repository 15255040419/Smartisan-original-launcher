.class public Lcom/android/settingslib/utils/PowerUtil;
.super Ljava/lang/Object;
.source "PowerUtil.java"


# static fields
.field private static final FIFTEEN_MINUTES_MILLIS:J

.field private static final ONE_DAY_MILLIS:J

.field private static final ONE_HOUR_MILLIS:J

.field private static final SEVEN_MINUTES_MILLIS:J

.field private static final TWO_DAYS_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/PowerUtil;->SEVEN_MINUTES_MILLIS:J

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/settingslib/utils/PowerUtil;->TWO_DAYS_MILLIS:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMsToUs(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static convertUsToMs(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 165
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_4

    .line 58
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->SEVEN_MINUTES_MILLIS:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 60
    invoke-static {p0, p3}, Lcom/android/settingslib/utils/PowerUtil;->getShutdownImminentString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    long-to-double p1, v0

    const/4 p4, 0x0

    .line 63
    invoke-static {p0, p1, p2, p4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p1

    .line 66
    invoke-static {p0, p1, p3}, Lcom/android/settingslib/utils/PowerUtil;->getUnderFifteenString(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_1
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->TWO_DAYS_MILLIS:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 69
    invoke-static {p0, p3}, Lcom/android/settingslib/utils/PowerUtil;->getMoreThanTwoDaysString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 70
    :cond_2
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 72
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settingslib/utils/PowerUtil;->getMoreThanOneDayString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 76
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settingslib/utils/PowerUtil;->getRegularTimeRemainingString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMoreThanOneDayString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 104
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    invoke-static {p1, p2, v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide p1

    long-to-double p1, p1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p1

    .line 109
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 110
    sget p2, Lcom/android/settingslib/R$string;->power_remaining_duration_only_enhanced:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/settingslib/R$string;->power_remaining_duration_only:I

    :goto_0
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v0

    .line 113
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p4, :cond_2

    .line 115
    sget p2, Lcom/android/settingslib/R$string;->power_discharging_duration_enhanced:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/android/settingslib/R$string;->power_discharging_duration:I

    :goto_1
    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v0

    aput-object p3, p4, v1

    .line 118
    invoke-virtual {p0, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMoreThanTwoDaysString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 124
    sget-object v2, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, v2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    .line 126
    new-instance v2, Landroid/icu/util/Measure;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v2, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    sget p1, Lcom/android/settingslib/R$string;->power_remaining_only_more_than_subtext:I

    new-array v3, v5, [Ljava/lang/Object;

    new-array v4, v5, [Landroid/icu/util/Measure;

    aput-object v2, v4, v1

    .line 130
    invoke-virtual {v0, v4}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 129
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget v4, Lcom/android/settingslib/R$string;->power_remaining_more_than_subtext:I

    new-array v3, v3, [Ljava/lang/Object;

    new-array v6, v5, [Landroid/icu/util/Measure;

    aput-object v2, v6, v1

    .line 133
    invoke-virtual {v0, v6}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    aput-object p1, v3, v5

    .line 131
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getRegularTimeRemainingString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    sget-wide p1, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    .line 141
    invoke-static {v0, v1, p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide p1

    .line 146
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 148
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p1

    .line 149
    invoke-virtual {v0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 152
    sget p2, Lcom/android/settingslib/R$string;->power_discharge_by_only_enhanced:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/settingslib/R$string;->power_discharge_by_only:I

    :goto_0
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    .line 155
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p4, :cond_2

    .line 157
    sget p2, Lcom/android/settingslib/R$string;->power_discharge_by_enhanced:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/android/settingslib/R$string;->power_discharge_by:I

    :goto_1
    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v1

    aput-object p3, p4, v0

    .line 160
    invoke-virtual {p0, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getShutdownImminentString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lcom/android/settingslib/R$string;->power_remaining_duration_only_shutdown_imminent:I

    .line 85
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->power_remaining_duration_shutdown_imminent:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 86
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getUnderFifteenString(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget p2, Lcom/android/settingslib/R$string;->power_remaining_less_than_duration_only:I

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 94
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->power_remaining_less_than_duration:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 95
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static roundTimeToNearestThreshold(JJ)J
    .locals 4

    .line 183
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 184
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 185
    rem-long v0, p0, p2

    const-wide/16 v2, 0x2

    .line 186
    div-long v2, p2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    sub-long/2addr p0, v0

    return-wide p0

    :cond_0
    sub-long/2addr p0, v0

    add-long/2addr p0, p2

    return-wide p0
.end method
