.class final Lcom/smartisanos/launcher/animations/y;
.super Ljava/lang/Object;
.source "CellConvertAnimation.java"

# interfaces
.implements Laurelienribon/tweenengine/l;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/animations/u;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/animations/x;I[F)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/x;->Od()F

    move-result p0

    const/4 p1, 0x0

    .line 3
    aput p0, p3, p1

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I[F)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/animations/x;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/y;->a(Lcom/smartisanos/launcher/animations/x;I[F)I

    move-result p0

    return p0
.end method

.method public b(Lcom/smartisanos/launcher/animations/x;I[F)V
    .locals 0

    const/4 p0, 0x0

    .line 2
    aget p0, p3, p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/smartisanos/launcher/animations/x;->a(FZ)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I[F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/animations/x;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/y;->b(Lcom/smartisanos/launcher/animations/x;I[F)V

    return-void
.end method
