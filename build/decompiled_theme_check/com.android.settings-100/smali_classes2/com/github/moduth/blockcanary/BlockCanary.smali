.class public final Lcom/github/moduth/blockcanary/BlockCanary;
.super Ljava/lang/Object;
.source "BlockCanary.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlockCanary-no-op"

.field private static sInstance:Lcom/github/moduth/blockcanary/BlockCanary;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/github/moduth/blockcanary/BlockCanary;
    .locals 2

    .line 38
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanary;->sInstance:Lcom/github/moduth/blockcanary/BlockCanary;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/github/moduth/blockcanary/BlockCanary;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/github/moduth/blockcanary/BlockCanary;->sInstance:Lcom/github/moduth/blockcanary/BlockCanary;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/github/moduth/blockcanary/BlockCanary;

    invoke-direct {v1}, Lcom/github/moduth/blockcanary/BlockCanary;-><init>()V

    sput-object v1, Lcom/github/moduth/blockcanary/BlockCanary;->sInstance:Lcom/github/moduth/blockcanary/BlockCanary;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanary;->sInstance:Lcom/github/moduth/blockcanary/BlockCanary;

    return-object v0
.end method

.method public static install(Landroid/content/Context;Lcom/github/moduth/blockcanary/BlockCanaryContext;)Lcom/github/moduth/blockcanary/BlockCanary;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->init(Landroid/content/Context;Lcom/github/moduth/blockcanary/BlockCanaryContext;)V

    .line 34
    invoke-static {}, Lcom/github/moduth/blockcanary/BlockCanary;->get()Lcom/github/moduth/blockcanary/BlockCanary;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isMonitorDurationEnd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public recordStartTime()V
    .locals 1

    const-string p0, "BlockCanary-no-op"

    const-string v0, "recordStartTime"

    .line 61
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 1

    const-string p0, "BlockCanary-no-op"

    const-string v0, "start"

    .line 49
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 1

    const-string p0, "BlockCanary-no-op"

    const-string v0, "stop"

    .line 53
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public upload()V
    .locals 1

    const-string p0, "BlockCanary-no-op"

    const-string v0, "upload"

    .line 57
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
