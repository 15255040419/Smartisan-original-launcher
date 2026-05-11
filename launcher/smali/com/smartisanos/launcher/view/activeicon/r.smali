.class Lcom/smartisanos/launcher/view/activeicon/r;
.super Lcom/smartisanos/smengine/n;
.source "WeatherView.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/activeicon/s;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/s;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/r;->this$1:Lcom/smartisanos/launcher/view/activeicon/s;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/r;->this$1:Lcom/smartisanos/launcher/view/activeicon/s;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/s;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/r;->this$1:Lcom/smartisanos/launcher/view/activeicon/s;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/s;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->c(Lcom/smartisanos/launcher/view/activeicon/H;)V

    :cond_0
    return-void
.end method
