.class Lcom/smartisanos/launcher/animations/b/g;
.super Ljava/lang/Object;
.source "SwipeAnimController.java"

# interfaces
.implements Lcom/smartisanos/launcher/animations/cb;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/b/k;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/b/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/b/g;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/g;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->c(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scale onAnimationEnd value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SWIPE_ANIM"

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/b/g;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/smartisanos/launcher/animations/b/k;->b(Lcom/smartisanos/launcher/animations/b/k;Z)Z

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/g;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/b/k;->f(Lcom/smartisanos/launcher/animations/b/k;)V

    return-void
.end method

.method public e(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/g;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->c(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scale onAnimationUpdate value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWIPE_ANIM"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/g;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/animations/b/k;->e(IF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/g;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/b/k;->d(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/animations/b/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/animations/b/a;)V

    :cond_0
    return-void
.end method
