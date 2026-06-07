.class public final Lb/c/a/c/u0$b;
.super Lb/c/a/c/u0$d;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/u0$d<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lb/c/a/c/u0$d;-><init>(I)V

    .line 2
    invoke-static {p1}, Lb/c/a/c/u0;->b(I)I

    move-result p1

    .line 3
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lb/c/a/c/u0$b;->c:[Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lb/c/a/c/u0;->a(I)I

    move-result v0

    iput v0, p0, Lb/c/a/c/u0$b;->d:I

    int-to-double v0, p1

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 5
    iput p1, p0, Lb/c/a/c/u0$b;->e:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lb/c/a/c/u0$d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lb/c/a/c/u0$d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3
    invoke-static {v0}, Lb/c/a/c/i0;->a(I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lb/c/a/c/u0$b;->c:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move v3, v1

    :goto_0
    sub-int v4, v3, v1

    .line 5
    iget v5, p0, Lb/c/a/c/u0$b;->d:I

    if-ge v4, v5, :cond_2

    and-int v4, v3, v2

    .line 6
    iget-object v5, p0, Lb/c/a/c/u0$b;->c:[Ljava/lang/Object;

    aget-object v5, v5, v4

    if-nez v5, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lb/c/a/c/u0$d;->b(Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lb/c/a/c/u0$b;->c:[Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 9
    iget p1, p0, Lb/c/a/c/u0$b;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lb/c/a/c/u0$b;->f:I

    .line 10
    iget p1, p0, Lb/c/a/c/u0$d;->b:I

    invoke-virtual {p0, p1}, Lb/c/a/c/u0$b;->b(I)V

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lb/c/a/c/u0$a;

    invoke-direct {v0, p0}, Lb/c/a/c/u0$a;-><init>(Lb/c/a/c/u0$d;)V

    invoke-virtual {v0, p1}, Lb/c/a/c/u0$a;->a(Ljava/lang/Object;)Lb/c/a/c/u0$d;

    return-object v0
.end method

.method public a()Lb/c/a/c/u0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u0<",
            "TE;>;"
        }
    .end annotation

    .line 13
    iget v0, p0, Lb/c/a/c/u0$d;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 14
    iget-object v2, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    array-length v3, v2

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 16
    :goto_0
    new-instance v0, Lb/c/a/c/o1;

    iget v3, p0, Lb/c/a/c/u0$b;->f:I

    iget-object v4, p0, Lb/c/a/c/u0$b;->c:[Ljava/lang/Object;

    array-length v5, v4

    sub-int/2addr v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lb/c/a/c/o1;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    return-object v0

    .line 17
    :cond_1
    iget-object v0, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lb/c/a/c/u0;->a(Ljava/lang/Object;)Lb/c/a/c/u0;

    move-result-object v0

    return-object v0

    .line 18
    :cond_2
    invoke-static {}, Lb/c/a/c/u0;->g()Lb/c/a/c/u0;

    move-result-object v0

    return-object v0
.end method

.method public b()Lb/c/a/c/u0$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u0$d<",
            "TE;>;"
        }
    .end annotation

    .line 6
    iget v0, p0, Lb/c/a/c/u0$d;->b:I

    invoke-static {v0}, Lb/c/a/c/u0;->b(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 7
    iget-object v2, p0, Lb/c/a/c/u0$b;->c:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 8
    iget-object v1, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    iget v2, p0, Lb/c/a/c/u0$d;->b:I

    invoke-static {v0, v1, v2}, Lb/c/a/c/u0;->a(I[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/c/a/c/u0$b;->c:[Ljava/lang/Object;

    .line 9
    :cond_0
    iget-object v0, p0, Lb/c/a/c/u0$b;->c:[Ljava/lang/Object;

    invoke-static {v0}, Lb/c/a/c/u0;->b([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lb/c/a/c/u0$a;

    invoke-direct {v0, p0}, Lb/c/a/c/u0$a;-><init>(Lb/c/a/c/u0$d;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public b(I)V
    .locals 4

    .line 1
    iget v0, p0, Lb/c/a/c/u0$b;->e:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lb/c/a/c/u0$b;->c:[Ljava/lang/Object;

    array-length v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_0

    .line 2
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    .line 3
    iget-object v0, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    iget v1, p0, Lb/c/a/c/u0$d;->b:I

    invoke-static {p1, v0, v1}, Lb/c/a/c/u0;->a(I[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/c/a/c/u0$b;->c:[Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lb/c/a/c/u0;->a(I)I

    move-result v0

    iput v0, p0, Lb/c/a/c/u0$b;->d:I

    const-wide v0, 0x3fe6666666666666L    # 0.7

    int-to-double v2, p1

    mul-double/2addr v2, v0

    double-to-int p1, v2

    .line 5
    iput p1, p0, Lb/c/a/c/u0$b;->e:I

    :cond_0
    return-void
.end method
