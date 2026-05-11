.class Lcom/smartisanos/launcher/animations/a/j;
.super Lcom/smartisanos/smengine/a;
.source "PageScrollAnimationDefault.java"


# instance fields
.field final synthetic Eo:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/a/k;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/a/k;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/j;->this$0:Lcom/smartisanos/launcher/animations/a/k;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/a/j;->Eo:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x400000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/j;->Eo:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
