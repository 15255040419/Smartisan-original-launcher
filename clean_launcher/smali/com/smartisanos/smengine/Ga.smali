.class public Lcom/smartisanos/smengine/Ga;
.super Ljava/lang/Object;
.source "ViewPort.java"


# instance fields
.field private mHeight:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/smartisanos/smengine/Ga;->mX:I

    .line 4
    iput p2, p0, Lcom/smartisanos/smengine/Ga;->mY:I

    .line 5
    iput p3, p0, Lcom/smartisanos/smengine/Ga;->mWidth:I

    .line 6
    iput p4, p0, Lcom/smartisanos/smengine/Ga;->mHeight:I

    return-void
.end method


# virtual methods
.method public Ps()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ga;->mHeight:I

    return p0
.end method

.method public Qs()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ga;->mWidth:I

    return p0
.end method

.method public Rs()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ga;->mX:I

    return p0
.end method

.method public Ss()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ga;->mY:I

    return p0
.end method

.method public setViewPort(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Ga;->mX:I

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/Ga;->mY:I

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/Ga;->mWidth:I

    .line 4
    iput p4, p0, Lcom/smartisanos/smengine/Ga;->mHeight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/Ga;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/Ga;->mY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/smengine/Ga;->mWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/smengine/Ga;->mHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
