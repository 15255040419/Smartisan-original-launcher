.class public Lb/a/a/l1/e;
.super Ljava/lang/Object;
.source "UsageStatsUtils.java"


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/quicksearchbox/SuggestionCursor;)Lb/a/a/w0;
    .locals 3

    .line 1
    sget-object v0, Lb/a/a/l1/e;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lb/a/a/l1/e;->b()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lb/a/a/l1/e;->a:Ljava/util/HashMap;

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lb/a/a/l1/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lb/a/a/l1/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 5
    :goto_0
    new-instance v2, Lb/a/a/w0;

    invoke-direct {v2, p0, v0, v1}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;J)V

    return-object v2
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lb/a/a/l1/e;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lb/a/a/l1/e;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 7
    sget-object v1, Lb/a/a/l1/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 8
    sput-object v1, Lb/a/a/l1/e;->a:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-class v0, Lb/a/a/l1/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lb/a/a/l1/e;->a:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lb/a/a/l1/e;->a:Ljava/util/HashMap;

    .line 3
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object v1

    const-string v2, "usagestats"

    .line 4
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    sub-long v6, v2, v4

    .line 6
    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    .line 9
    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v7

    sub-long v9, v2, v7

    cmp-long v9, v9, v4

    if-gez v9, :cond_0

    .line 10
    sget-object v9, Lb/a/a/l1/e;->a:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Lb/a/a/l1/e;->a:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()V
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/l1/e;->b()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lb/a/a/l1/e;->a:Ljava/util/HashMap;

    return-void
.end method
