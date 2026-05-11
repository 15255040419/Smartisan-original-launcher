.class Lcom/smartisanos/launcher/animations/a/m;
.super Lcom/smartisanos/smengine/n;
.source "PageScrollAnimationList.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget p0, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/a/n;->da(I)Lcom/smartisanos/launcher/animations/a/i;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/a/n;->da(I)Lcom/smartisanos/launcher/animations/a/i;

    move-result-object p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/Ha;->b(Lcom/smartisanos/launcher/animations/a/i;)V

    return-void
.end method
