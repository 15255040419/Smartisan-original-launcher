.class Lcom/smartisanos/launcher/ma;
.super Lcom/smartisanos/smengine/n;
.source "ConfirmPasswordActivity.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ConfirmPasswordActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/ma;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->X(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/ma;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->c(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/smartisanos/launcher/ma;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->d(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    :cond_1
    return-void
.end method
