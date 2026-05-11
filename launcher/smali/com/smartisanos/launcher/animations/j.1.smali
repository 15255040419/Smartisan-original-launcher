.class Lcom/smartisanos/launcher/animations/j;
.super Lcom/smartisanos/smengine/a;
.source "AnimationController.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/j;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/j;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/j;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/smartisanos/launcher/theme/X;->ju:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/j;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Er()Lcom/smartisanos/smengine/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Vg()V

    return-void
.end method
