.class Lcom/smartisanos/launcher/Fa;
.super Ljava/lang/Object;
.source "Launchpad.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Pf:I

.field final synthetic ni:Z


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/Fa;->ni:Z

    iput p2, p0, Lcom/smartisanos/launcher/Fa;->Pf:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Sa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 5
    iget-boolean v3, p0, Lcom/smartisanos/launcher/Fa;->ni:Z

    if-eqz v3, :cond_3

    .line 6
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget p0, p0, Lcom/smartisanos/launcher/Fa;->Pf:I

    or-int/2addr p0, v3

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 7
    :cond_3
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget p0, p0, Lcom/smartisanos/launcher/Fa;->Pf:I

    not-int p0, p0

    and-int/2addr p0, v3

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8
    :goto_0
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
