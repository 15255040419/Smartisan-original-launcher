.class public Lcom/android/settingslib/core/instrumentation/EventLogWriter;
.super Ljava/lang/Object;
.source "EventLogWriter.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/LogWriter;


# instance fields
.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method


# virtual methods
.method public varargs action(II[Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 45
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x4

    .line 49
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 50
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 51
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 52
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    :goto_2
    return-void
.end method

.method public varargs action(IZ[Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->action(II[Landroid/util/Pair;)V

    return-void
.end method

.method public action(Landroid/content/Context;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

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

    if-eqz p4, :cond_2

    .line 89
    array-length p0, p4

    if-nez p0, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x4

    .line 93
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 94
    invoke-virtual {p0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 95
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object p3, p4, p2

    .line 96
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    goto :goto_2

    .line 90
    :cond_2
    :goto_1
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public action(Landroid/content/Context;IZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

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

    const-string v0, ""

    .line 63
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method public actionWithSource(Landroid/content/Context;II)V
    .locals 0

    .line 67
    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x4

    .line 68
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    if-eqz p2, :cond_0

    const/16 p1, 0x341

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 103
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public hidden(Landroid/content/Context;I)V
    .locals 0

    .line 41
    invoke-static {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    return-void
.end method

.method public histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 107
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .locals 0

    .line 34
    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x341

    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method
