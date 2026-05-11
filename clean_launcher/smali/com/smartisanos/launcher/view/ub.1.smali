.class Lcom/smartisanos/launcher/view/ub;
.super Lcom/smartisanos/smengine/n;
.source "MainView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ub;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ub;->this$0:Lcom/smartisanos/launcher/view/Eb;

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x0

    invoke-static {p0, v0, v0, v1}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/Eb;FFZ)V

    return-void
.end method
