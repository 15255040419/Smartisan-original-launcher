.class Lcom/smartisanos/launcher/animations/a/f;
.super Ljava/lang/Object;
.source "PageScrollAnimation.java"

# interfaces
.implements Laurelienribon/tweenengine/m;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/a/i;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/a/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/f;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILaurelienribon/tweenengine/b;)V
    .locals 0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/f;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->onAnimationEnd()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 p1, 0x80

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/f;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->onAnimationStart()V

    :goto_0
    return-void
.end method
