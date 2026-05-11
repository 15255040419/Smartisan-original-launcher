.class Lcom/smartisanos/launcher/animations/ba;
.super Lcom/smartisanos/smengine/a;
.source "IconSortAnimation.java"


# instance fields
.field final synthetic VA:Z

.field final synthetic this$1:Lcom/smartisanos/launcher/animations/ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/ca;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ba;->this$1:Lcom/smartisanos/launcher/animations/ca;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/animations/ba;->VA:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/ba;->this$1:Lcom/smartisanos/launcher/animations/ca;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/ca;->this$0:Lcom/smartisanos/launcher/animations/ma;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/animations/ba;->VA:Z

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/ma;->b(Lcom/smartisanos/launcher/animations/ma;Z)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ba;->this$1:Lcom/smartisanos/launcher/animations/ca;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ca;->this$0:Lcom/smartisanos/launcher/animations/ma;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/ma;->e(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method
