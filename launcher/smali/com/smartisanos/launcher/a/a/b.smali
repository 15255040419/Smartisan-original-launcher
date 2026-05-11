.class Lcom/smartisanos/launcher/a/a/b;
.super Ljava/lang/Object;
.source "FourFingerSlide.java"

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
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/J;->eg:Lcom/smartisanos/launcher/widget/c;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/widget/c;->Xz:Z

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->ka(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/J;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
