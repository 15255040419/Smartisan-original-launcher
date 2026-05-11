.class Lcom/smartisanos/launcher/animations/a/o;
.super Ljava/lang/Object;
.source "PageScrollAnimationLouver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/animations/a/p;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/a/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/o;->this$1:Lcom/smartisanos/launcher/animations/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/c/i;->Xb(Z)V

    return-void
.end method
