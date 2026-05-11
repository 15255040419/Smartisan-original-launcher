.class Lcom/smartisanos/launcher/G;
.super Ljava/lang/Object;
.source "ActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Rf:Landroid/content/Intent;

.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/G;->this$0:Lcom/smartisanos/launcher/J;

    iput-object p2, p0, Lcom/smartisanos/launcher/G;->Rf:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "mHasStartSetupWizard set "

    const/4 v1, 0x1

    .line 1
    :try_start_0
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/J;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/G;->this$0:Lcom/smartisanos/launcher/J;

    iget-boolean v4, v4, Lcom/smartisanos/launcher/J;->Yf:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/G;->this$0:Lcom/smartisanos/launcher/J;

    iput-boolean v1, v2, Lcom/smartisanos/launcher/J;->Yf:Z

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/G;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {v2}, Lcom/smartisanos/launcher/J;->a(Lcom/smartisanos/launcher/J;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/G;->Rf:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/launcher/G;->this$0:Lcom/smartisanos/launcher/J;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/J;->Yf:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/G;->this$0:Lcom/smartisanos/launcher/J;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/J;->Yf:Z

    .line 6
    iput-boolean v1, p0, Lcom/smartisanos/launcher/J;->Zf:Z

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/J;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch SetupWizard app."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
