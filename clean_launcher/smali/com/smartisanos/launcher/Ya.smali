.class Lcom/smartisanos/launcher/Ya;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ei:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic Fi:Z

.field final synthetic ui:I

.field final synthetic vi:I


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/g;ZII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/Ya;->Ei:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/Ya;->Fi:Z

    iput p3, p0, Lcom/smartisanos/launcher/Ya;->ui:I

    iput p4, p0, Lcom/smartisanos/launcher/Ya;->vi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/Ya;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-static {v0}, Lcom/smartisanos/launcher/eb;->a(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/eb;->access$200()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/eb;->access$300()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "show menu !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lsmartisanos/api/ViewSmt;->getInstance()Lsmartisanos/api/ViewSmt;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/eb;->access$200()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/smartisanos/launcher/Ya;->Fi:Z

    invoke-virtual {v0, v1, v2}, Lsmartisanos/api/ViewSmt;->setShowMenuBaseOnRightBottom(Landroid/view/View;Z)V

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/Ya;->ui:I

    invoke-static {v0}, Lcom/smartisanos/launcher/eb;->P(I)I

    .line 7
    iget v0, p0, Lcom/smartisanos/launcher/Ya;->vi:I

    invoke-static {v0}, Lcom/smartisanos/launcher/eb;->Q(I)I

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/eb;->access$200()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/Ya;->ui:I

    int-to-float v1, v1

    iget p0, p0, Lcom/smartisanos/launcher/Ya;->vi:I

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->showContextMenu(FF)Z

    :cond_1
    return-void
.end method
