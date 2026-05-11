.class Lcom/smartisanos/launcher/animations/la;
.super Lcom/smartisanos/smengine/a;
.source "IconSortAnimation.java"


# instance fields
.field final synthetic UA:Lcom/smartisanos/launcher/view/Gc;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/ma;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/launcher/view/Gc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/la;->this$0:Lcom/smartisanos/launcher/animations/ma;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/la;->UA:Lcom/smartisanos/launcher/view/Gc;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/SceneNode;I[F)V
    .locals 1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 1
    aget p1, p3, p1

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/k;->Wj()Lcom/smartisanos/smengine/Camera;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->z:F

    .line 3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/high16 v0, 0x42700000    # 60.0f

    add-float/2addr p3, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p3, p2

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/la;->UA:Lcom/smartisanos/launcher/view/Gc;

    invoke-virtual {p0, p1, p3}, Lcom/smartisanos/launcher/view/Gc;->s(FF)V

    :cond_0
    return-void
.end method
