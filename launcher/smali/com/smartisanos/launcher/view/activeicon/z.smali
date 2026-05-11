.class Lcom/smartisanos/launcher/view/activeicon/z;
.super Lcom/smartisanos/smengine/a;
.source "WeatherView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/activeicon/H;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/H;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/z;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/z;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->a(Lcom/smartisanos/launcher/view/activeicon/H;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/z;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->b(Lcom/smartisanos/launcher/view/activeicon/H;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/z;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->b(Lcom/smartisanos/launcher/view/activeicon/H;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method
