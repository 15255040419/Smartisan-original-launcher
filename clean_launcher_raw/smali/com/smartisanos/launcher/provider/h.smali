.class Lcom/smartisanos/launcher/provider/h;
.super Ljava/lang/Object;
.source "DownloadManagerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->t()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/smartisanos/launcher/provider/g;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2, v0}, Lcom/smartisanos/launcher/provider/g;-><init>(Lcom/smartisanos/launcher/provider/h;ILjava/util/ArrayList;)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_0
    return-void
.end method
