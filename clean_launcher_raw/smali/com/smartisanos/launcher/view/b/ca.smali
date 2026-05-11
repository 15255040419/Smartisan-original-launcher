.class Lcom/smartisanos/launcher/view/b/ca;
.super Lcom/smartisanos/smengine/a;
.source "PageView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/fa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ca;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void
.end method
