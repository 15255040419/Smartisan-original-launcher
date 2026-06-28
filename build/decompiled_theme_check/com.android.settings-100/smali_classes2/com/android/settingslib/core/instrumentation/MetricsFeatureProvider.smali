.class public Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
.super Ljava/lang/Object;
.source "MetricsFeatureProvider.java"


# instance fields
.field private mLoggerWriters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/instrumentation/LogWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->installLogWriters()V

    return-void
.end method

.method private sinceVisibleTaggedData(J)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 p0, 0x31a

    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public action(Landroid/content/Context;II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 94
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 109
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public action(Landroid/content/Context;IZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 102
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs action(Landroid/content/Context;I[Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 86
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public action(Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;II)V
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    const/4 v3, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->elapsedTimeSinceVisible()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->sinceVisibleTaggedData(J)Landroid/util/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    .line 68
    invoke-interface {v1, p2, p3, v2}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(II[Landroid/util/Pair;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public action(Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;IZ)V
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->elapsedTimeSinceVisible()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->sinceVisibleTaggedData(J)Landroid/util/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    .line 79
    invoke-interface {v1, p2, p3, v2}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(IZ[Landroid/util/Pair;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public actionWithSource(Landroid/content/Context;II)V
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 58
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->actionWithSource(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 115
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getMetricsCategory(Ljava/lang/Object;)I
    .locals 0

    if-eqz p1, :cond_1

    .line 126
    instance-of p0, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-nez p0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public hidden(Landroid/content/Context;I)V
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 52
    invoke-interface {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/LogWriter;->hidden(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 121
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected installLogWriters()V
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    new-instance v0, Lcom/android/settingslib/core/instrumentation/EventLogWriter;

    invoke-direct {v0}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x341

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x33e

    if-nez v0, :cond_2

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-array v0, v3, [Landroid/util/Pair;

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    aput-object p3, v0, v2

    .line 144
    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    return-void

    .line 147
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 152
    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Landroid/util/Pair;

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    aput-object p3, v0, v2

    .line 152
    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .locals 1

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 46
    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->visible(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    return-void
.end method
