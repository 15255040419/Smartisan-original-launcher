.class Lcom/smartisanos/launcher/Ma;
.super Ljava/lang/Object;
.source "Launchpad.java"

# interfaces
.implements Lsmartisanos/os/RemoteCallback$OnResultListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/smartisanos/launcher/Qa;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
