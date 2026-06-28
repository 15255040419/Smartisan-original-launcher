.class public Landroid/icu/text/BidiRun;
.super Ljava/lang/Object;
.source "BidiRun.java"


# instance fields
.field insertRemove:I

.field level:B

.field limit:I

.field start:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0, v0, v0}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    return-void
.end method

.method constructor <init>(IIB)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/icu/text/BidiRun;->start:I

    .line 66
    iput p2, p0, Landroid/icu/text/BidiRun;->limit:I

    .line 67
    iput-byte p3, p0, Landroid/icu/text/BidiRun;->level:B

    return-void
.end method


# virtual methods
.method copyFrom(Landroid/icu/text/BidiRun;)V
    .locals 1

    .line 75
    iget v0, p1, Landroid/icu/text/BidiRun;->start:I

    iput v0, p0, Landroid/icu/text/BidiRun;->start:I

    .line 76
    iget v0, p1, Landroid/icu/text/BidiRun;->limit:I

    iput v0, p0, Landroid/icu/text/BidiRun;->limit:I

    .line 77
    iget-byte v0, p1, Landroid/icu/text/BidiRun;->level:B

    iput-byte v0, p0, Landroid/icu/text/BidiRun;->level:B

    .line 78
    iget p1, p1, Landroid/icu/text/BidiRun;->insertRemove:I

    iput p1, p0, Landroid/icu/text/BidiRun;->insertRemove:I

    return-void
.end method

.method public getDirection()B
    .locals 0

    .line 138
    iget-byte p0, p0, Landroid/icu/text/BidiRun;->level:B

    and-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    return p0
.end method

.method public getEmbeddingLevel()B
    .locals 0

    .line 110
    iget-byte p0, p0, Landroid/icu/text/BidiRun;->level:B

    return p0
.end method

.method public getLength()I
    .locals 1

    .line 102
    iget v0, p0, Landroid/icu/text/BidiRun;->limit:I

    iget p0, p0, Landroid/icu/text/BidiRun;->start:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getLimit()I
    .locals 0

    .line 94
    iget p0, p0, Landroid/icu/text/BidiRun;->limit:I

    return p0
.end method

.method public getStart()I
    .locals 0

    .line 86
    iget p0, p0, Landroid/icu/text/BidiRun;->start:I

    return p0
.end method

.method public isEvenRun()Z
    .locals 1

    .line 130
    iget-byte p0, p0, Landroid/icu/text/BidiRun;->level:B

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOddRun()Z
    .locals 1

    .line 120
    iget-byte p0, p0, Landroid/icu/text/BidiRun;->level:B

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BidiRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/BidiRun;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/BidiRun;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/icu/text/BidiRun;->level:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
