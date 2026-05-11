.class Lcom/smartisanos/launcher/view/lc;
.super Lcom/smartisanos/smengine/a;
.source "PageTitleView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/tc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/tc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/lc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/lc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/lc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/lc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/b/ka;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/ka;->qb(Z)V

    :cond_0
    return-void
.end method
