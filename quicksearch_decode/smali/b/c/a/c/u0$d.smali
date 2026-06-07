.class public abstract Lb/c/a/c/u0$d;
.super Ljava/lang/Object;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lb/c/a/c/u0$d;->b:I

    return-void
.end method

.method public constructor <init>(Lb/c/a/c/u0$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/u0$d<",
            "TE;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    .line 6
    iget p1, p1, Lb/c/a/c/u0$d;->b:I

    iput p1, p0, Lb/c/a/c/u0$d;->b:I

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lb/c/a/c/u0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lb/c/a/c/u0$d<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract a()Lb/c/a/c/u0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u0<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 2
    array-length v0, v0

    .line 3
    invoke-static {v0, p1}, Lb/c/a/c/m0$a;->a(II)I

    move-result p1

    .line 4
    iget-object v0, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b()Lb/c/a/c/u0$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u0$d<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lb/c/a/c/u0$d;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lb/c/a/c/u0$d;->a(I)V

    .line 2
    iget-object v0, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    iget v1, p0, Lb/c/a/c/u0$d;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/c/a/c/u0$d;->b:I

    aput-object p1, v0, v1

    return-void
.end method
