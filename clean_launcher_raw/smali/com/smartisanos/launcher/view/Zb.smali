.class Lcom/smartisanos/launcher/view/Zb;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/ec;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Zb;->this$0:Lcom/smartisanos/launcher/view/ec;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Zb;->this$0:Lcom/smartisanos/launcher/view/ec;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/ec;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Eq()V

    return-void
.end method
