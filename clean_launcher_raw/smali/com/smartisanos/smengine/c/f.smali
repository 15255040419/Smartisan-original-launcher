.class Lcom/smartisanos/smengine/c/f;
.super Lcom/smartisanos/smengine/n;
.source "Shader.java"


# instance fields
.field final synthetic oE:J

.field final synthetic sE:I

.field final synthetic this$0:Lcom/smartisanos/smengine/c/g;


# direct methods
.method constructor <init>(Lcom/smartisanos/smengine/c/g;IJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/c/f;->this$0:Lcom/smartisanos/smengine/c/g;

    iput-wide p3, p0, Lcom/smartisanos/smengine/c/f;->oE:J

    iput p5, p0, Lcom/smartisanos/smengine/c/f;->sE:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/c/f;->oE:J

    sget-wide v2, Lcom/smartisanos/smengine/c/i;->WX:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget p0, p0, Lcom/smartisanos/smengine/c/f;->sE:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glDeleteProgram(I)V

    :cond_0
    return-void
.end method
