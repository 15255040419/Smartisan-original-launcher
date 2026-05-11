.class Lcom/smartisanos/launcher/view/activeicon/G;
.super Ljava/lang/Object;
.source "WeatherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/activeicon/H;

.field final synthetic uy:Z

.field final synthetic vy:I


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/H;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/G;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/activeicon/G;->uy:Z

    iput p3, p0, Lcom/smartisanos/launcher/view/activeicon/G;->vy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/activeicon/G;->uy:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/G;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->e(Lcom/smartisanos/launcher/view/activeicon/H;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/G;->vy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/G;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->f(Lcom/smartisanos/launcher/view/activeicon/H;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/view/activeicon/G;->vy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/G;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/activeicon/H;->g(Lcom/smartisanos/launcher/view/activeicon/H;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/G;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->h(Lcom/smartisanos/launcher/view/activeicon/H;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/G;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/activeicon/H;->h(Lcom/smartisanos/launcher/view/activeicon/H;)[I

    move-result-object v1

    const/4 v3, 0x0

    aget v1, v1, v3

    aput v1, v0, v2

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/view/activeicon/F;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/activeicon/F;-><init>(Lcom/smartisanos/launcher/view/activeicon/G;I)V

    const/4 p0, 0x0

    .line 7
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
