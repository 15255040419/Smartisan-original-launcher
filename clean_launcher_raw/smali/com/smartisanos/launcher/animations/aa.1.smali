.class Lcom/smartisanos/launcher/animations/aa;
.super Lcom/smartisanos/smengine/a;
.source "IconSortAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/ma;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/ma;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->a(Lcom/smartisanos/launcher/animations/ma;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->b(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->getUserData()B

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    new-instance v0, Lcom/smartisanos/launcher/animations/Y;

    invoke-direct {v0, p0, v2, v3}, Lcom/smartisanos/launcher/animations/Y;-><init>(Lcom/smartisanos/launcher/animations/aa;IZ)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->a(Lcom/smartisanos/launcher/animations/ma;)V

    .line 7
    new-instance v0, Lcom/smartisanos/launcher/animations/Z;

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/animations/Z;-><init>(Lcom/smartisanos/launcher/animations/aa;I)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 9
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/ma;->a(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method
