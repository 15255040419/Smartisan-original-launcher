.class Lcom/smartisanos/launcher/view/b/m;
.super Ljava/lang/Object;
.source "FolderPageView.java"

# interfaces
.implements Lcom/smartisanos/smengine/aa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/m;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/m;->this$0:Lcom/smartisanos/launcher/view/b/t;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/t;->log:Lcom/smartisanos/launcher/va;

    const-string p1, " mGaussianBackgroundRect ON_FOLDER_DOING_ANIM"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->pe()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Bh()Lcom/smartisanos/launcher/view/db;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/smartisanos/launcher/view/db;->b(ZZ)V

    :goto_0
    return-void
.end method
