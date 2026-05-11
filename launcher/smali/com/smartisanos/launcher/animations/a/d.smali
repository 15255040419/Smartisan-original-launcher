.class Lcom/smartisanos/launcher/animations/a/d;
.super Ljava/lang/Object;
.source "PageScrollAnimation.java"

# interfaces
.implements Laurelienribon/tweenengine/m;


# instance fields
.field final synthetic Eo:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/a/i;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/a/i;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/d;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/a/d;->Eo:Ljava/lang/Runnable;

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
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/d;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/a/i;->onAnimationEnd()V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/a/d;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/smartisanos/launcher/animations/a/i;->Mn:Laurelienribon/tweenengine/h;

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/d;->Eo:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    .line 4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/a/d;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/a/i;->onAnimationStart()V

    :cond_2
    :goto_0
    return-void
.end method
