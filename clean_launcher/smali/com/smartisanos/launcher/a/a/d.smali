.class Lcom/smartisanos/launcher/a/a/d;
.super Ljava/lang/Object;
.source "SmartisanosGestureController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic wk:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/a/a/d;->wk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/a/a/e;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GestureController overViewGesture isNeedOverView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/launcher/a/a/d;->wk:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iget-boolean p0, p0, Lcom/smartisanos/launcher/a/a/d;->wk:Z

    if-eqz p0, :cond_2

    .line 5
    invoke-static {}, Lsmartisanos/api/LayoutParamsSmt;->getInstance()Lsmartisanos/api/LayoutParamsSmt;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/launcher/a/a/e;->access$100()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lsmartisanos/api/LayoutParamsSmt;->add_smartisanPrivateFlag(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lsmartisanos/api/LayoutParamsSmt;->getInstance()Lsmartisanos/api/LayoutParamsSmt;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/launcher/a/a/e;->access$100()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lsmartisanos/api/LayoutParamsSmt;->removeSmartisanPrivateFlag(Landroid/view/WindowManager$LayoutParams;I)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .line 8
    :cond_3
    :goto_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/a/a/e;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityProxy.getInstance()  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
