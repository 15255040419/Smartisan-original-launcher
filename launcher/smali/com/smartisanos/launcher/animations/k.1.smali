.class Lcom/smartisanos/launcher/animations/k;
.super Lcom/smartisanos/smengine/a;
.source "AnimationController.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/k;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/k;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Eq()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Vg()V

    return-void
.end method
