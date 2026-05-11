.class Lcom/smartisanos/launcher/animations/m;
.super Lcom/smartisanos/smengine/a;
.source "AnimationController.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/m;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/m;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->L(F)V

    return-void
.end method
