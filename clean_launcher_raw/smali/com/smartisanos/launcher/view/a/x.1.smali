.class Lcom/smartisanos/launcher/view/a/x;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/x;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/x;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/x;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/x;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Vg()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/x;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Ml()Lcom/smartisanos/launcher/view/a/Z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->ea(Z)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/x;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Cm()V

    return-void
.end method
