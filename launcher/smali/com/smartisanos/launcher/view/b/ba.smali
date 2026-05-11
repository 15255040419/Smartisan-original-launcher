.class Lcom/smartisanos/launcher/view/b/ba;
.super Lcom/smartisanos/smengine/n;
.source "PageView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/fa;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/fa;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/ba;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/b/ba;->val$list:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/ba;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/ba;->val$list:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/fa;->y(Ljava/util/List;)V

    return-void
.end method
