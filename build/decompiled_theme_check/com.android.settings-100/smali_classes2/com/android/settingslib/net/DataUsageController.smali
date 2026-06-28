.class public Lcom/android/settingslib/net/DataUsageController;
.super Ljava/lang/Object;
.source "DataUsageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/DataUsageController$Callback;,
        Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;,
        Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FIELDS:I = 0xa

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;

.field private static final TAG:Ljava/lang/String; = "DataUsageController"


# instance fields
.field private mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "DataUsageController"

    const/4 v1, 0x3

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 55
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 71
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string p1, "netstats"

    .line 73
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    .line 74
    iget-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 5

    .line 180
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 183
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 185
    aget-object v3, p0, v2

    if-eqz v3, :cond_2

    .line 186
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v4}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private formatDateRange(JJ)Ljava/lang/String;
    .locals 11

    .line 233
    sget-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    monitor-enter v0

    .line 234
    :try_start_0
    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    iget-object v3, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    const v9, 0x10010

    const/4 v10, 0x0

    move-wide v5, p1

    move-wide v7, p3

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    .line 236
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 237
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 225
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 227
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 226
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSession()Landroid/net/INetworkStatsSession;
    .locals 3

    const-string v0, "Failed to open stats session"

    const-string v1, "DataUsageController"

    .line 90
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    if-nez v2, :cond_0

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 96
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 94
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    return-object p0
.end method

.method private static historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "bucketDuration="

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",bucketStart="

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",activeTime="

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",rxBytes="

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",rxPackets="

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",txBytes="

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",txPackets="

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",operations="

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 1

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get data usage, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataUsageController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/net/DataUsageController;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "no subscriber id"

    .line 114
    invoke-direct {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 18

    move-object/from16 v0, p0

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/net/DataUsageController;->getSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "no stats session"

    .line 130
    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/settingslib/net/DataUsageController;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    const/16 v3, 0xa

    move-object/from16 v4, p1

    .line 134
    :try_start_0
    invoke-interface {v1, v4, v3}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    if-eqz v2, :cond_1

    .line 139
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 140
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/time/ZonedDateTime;

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 141
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    move-wide v14, v5

    move-wide v9, v7

    goto :goto_0

    :cond_1
    const-wide v5, 0x90321000L

    sub-long v5, v12, v5

    move-wide v14, v5

    move-wide v9, v12

    .line 147
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v11, 0x0

    move-wide v5, v14

    move-wide v7, v9

    move-object v3, v2

    move-wide v1, v9

    move-wide v9, v12

    .line 148
    invoke-virtual/range {v4 .. v11}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v4

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 150
    sget-boolean v7, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "DataUsageController"

    const-string v8, "history call from %s to %s now=%s took %sms: %s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v14, v15}, Ljava/util/Date;-><init>(J)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v1, v2}, Ljava/util/Date;-><init>(J)V

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sub-long v5, v5, v16

    .line 151
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v10

    const/4 v5, 0x4

    .line 152
    invoke-static {v4}, Lcom/android/settingslib/net/DataUsageController;->historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    .line 150
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v4, :cond_3

    const-string v1, "no entry data"

    .line 154
    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    return-object v0

    .line 156
    :cond_3
    iget-wide v5, v4, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v7, v4, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v7

    .line 157
    new-instance v4, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-direct {v4}, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;-><init>()V

    .line 158
    iput-wide v14, v4, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->startDate:J

    .line 159
    iput-wide v5, v4, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 160
    invoke-direct {v0, v14, v15, v1, v2}, Lcom/android/settingslib/net/DataUsageController;->formatDateRange(JJ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    .line 161
    iput-wide v14, v4, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    .line 162
    iput-wide v1, v4, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    if-eqz v3, :cond_6

    .line 165
    iget-wide v1, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_4

    iget-wide v1, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_1

    :cond_4
    move-wide v1, v5

    :goto_1
    iput-wide v1, v4, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 166
    iget-wide v1, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_5

    iget-wide v5, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    :cond_5
    iput-wide v5, v4, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    goto :goto_2

    .line 168
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 170
    :goto_2
    iget-object v1, v0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    if-eqz v1, :cond_7

    .line 171
    iget-object v1, v0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    invoke-interface {v1}, Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object v4

    :catch_0
    const-string v1, "remote call failed"

    .line 175
    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultWarningLevel()J
    .locals 4

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00e5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getWifiDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 1

    .line 123
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p0

    return-object p0
.end method

.method public isMobileDataEnabled()Z
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result p0

    return p0
.end method

.method public isMobileDataSupported()Z
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 217
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setCallback(Lcom/android/settingslib/net/DataUsageController$Callback;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMobileDataEnabled: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 209
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    if-eqz p0, :cond_0

    .line 210
    invoke-interface {p0, p1}, Lcom/android/settingslib/net/DataUsageController$Callback;->onMobileDataEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setNetworkController(Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    return-void
.end method
