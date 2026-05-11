.class Lcom/smartisanos/launcher/view/activeicon/E;
.super Lcom/smartisanos/smengine/n;
.source "WeatherView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/activeicon/H;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/H;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/E;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/E;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/H;->b(Lcom/smartisanos/launcher/view/activeicon/H;I)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/E;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->xq()V

    return-void
.end method
