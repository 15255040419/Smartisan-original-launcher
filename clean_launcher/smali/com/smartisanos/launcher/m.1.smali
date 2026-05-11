.class Lcom/smartisanos/launcher/m;
.super Ljava/lang/Object;
.source "ActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/J;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/m;->this$0:Lcom/smartisanos/launcher/J;

    iput p2, p0, Lcom/smartisanos/launcher/m;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/m;->val$resultCode:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, -0x1

    if-ne v3, v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->access$200()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 4
    :goto_0
    new-instance v0, Lcom/smartisanos/launcher/k;

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/k;-><init>(Lcom/smartisanos/launcher/m;I)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_3

    :cond_0
    const/4 v3, 0x1

    if-eq v3, v0, :cond_2

    const/4 v4, 0x2

    if-ne v4, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/l;

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/l;-><init>(Lcom/smartisanos/launcher/m;I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_3

    .line 8
    :cond_2
    :goto_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/J;->access$400()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    const v0, 0x10008000

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const v0, 0x8000

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_2
    const-string v0, "FROM_LAUNCHER"

    .line 13
    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4

    const-string v0, "disable_finger_print"

    .line 15
    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/smartisanos/launcher/J;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_3
    return-void
.end method
