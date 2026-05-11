.class Lcom/smartisanos/launcher/W;
.super Lcom/smartisanos/smengine/n;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/W;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->Mb(Z)V

    .line 4
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->Mb(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/V;->Na(Z)V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method
