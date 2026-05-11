.class Lcom/smartisanos/launcher/view/b/H;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Lcom/smartisanos/smengine/aa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/b/M;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "onClick return by preview true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, v1, v0, v0, v1}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/tc;->Bb(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p1, :cond_2

    sget p1, Lcom/smartisanos/launcher/ob;->launcher_not_available_for_change_settings:I

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/Qa;->c(ZI)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Rh()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1, v1, v0, v0, v1}, Lcom/smartisanos/launcher/view/b/M;->a(IZZZ)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/tc;->Cb(Z)V

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/b/M;->lb(Z)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/tc;->Zp()V

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->On()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    :cond_5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/H;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Tn()V

    :cond_6
    :goto_0
    return-void
.end method
