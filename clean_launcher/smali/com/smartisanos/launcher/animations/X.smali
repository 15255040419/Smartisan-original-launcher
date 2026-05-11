.class Lcom/smartisanos/launcher/animations/X;
.super Lcom/smartisanos/smengine/a;
.source "IconSortAnimation.java"


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/animations/Y;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/Y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/X;->this$2:Lcom/smartisanos/launcher/animations/Y;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/X;->this$2:Lcom/smartisanos/launcher/animations/Y;

    iget-object v1, v0, Lcom/smartisanos/launcher/animations/Y;->this$1:Lcom/smartisanos/launcher/animations/aa;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/animations/Y;->VA:Z

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/animations/ma;->b(Lcom/smartisanos/launcher/animations/ma;Z)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/X;->this$2:Lcom/smartisanos/launcher/animations/Y;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Y;->this$1:Lcom/smartisanos/launcher/animations/aa;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/ma;->e(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method
