.class Lcom/smartisanos/launcher/view/Ta;
.super Ljava/lang/Object;
.source "FlagDismissAnimationNode.java"

# interfaces
.implements Laurelienribon/tweenengine/l;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ua;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ua;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ta;->this$0:Lcom/smartisanos/launcher/view/Ua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/view/Ua;I[F)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Ua;->getProgress()F

    move-result p0

    const/4 p1, 0x0

    aput p0, p3, p1

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I[F)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/view/Ua;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/Ta;->a(Lcom/smartisanos/launcher/view/Ua;I[F)I

    move-result p0

    return p0
.end method

.method public b(Lcom/smartisanos/launcher/view/Ua;I[F)V
    .locals 0

    const/4 p0, 0x0

    .line 2
    aget p0, p3, p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/Ua;->setProgress(F)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I[F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/view/Ua;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/Ta;->b(Lcom/smartisanos/launcher/view/Ua;I[F)V

    return-void
.end method
