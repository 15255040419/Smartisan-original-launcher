.class Lcom/smartisanos/launcher/animations/a/c;
.super Ljava/lang/Object;
.source "PageScrollAnimation.java"

# interfaces
.implements Laurelienribon/tweenengine/m;


# instance fields
.field final synthetic Do:Z

.field final synthetic Eo:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/a/i;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/a/i;ZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/c;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/animations/a/c;->Do:Z

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/a/c;->Eo:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILaurelienribon/tweenengine/b;)V
    .locals 0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/a/c;->Do:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/c;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/a/i;->onAnimationEnd()V

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/c;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/smartisanos/launcher/animations/a/i;->Vo:Laurelienribon/tweenengine/k;

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/c;->Eo:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6
    :cond_2
    iget-boolean p1, p0, Lcom/smartisanos/launcher/animations/a/c;->Do:Z

    if-eqz p1, :cond_3

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/c;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->onAnimationStart()V

    :cond_3
    :goto_0
    return-void
.end method
