.class Lcom/smartisanos/launcher/view/uc;
.super Lcom/smartisanos/smengine/n;
.source "RootView.java"


# instance fields
.field final synthetic kE:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/view/RootView;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/RootView;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/uc;->this$0:Lcom/smartisanos/launcher/view/RootView;

    iput-boolean p3, p0, Lcom/smartisanos/launcher/view/uc;->kE:Z

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/ub;->Mc()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Hd()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/uc;->kE:Z

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/Ha;->wb(Z)V

    :cond_3
    :goto_0
    return-void
.end method
