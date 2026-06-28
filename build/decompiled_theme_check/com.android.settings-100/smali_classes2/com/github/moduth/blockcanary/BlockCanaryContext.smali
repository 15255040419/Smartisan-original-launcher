.class public Lcom/github/moduth/blockcanary/BlockCanaryContext;
.super Ljava/lang/Object;
.source "BlockCanaryContext.java"


# static fields
.field private static sApplicationContext:Landroid/content/Context;

.field private static sInstance:Lcom/github/moduth/blockcanary/BlockCanaryContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/github/moduth/blockcanary/BlockCanaryContext;
    .locals 2

    .line 42
    sget-object v0, Lcom/github/moduth/blockcanary/BlockCanaryContext;->sInstance:Lcom/github/moduth/blockcanary/BlockCanaryContext;

    if-eqz v0, :cond_0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BlockCanaryContext not init"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static init(Landroid/content/Context;Lcom/github/moduth/blockcanary/BlockCanaryContext;)V
    .locals 0

    .line 37
    sput-object p0, Lcom/github/moduth/blockcanary/BlockCanaryContext;->sApplicationContext:Landroid/content/Context;

    .line 38
    sput-object p1, Lcom/github/moduth/blockcanary/BlockCanaryContext;->sInstance:Lcom/github/moduth/blockcanary/BlockCanaryContext;

    return-void
.end method


# virtual methods
.method public concernPackages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public deleteFilesInWhiteList()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public displayNotification()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public filterNonConcernStack()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBlock(Landroid/content/Context;Lcom/github/moduth/blockcanary/internal/BlockInfo;)V
    .locals 0

    return-void
.end method

.method public provideBlockThreshold()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method public provideContext()Landroid/content/Context;
    .locals 0

    .line 50
    sget-object p0, Lcom/github/moduth/blockcanary/BlockCanaryContext;->sApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public provideDumpInterval()I
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/BlockCanaryContext;->provideBlockThreshold()I

    move-result p0

    return p0
.end method

.method public provideMonitorDuration()I
    .locals 0

    const p0, 0x1869f

    return p0
.end method

.method public provideNetworkType()Ljava/lang/String;
    .locals 0

    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public providePath()Ljava/lang/String;
    .locals 0

    const-string p0, "/blockcanary/"

    return-object p0
.end method

.method public provideQualifier()Ljava/lang/String;
    .locals 0

    const-string p0, "Unspecified"

    return-object p0
.end method

.method public provideUid()Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    return-object p0
.end method

.method public provideWhiteList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public stopWhenDebugging()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public upload(Ljava/io/File;)V
    .locals 0

    .line 90
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public zip([Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
