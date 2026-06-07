.class public Lb/d/a/b/j/e;
.super Ljava/lang/Object;
.source "ImageSize.java"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lb/d/a/b/j/e;->a:I

    .line 3
    iput p2, p0, Lb/d/a/b/j/e;->b:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    rem-int/lit16 p3, p3, 0xb4

    if-nez p3, :cond_0

    .line 6
    iput p1, p0, Lb/d/a/b/j/e;->a:I

    .line 7
    iput p2, p0, Lb/d/a/b/j/e;->b:I

    goto :goto_0

    .line 8
    :cond_0
    iput p2, p0, Lb/d/a/b/j/e;->a:I

    .line 9
    iput p1, p0, Lb/d/a/b/j/e;->b:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lb/d/a/b/j/e;->b:I

    return v0
.end method

.method public a(F)Lb/d/a/b/j/e;
    .locals 3

    .line 3
    new-instance v0, Lb/d/a/b/j/e;

    iget v1, p0, Lb/d/a/b/j/e;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lb/d/a/b/j/e;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-direct {v0, v1, p1}, Lb/d/a/b/j/e;-><init>(II)V

    return-object v0
.end method

.method public a(I)Lb/d/a/b/j/e;
    .locals 3

    .line 2
    new-instance v0, Lb/d/a/b/j/e;

    iget v1, p0, Lb/d/a/b/j/e;->a:I

    div-int/2addr v1, p1

    iget v2, p0, Lb/d/a/b/j/e;->b:I

    div-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lb/d/a/b/j/e;-><init>(II)V

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lb/d/a/b/j/e;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lb/d/a/b/j/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/d/a/b/j/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
