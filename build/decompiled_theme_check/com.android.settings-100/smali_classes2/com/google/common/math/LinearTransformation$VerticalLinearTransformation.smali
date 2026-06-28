.class final Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VerticalLinearTransformation"
.end annotation


# instance fields
.field inverse:Lcom/google/common/math/LinearTransformation;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field final x:D


# direct methods
.method constructor <init>(D)V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 225
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    return-void
.end method

.method constructor <init>(DLcom/google/common/math/LinearTransformation;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 230
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    .line 231
    iput-object p3, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    return-void
.end method

.method private createInverse()Lcom/google/common/math/LinearTransformation;
    .locals 7

    .line 266
    new-instance v6, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;

    iget-wide v3, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    const-wide/16 v1, 0x0

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DDLcom/google/common/math/LinearTransformation;)V

    return-object v6
.end method


# virtual methods
.method public inverse()Lcom/google/common/math/LinearTransformation;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->createInverse()Lcom/google/common/math/LinearTransformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    :cond_0
    return-object v0
.end method

.method public isHorizontal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVertical()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public slope()D
    .locals 0

    .line 246
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 262
    iget-wide v1, p0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;->x:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "x = %g"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(D)D
    .locals 0

    .line 251
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
