.class Lcom/smartisanos/launcher/animations/g;
.super Lcom/smartisanos/smengine/n;
.source "AnimationController.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/r;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/g;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/g;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Dd()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/g;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/animations/r;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/g;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/g;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->b(Lcom/smartisanos/launcher/animations/r;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/g;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/r;->h(Lcom/smartisanos/launcher/animations/r;)V

    return-void
.end method
