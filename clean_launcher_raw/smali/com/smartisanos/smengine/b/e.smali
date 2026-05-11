.class public Lcom/smartisanos/smengine/b/e;
.super Ljava/lang/Object;
.source "FlagDismissParticleInfluencer.java"

# interfaces
.implements Lcom/smartisanos/smengine/b/h;


# instance fields
.field protected NW:Lcom/smartisanos/smengine/a/j;

.field protected OW:F

.field protected transient WR:Lcom/smartisanos/smengine/a/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/b/e;->WR:Lcom/smartisanos/smengine/a/j;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/b/e;->NW:Lcom/smartisanos/smengine/a/j;

    const v0, 0x3e4ccccd    # 0.2f

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/b/e;->OW:F

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/smartisanos/smengine/b/e;->OW:F

    return-void
.end method

.method protected a(Lcom/smartisanos/smengine/b/f;)V
    .locals 4

    .line 3
    iget-object v0, p1, Lcom/smartisanos/smengine/b/f;->QW:Lcom/smartisanos/smengine/a/j;

    iget-object v1, p0, Lcom/smartisanos/smengine/b/e;->NW:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 5
    iget-object v1, p0, Lcom/smartisanos/smengine/b/e;->WR:Lcom/smartisanos/smengine/a/j;

    neg-float v2, v0

    invoke-static {v2, v0}, Lcom/smartisanos/smengine/a/a;->x(FF)F

    move-result v3

    invoke-static {v2, v0}, Lcom/smartisanos/smengine/a/a;->x(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/smengine/b/e;->WR:Lcom/smartisanos/smengine/a/j;

    iget-object v1, p0, Lcom/smartisanos/smengine/b/e;->NW:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/a/j;->length()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/a/j;->aa(F)Lcom/smartisanos/smengine/a/j;

    .line 7
    iget-object p1, p1, Lcom/smartisanos/smengine/b/f;->QW:Lcom/smartisanos/smengine/a/j;

    iget-object v0, p0, Lcom/smartisanos/smengine/b/e;->WR:Lcom/smartisanos/smengine/a/j;

    iget p0, p0, Lcom/smartisanos/smengine/b/e;->OW:F

    invoke-virtual {p1, v0, p0}, Lcom/smartisanos/smengine/a/j;->a(Lcom/smartisanos/smengine/a/j;F)Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/b/f;Lcom/smartisanos/smengine/b/d;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    invoke-interface {p2, v0}, Lcom/smartisanos/smengine/b/d;->a(Lcom/smartisanos/smengine/a/j;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/b/e;->a(Lcom/smartisanos/smengine/b/f;)V

    return-void
.end method

.method public b(Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/b/e;->NW:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public clone()Lcom/smartisanos/smengine/b/h;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/b/b;

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/b/e;->NW:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/j;->clone()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    iput-object p0, v0, Lcom/smartisanos/smengine/b/b;->NW:Lcom/smartisanos/smengine/a/j;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/b/e;->clone()Lcom/smartisanos/smengine/b/h;

    move-result-object p0

    return-object p0
.end method
