.class Lcom/smartisanos/smengine/c/m;
.super Lcom/smartisanos/smengine/n;
.source "TextureImage.java"


# instance fields
.field final synthetic oE:J

.field final synthetic pE:I

.field final synthetic this$0:Lcom/smartisanos/smengine/c/n;


# direct methods
.method constructor <init>(Lcom/smartisanos/smengine/c/n;IIJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/c/m;->this$0:Lcom/smartisanos/smengine/c/n;

    iput p3, p0, Lcom/smartisanos/smengine/c/m;->pE:I

    iput-wide p4, p0, Lcom/smartisanos/smengine/c/m;->oE:J

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/c/m;->pE:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Lcom/smartisanos/smengine/c/m;->oE:J

    sget-wide v3, Lcom/smartisanos/smengine/c/i;->WX:J

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    new-array v1, p0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 2
    invoke-static {p0, v1, v2}, Lcom/smartisanos/smengine/P;->glDeleteTextures(I[II)V

    :cond_0
    return-void
.end method
