.class Lcom/smartisanos/launcher/animations/w;
.super Lcom/smartisanos/smengine/a;
.source "CellConvertAnimation.java"


# instance fields
.field final synthetic Ei:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic LA:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/w;->Ei:Lcom/smartisanos/launcher/view/a/g;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/w;->LA:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/w;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/w;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Fy:Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/w;->LA:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
