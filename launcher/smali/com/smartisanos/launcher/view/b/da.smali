.class Lcom/smartisanos/launcher/view/b/da;
.super Lcom/smartisanos/smengine/a;
.source "PageView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/fa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/da;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/V;->mb(I)V

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x200000

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->mb(I)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/da;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/b/fa;->NQ:Lcom/smartisanos/smengine/g;

    return-void
.end method
