.class Lcom/smartisanos/launcher/view/activeicon/F;
.super Lcom/smartisanos/smengine/n;
.source "WeatherView.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/activeicon/G;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/G;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/F;->this$1:Lcom/smartisanos/launcher/view/activeicon/G;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/F;->this$1:Lcom/smartisanos/launcher/view/activeicon/G;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/G;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->xq()V

    return-void
.end method
