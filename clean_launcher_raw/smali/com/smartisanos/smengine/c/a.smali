.class Lcom/smartisanos/smengine/c/a;
.super Lcom/smartisanos/smengine/n;
.source "DepthRenderTarget.java"


# instance fields
.field final synthetic oE:J

.field final synthetic pE:I

.field final synthetic qE:I

.field final synthetic rE:I

.field final synthetic this$0:Lcom/smartisanos/smengine/c/b;


# direct methods
.method constructor <init>(Lcom/smartisanos/smengine/c/b;IJIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/c/a;->this$0:Lcom/smartisanos/smengine/c/b;

    iput-wide p3, p0, Lcom/smartisanos/smengine/c/a;->oE:J

    iput p5, p0, Lcom/smartisanos/smengine/c/a;->pE:I

    iput p6, p0, Lcom/smartisanos/smengine/c/a;->qE:I

    iput p7, p0, Lcom/smartisanos/smengine/c/a;->rE:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/c/a;->oE:J

    sget-wide v2, Lcom/smartisanos/smengine/c/i;->WX:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lcom/smartisanos/smengine/c/a;->pE:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    new-array v4, v3, [I

    aput v0, v4, v2

    .line 3
    invoke-static {v3, v4, v2}, Lcom/smartisanos/smengine/P;->glDeleteTextures(I[II)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/c/a;->qE:I

    if-eq v0, v1, :cond_1

    new-array v4, v3, [I

    aput v0, v4, v2

    .line 5
    invoke-static {v3, v4, v2}, Lcom/smartisanos/smengine/P;->glDeleteFramebuffers(I[II)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/c/a;->this$0:Lcom/smartisanos/smengine/c/b;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/b;->a(Lcom/smartisanos/smengine/c/b;)I

    move-result v0

    if-eq v0, v1, :cond_2

    new-array v0, v3, [I

    .line 7
    iget p0, p0, Lcom/smartisanos/smengine/c/a;->rE:I

    aput p0, v0, v2

    .line 8
    invoke-static {v3, v0, v2}, Lcom/smartisanos/smengine/P;->glDeleteRenderbuffers(I[II)V

    :cond_2
    return-void
.end method
