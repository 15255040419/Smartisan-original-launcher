.class Lcom/smartisanos/launcher/view/Ra;
.super Ljava/lang/Object;
.source "FlagDismissAnimationNode.java"

# interfaces
.implements Laurelienribon/tweenengine/m;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ua;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ua;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ra;->this$0:Lcom/smartisanos/launcher/view/Ua;

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
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Ra;->this$0:Lcom/smartisanos/launcher/view/Ua;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/Ua;->b(Lcom/smartisanos/launcher/view/Ua;)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ra;->this$0:Lcom/smartisanos/launcher/view/Ua;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/Ua;->a(Lcom/smartisanos/launcher/view/Ua;Laurelienribon/tweenengine/k;)Laurelienribon/tweenengine/k;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ra;->this$0:Lcom/smartisanos/launcher/view/Ua;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Ua;->a(Lcom/smartisanos/launcher/view/Ua;)V

    :goto_0
    return-void
.end method
