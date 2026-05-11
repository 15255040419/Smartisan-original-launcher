.class Lcom/smartisanos/launcher/view/sb;
.super Lcom/smartisanos/smengine/n;
.source "MainView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/sb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/sb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->b(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    iget-boolean p0, p0, Lcom/smartisanos/launcher/J;->Oa:Z

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "######## emergency unlock animation play return ,because has not get focus!"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Kd()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "### there is a error, because emergency unlock run"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    if-eqz p0, :cond_1

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "UnlockAnim, createEmergencyUnlockEvent"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Ld()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Fd()V

    :cond_2
    :goto_0
    return-void
.end method
