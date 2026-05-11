.class Lcom/smartisanos/launcher/view/a/H;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/H;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/H;->this$0:Lcom/smartisanos/launcher/view/a/X;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/a/X;->Hy:Lcom/smartisanos/smengine/g;

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->wm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/H;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/d;->Tg()V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/H;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->ab(Z)V

    :cond_0
    return-void
.end method
