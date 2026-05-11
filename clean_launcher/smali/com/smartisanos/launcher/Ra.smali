.class Lcom/smartisanos/launcher/Ra;
.super Landroid/os/Handler;
.source "MainThread.java"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/J;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "handleMessage failed by context is not ready"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
