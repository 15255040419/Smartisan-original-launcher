.class Lcom/smartisanos/launcher/q;
.super Lcom/smartisanos/smengine/n;
.source "ActivityProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/q;->this$0:Lcom/smartisanos/launcher/J;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/q;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {v0}, Lcom/smartisanos/launcher/J;->g(Lcom/smartisanos/launcher/J;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/smartisanos/launcher/q;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {p0}, Lcom/smartisanos/launcher/J;->h(Lcom/smartisanos/launcher/J;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Hh()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result p0

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->o(IZ)V

    :cond_0
    return-void
.end method
