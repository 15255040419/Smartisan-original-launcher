.class public Lcom/smartisanos/smengine/b/b;
.super Ljava/lang/Object;
.source "DefaultParticleInfluencer.java"

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

    iput-object v0, p0, Lcom/smartisanos/smengine/b/b;->WR:Lcom/smartisanos/smengine/a/j;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/b/b;->NW:Lcom/smartisanos/smengine/a/j;

    const v0, 0x3e4ccccd    # 0.2f

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/b/b;->OW:F

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/smartisanos/smengine/b/b;->OW:F

    return-void
.end method

.method protected a(Lcom/smartisanos/smengine/b/f;)V
    .locals 3

    .line 3
    iget-object p1, p0, Lcom/smartisanos/smengine/b/b;->WR:Lcom/smartisanos/smengine/a/j;

    invoke-static {}, Lcom/smartisanos/smengine/a/a;->xt()F

    move-result v0

    invoke-static {}, Lcom/smartisanos/smengine/a/a;->xt()F

    move-result v1

    invoke-static {}, Lcom/smartisanos/smengine/a/a;->xt()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/smengine/b/b;->WR:Lcom/smartisanos/smengine/a/j;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/a/j;->aa(F)Lcom/smartisanos/smengine/a/j;

    .line 5
    iget-object p1, p0, Lcom/smartisanos/smengine/b/b;->WR:Lcom/smartisanos/smengine/a/j;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v0}, Lcom/smartisanos/smengine/a/j;->j(FFF)Lcom/smartisanos/smengine/a/j;

    .line 6
    iget-object p1, p0, Lcom/smartisanos/smengine/b/b;->WR:Lcom/smartisanos/smengine/a/j;

    iget-object p0, p0, Lcom/smartisanos/smengine/b/b;->NW:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/j;->length()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/a/j;->aa(F)Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/b/f;Lcom/smartisanos/smengine/b/d;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    invoke-interface {p2, v0}, Lcom/smartisanos/smengine/b/d;->a(Lcom/smartisanos/smengine/a/j;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/b/b;->a(Lcom/smartisanos/smengine/b/f;)V

    return-void
.end method

.method public b(Lcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/b/b;->NW:Lcom/smartisanos/smengine/a/j;

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
    iget-object p0, p0, Lcom/smartisanos/smengine/b/b;->NW:Lcom/smartisanos/smengine/a/j;

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
    invoke-virtual {p0}, Lcom/smartisanos/smengine/b/b;->clone()Lcom/smartisanos/smengine/b/h;

    move-result-object p0

    return-object p0
.end method
