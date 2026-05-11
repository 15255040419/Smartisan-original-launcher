.class Lcom/smartisanos/launcher/view/Da;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Lcom/smartisanos/smengine/xa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ha;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ha;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Da;->this$0:Lcom/smartisanos/launcher/view/Ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_FOUR_FINGER_HORIZONTALLY_SLIDE:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->zc()V

    .line 3
    invoke-static {p1}, Lcom/smartisanos/launcher/a/a/c;->y(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "ENABLE_FOUR_FINGER_HORIZONTALLY_SLIDE is false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Da;->this$0:Lcom/smartisanos/launcher/view/Ha;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ha;->a(Lcom/smartisanos/launcher/view/Ha;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/Da;->Ac()V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Da;->this$0:Lcom/smartisanos/launcher/view/Ha;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Ha;->a(Lcom/smartisanos/launcher/view/Ha;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Da;->this$0:Lcom/smartisanos/launcher/view/Ha;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Ha;->a(Lcom/smartisanos/launcher/view/Ha;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->uc()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Yh()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    const/4 v0, 0x1

    const-wide/16 v1, 0x118

    invoke-virtual {p0, v0, v1, v2}, Lcom/smartisanos/launcher/view/Eb;->a(ZJ)V

    return-void
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Da;->this$0:Lcom/smartisanos/launcher/view/Ha;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ha;->a(Lcom/smartisanos/launcher/view/Ha;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Da;->this$0:Lcom/smartisanos/launcher/view/Ha;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Ha;->a(Lcom/smartisanos/launcher/view/Ha;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
