.class Lcom/smartisanos/launcher/view/qc;
.super Ljava/lang/Object;
.source "PageTitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/rc;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/rc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/qc;->this$1:Lcom/smartisanos/launcher/view/rc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/qc;->this$1:Lcom/smartisanos/launcher/view/rc;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/rc;->this$0:Lcom/smartisanos/launcher/view/tc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/tc;->b(Lcom/smartisanos/launcher/view/tc;Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/qc;->this$1:Lcom/smartisanos/launcher/view/rc;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/rc;->this$0:Lcom/smartisanos/launcher/view/tc;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/tc;->e(Lcom/smartisanos/launcher/view/tc;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/fa;->v(Lcom/smartisanos/launcher/view/b/M;)V

    return-void
.end method
