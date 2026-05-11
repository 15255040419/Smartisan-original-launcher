.class Lcom/smartisanos/launcher/animations/a/h;
.super Ljava/lang/Object;
.source "PageScrollAnimation.java"

# interfaces
.implements Laurelienribon/tweenengine/l;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/a/i;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/a/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/h;->this$0:Lcom/smartisanos/launcher/animations/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/animations/a/i;I[F)I
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/smartisanos/launcher/animations/a/i;->Lo:[F

    sub-int/2addr p2, v1

    aget p1, p1, p2

    aput p1, p3, p0

    return v1

    :cond_1
    :goto_0
    if-ge p0, v0, :cond_2

    .line 3
    iget-object p2, p1, Lcom/smartisanos/launcher/animations/a/i;->Ko:[F

    aget p2, p2, p0

    aput p2, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I[F)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/animations/a/i;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/a/h;->a(Lcom/smartisanos/launcher/animations/a/i;I[F)I

    move-result p0

    return p0
.end method

.method public b(Lcom/smartisanos/launcher/animations/a/i;I[F)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    const/4 p0, 0x2

    if-eq p2, p0, :cond_0

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    const/4 p0, 0x4

    if-eq p2, p0, :cond_0

    const/4 p0, 0x5

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    aget p0, p3, p0

    invoke-static {p1, p2, p0}, Lcom/smartisanos/launcher/animations/a/i;->a(Lcom/smartisanos/launcher/animations/a/i;IF)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1, p3}, Lcom/smartisanos/launcher/animations/a/i;->a(Lcom/smartisanos/launcher/animations/a/i;[F)V

    :goto_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I[F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/animations/a/i;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/a/h;->b(Lcom/smartisanos/launcher/animations/a/i;I[F)V

    return-void
.end method
