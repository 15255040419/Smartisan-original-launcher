.class Lcom/smartisanos/launcher/animations/Za;
.super Lcom/smartisanos/smengine/n;
.source "RootViewAnimation.java"


# instance fields
.field final synthetic bB:Lcom/smartisanos/launcher/view/b/fa;


# direct methods
.method constructor <init>(ILcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/Za;->bB:Lcom/smartisanos/launcher/view/b/fa;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Za;->bB:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/Qa;->Sd()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Za;->bB:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/animations/Ya;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/Ya;-><init>(Lcom/smartisanos/launcher/animations/Za;I)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
