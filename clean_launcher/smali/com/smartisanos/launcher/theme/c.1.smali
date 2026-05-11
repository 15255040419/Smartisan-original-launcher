.class Lcom/smartisanos/launcher/theme/c;
.super Lcom/smartisanos/smengine/n;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/theme/d;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/c;->this$1:Lcom/smartisanos/launcher/theme/d;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/c;->this$1:Lcom/smartisanos/launcher/theme/d;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/d;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->f(Lcom/smartisanos/launcher/theme/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/theme/c;->this$1:Lcom/smartisanos/launcher/theme/d;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/d;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/t;->h(Lcom/smartisanos/launcher/theme/t;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "mTimeoutRunnable"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/c;->this$1:Lcom/smartisanos/launcher/theme/d;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/d;->this$0:Lcom/smartisanos/launcher/theme/t;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/t;->xt:Lcom/smartisanos/launcher/theme/Z;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/Z;->clear()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/c;->this$1:Lcom/smartisanos/launcher/theme/d;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/d;->this$0:Lcom/smartisanos/launcher/theme/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/theme/t;->P(Z)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/c;->this$1:Lcom/smartisanos/launcher/theme/d;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/d;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Zf()V

    :cond_1
    return-void
.end method
