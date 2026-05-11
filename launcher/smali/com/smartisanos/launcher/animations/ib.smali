.class Lcom/smartisanos/launcher/animations/ib;
.super Lcom/smartisanos/smengine/a;
.source "TrashAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/lb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/lb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ib;->this$0:Lcom/smartisanos/launcher/animations/lb;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ib;->this$0:Lcom/smartisanos/launcher/animations/lb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/lb;->a(Lcom/smartisanos/launcher/animations/lb;)Lcom/smartisanos/launcher/view/Sc;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Qaa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    return-void
.end method
