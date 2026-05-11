.class Lcom/smartisanos/launcher/view/L;
.super Lcom/smartisanos/smengine/a;
.source "DockView.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/M;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/L;->this$1:Lcom/smartisanos/launcher/view/M;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/L;->this$1:Lcom/smartisanos/launcher/view/M;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/M;->this$0:Lcom/smartisanos/launcher/view/V;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/V;->b(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method
