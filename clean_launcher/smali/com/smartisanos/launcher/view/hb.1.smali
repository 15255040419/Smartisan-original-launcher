.class Lcom/smartisanos/launcher/view/hb;
.super Lcom/smartisanos/smengine/a;
.source "IconWithTextView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/ib;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/ib;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/hb;->this$0:Lcom/smartisanos/launcher/view/ib;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/hb;->this$0:Lcom/smartisanos/launcher/view/ib;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/smartisanos/launcher/view/ib;->setColor(FFFF)V

    return-void
.end method
