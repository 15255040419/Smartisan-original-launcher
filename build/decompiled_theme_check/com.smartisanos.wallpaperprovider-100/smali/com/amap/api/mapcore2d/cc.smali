.class Lcom/amap/api/mapcore2d/cc;
.super Ljava/lang/Object;
.source "TileCoordinate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:Landroid/graphics/PointF;

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->a:I

    const/4 v1, -0x1

    .line 98
    iput v1, p0, Lcom/amap/api/mapcore2d/cc;->g:I

    .line 99
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/cc;->h:Z

    .line 39
    iput p1, p0, Lcom/amap/api/mapcore2d/cc;->b:I

    .line 40
    iput p2, p0, Lcom/amap/api/mapcore2d/cc;->c:I

    .line 41
    iput p3, p0, Lcom/amap/api/mapcore2d/cc;->d:I

    .line 42
    iput p4, p0, Lcom/amap/api/mapcore2d/cc;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore2d/cc;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->a:I

    const/4 v1, -0x1

    .line 98
    iput v1, p0, Lcom/amap/api/mapcore2d/cc;->g:I

    .line 99
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/cc;->h:Z

    .line 46
    iget v0, p1, Lcom/amap/api/mapcore2d/cc;->b:I

    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->b:I

    .line 47
    iget v0, p1, Lcom/amap/api/mapcore2d/cc;->c:I

    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->c:I

    .line 48
    iget v0, p1, Lcom/amap/api/mapcore2d/cc;->d:I

    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->d:I

    .line 49
    iget v0, p1, Lcom/amap/api/mapcore2d/cc;->e:I

    iput v0, p0, Lcom/amap/api/mapcore2d/cc;->e:I

    .line 50
    iget-object v0, p1, Lcom/amap/api/mapcore2d/cc;->f:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cc;->f:Landroid/graphics/PointF;

    .line 51
    iget p1, p1, Lcom/amap/api/mapcore2d/cc;->a:I

    iput p1, p0, Lcom/amap/api/mapcore2d/cc;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore2d/cc;
    .locals 1

    .line 56
    new-instance v0, Lcom/amap/api/mapcore2d/cc;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/cc;-><init>(Lcom/amap/api/mapcore2d/cc;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cc;->a()Lcom/amap/api/mapcore2d/cc;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Lcom/amap/api/mapcore2d/cc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 68
    :cond_1
    check-cast p1, Lcom/amap/api/mapcore2d/cc;

    .line 69
    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->b:I

    iget v3, p1, Lcom/amap/api/mapcore2d/cc;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->c:I

    iget v3, p1, Lcom/amap/api/mapcore2d/cc;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->d:I

    iget v3, p1, Lcom/amap/api/mapcore2d/cc;->d:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/amap/api/mapcore2d/cc;->e:I

    iget p1, p1, Lcom/amap/api/mapcore2d/cc;->e:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 76
    iget v0, p0, Lcom/amap/api/mapcore2d/cc;->b:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->c:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->d:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget p0, p0, Lcom/amap/api/mapcore2d/cc;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    iget v1, p0, Lcom/amap/api/mapcore2d/cc;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget v2, p0, Lcom/amap/api/mapcore2d/cc;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v2, p0, Lcom/amap/api/mapcore2d/cc;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget p0, p0, Lcom/amap/api/mapcore2d/cc;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
