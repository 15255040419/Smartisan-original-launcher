.class Lcom/smartisanos/launcher/f;
.super Lcom/smartisanos/smengine/n;
.source "ActivityProxy.java"


# instance fields
.field final synthetic pD:Lcom/smartisanos/launcher/theme/v;

.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;ILcom/smartisanos/launcher/theme/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/f;->this$0:Lcom/smartisanos/launcher/J;

    iput-object p3, p0, Lcom/smartisanos/launcher/f;->pD:Lcom/smartisanos/launcher/theme/v;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/f;->pD:Lcom/smartisanos/launcher/theme/v;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/theme/t;->d(Lcom/smartisanos/launcher/theme/v;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method
