.class Lcom/smartisanos/launcher/animations/C;
.super Lcom/smartisanos/smengine/a;
.source "CellUninstallAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/G;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/G;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/C;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Sc;->setRenderQueue(I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Sc;->setRenderQueue(I)V

    :cond_0
    return-void
.end method
