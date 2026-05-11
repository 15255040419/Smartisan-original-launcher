.class Lcom/smartisanos/launcher/animations/Wa;
.super Lcom/smartisanos/smengine/n;
.source "RootViewAnimation.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->y()Lcom/smartisanos/smengine/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method
