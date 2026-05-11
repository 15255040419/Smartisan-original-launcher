.class Lcom/smartisanos/launcher/animations/ha;
.super Lcom/smartisanos/smengine/a;
.source "IconSortAnimation.java"


# instance fields
.field final synthetic WA:I

.field final synthetic this$1:Lcom/smartisanos/launcher/animations/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/ja;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ha;->this$1:Lcom/smartisanos/launcher/animations/ja;

    iput p2, p0, Lcom/smartisanos/launcher/animations/ha;->WA:I

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ha;->this$1:Lcom/smartisanos/launcher/animations/ja;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->j(Lcom/smartisanos/launcher/animations/ma;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/animations/ha;->WA:I

    const/16 v1, 0x64

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 6
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v4, 0x100000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/a/b/i;->Ek:I

    const/4 v4, 0x0

    if-ne v0, v2, :cond_3

    .line 8
    iget v0, p0, Lcom/smartisanos/launcher/animations/ha;->WA:I

    if-eq v0, v1, :cond_3

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v0

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->rr()I

    move-result v2

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v6

    invoke-virtual {v1, v2, v6}, Lcom/smartisanos/launcher/view/b/fa;->G(II)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ha;->this$1:Lcom/smartisanos/launcher/animations/ja;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/ma;->f(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ha;->this$1:Lcom/smartisanos/launcher/animations/ja;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/ma;->f(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ha;->this$1:Lcom/smartisanos/launcher/animations/ja;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v1, v4}, Lcom/smartisanos/launcher/animations/ma;->d(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/ha;->this$1:Lcom/smartisanos/launcher/animations/ja;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    sub-int/2addr v0, v3

    const v3, 0x3eb851ec    # 0.36f

    invoke-virtual {v2, v0, v3, v5, v4}, Lcom/smartisanos/launcher/view/b/fa;->a(IFZLcom/smartisanos/smengine/a;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/animations/ma;->d(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ha;->this$1:Lcom/smartisanos/launcher/animations/ja;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->f(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/animations/ga;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/ga;-><init>(Lcom/smartisanos/launcher/animations/ha;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ha;->this$1:Lcom/smartisanos/launcher/animations/ja;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->f(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 18
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ha;->this$1:Lcom/smartisanos/launcher/animations/ja;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {p0, v4}, Lcom/smartisanos/launcher/animations/ma;->c(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method
