.class Lcom/smartisanos/launcher/provider/A;
.super Ljava/lang/Object;
.source "SidebarFolderProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ks:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/provider/A;->Ks:Z

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
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "noticeOtherAppWhenFolderChanged return by isSidebarShowing false"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noticeOtherAppWhenFolderChanged force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/smartisanos/launcher/provider/A;->Ks:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/ua;->getSidebarModeState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    return-void

    .line 6
    :cond_4
    new-instance v0, Lcom/smartisanos/launcher/provider/z;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/provider/z;-><init>(Lcom/smartisanos/launcher/provider/A;I)V

    const/4 p0, 0x0

    .line 7
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
