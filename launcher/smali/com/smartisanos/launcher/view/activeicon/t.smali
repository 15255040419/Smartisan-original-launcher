.class Lcom/smartisanos/launcher/view/activeicon/t;
.super Lcom/smartisanos/smengine/n;
.source "WeatherView.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/activeicon/u;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/u;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/t;->this$1:Lcom/smartisanos/launcher/view/activeicon/u;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/t;->this$1:Lcom/smartisanos/launcher/view/activeicon/u;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/activeicon/u;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/H;->b(Lcom/smartisanos/launcher/view/activeicon/H;I)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/t;->this$1:Lcom/smartisanos/launcher/view/activeicon/u;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/u;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->xq()V

    return-void
.end method
