.class Lcom/smartisanos/launcher/view/activeicon/k;
.super Lcom/smartisanos/smengine/n;
.source "CalendarView.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/activeicon/l;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/l;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/k;->this$1:Lcom/smartisanos/launcher/view/activeicon/l;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/k;->this$1:Lcom/smartisanos/launcher/view/activeicon/l;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/l;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/k;->this$1:Lcom/smartisanos/launcher/view/activeicon/l;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/l;->this$0:Lcom/smartisanos/launcher/view/activeicon/m;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/m;->h(Lcom/smartisanos/launcher/view/activeicon/m;)V

    :cond_0
    return-void
.end method
