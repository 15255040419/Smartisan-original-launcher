.class public final Lb/c/a/c/o1;
.super Lb/c/a/c/u0;
.source "RegularImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/u0<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final g:Lb/c/a/c/o1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/o1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient c:[Ljava/lang/Object;

.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I

.field public final transient f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb/c/a/c/o1;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, v1}, Lb/c/a/c/o1;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    sput-object v0, Lb/c/a/c/o1;->g:Lb/c/a/c/o1;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/c/u0;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/a/c/o1;->c:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lb/c/a/c/o1;->d:[Ljava/lang/Object;

    .line 4
    iput p4, p0, Lb/c/a/c/o1;->e:I

    .line 5
    iput p2, p0, Lb/c/a/c/o1;->f:I

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lb/c/a/c/o1;->c:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object p1, p0, Lb/c/a/c/o1;->c:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr p2, p1

    return p2
.end method

.method public b()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/o1;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/o1;->c:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lb/c/a/c/o1;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Lb/c/a/c/i0;->a(Ljava/lang/Object;)I

    move-result v2

    .line 3
    :goto_0
    iget v3, p0, Lb/c/a/c/o1;->e:I

    and-int/2addr v2, v3

    .line 4
    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lb/c/a/c/o0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/o1;->d:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Lb/c/a/c/o0;->f()Lb/c/a/c/o0;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lb/c/a/c/k1;

    iget-object v1, p0, Lb/c/a/c/o1;->c:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lb/c/a/c/k1;-><init>(Lb/c/a/c/m0;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lb/c/a/c/o1;->f:I

    return v0
.end method

.method public iterator()Lb/c/a/c/u1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/c/a/c/o1;->c:[Ljava/lang/Object;

    invoke-static {v0}, Lb/c/a/c/x0;->a([Ljava/lang/Object;)Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/o1;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/o1;->c:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/o1;->c:[Ljava/lang/Object;

    const/16 v1, 0x511

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
