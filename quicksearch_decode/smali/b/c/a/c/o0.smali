.class public abstract Lb/c/a/c/o0;
.super Lb/c/a/c/m0;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/o0$b;,
        Lb/c/a/c/o0$c;,
        Lb/c/a/c/o0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/m0<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/c/m0;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lb/c/a/c/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/a/c/r1;

    invoke-direct {v0, p0}, Lb/c/a/c/r1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)Lb/c/a/c/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 2
    array-length v0, p0

    invoke-static {p0, v0}, Lb/c/a/c/o0;->b([Ljava/lang/Object;I)Lb/c/a/c/o0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b([Ljava/lang/Object;)Lb/c/a/c/o0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lb/c/a/c/f1;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p0}, Lb/c/a/c/o0;->a([Ljava/lang/Object;)Lb/c/a/c/o0;

    move-result-object p0

    return-object p0
.end method

.method public static b([Ljava/lang/Object;I)Lb/c/a/c/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 2
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 4
    :cond_0
    new-instance p1, Lb/c/a/c/m1;

    invoke-direct {p1, p0}, Lb/c/a/c/m1;-><init>([Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 5
    aget-object p0, p0, p1

    invoke-static {p0}, Lb/c/a/c/o0;->a(Ljava/lang/Object;)Lb/c/a/c/o0;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-static {}, Lb/c/a/c/o0;->f()Lb/c/a/c/o0;

    move-result-object p0

    return-object p0
.end method

.method public static c([Ljava/lang/Object;)Lb/c/a/c/o0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lb/c/a/c/o0;->b([Ljava/lang/Object;)Lb/c/a/c/o0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    aget-object p0, p0, v0

    invoke-static {p0}, Lb/c/a/c/o0;->a(Ljava/lang/Object;)Lb/c/a/c/o0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {}, Lb/c/a/c/o0;->f()Lb/c/a/c/o0;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lb/c/a/c/o0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/c/a/c/o0$b<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/a/c/o0$b;

    invoke-direct {v0}, Lb/c/a/c/o0$b;-><init>()V

    return-object v0
.end method

.method public static f()Lb/c/a/c/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb/c/a/c/m1;->c:Lb/c/a/c/o0;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a([Ljava/lang/Object;I)I
    .locals 4

    .line 4
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public final a()Lb/c/a/c/o0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public a(II)Lb/c/a/c/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lb/c/a/c/o0$d;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Lb/c/a/c/o0$d;-><init>(Lb/c/a/c/o0;II)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/a/c/o0;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb/c/a/c/b1;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    not-int v1, v1

    not-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lb/c/a/c/b1;->b(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
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
    invoke-virtual {p0}, Lb/c/a/c/o0;->listIterator()Lb/c/a/c/v1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/o0;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lb/c/a/c/b1;->d(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public listIterator()Lb/c/a/c/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/v1<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lb/c/a/c/o0;->listIterator(I)Lb/c/a/c/v1;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lb/c/a/c/v1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lb/c/a/c/v1<",
            "TE;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lb/c/a/c/o0$a;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lb/c/a/c/o0$a;-><init>(Lb/c/a/c/o0;II)V

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/o0;->listIterator()Lb/c/a/c/v1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/c/a/c/o0;->listIterator(I)Lb/c/a/c/v1;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final sort(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-instance v1, Lb/c/a/c/l;

    invoke-direct {v1, p0}, Lb/c/a/c/l;-><init>(Lb/c/a/c/o0;)V

    const/16 v2, 0x510

    invoke-static {v0, v2, v1}, Lb/c/a/c/a0;->a(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Lb/c/a/c/o0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lb/c/a/a/l;->b(III)V

    sub-int v0, p2, p1

    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lb/c/a/c/o0;->f()Lb/c/a/c/o0;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lb/c/a/c/o0;->a(Ljava/lang/Object;)Lb/c/a/c/o0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p0, p1, p2}, Lb/c/a/c/o0;->a(II)Lb/c/a/c/o0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/c/a/c/o0;->subList(II)Lb/c/a/c/o0;

    move-result-object p1

    return-object p1
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lb/c/a/c/o0$c;

    invoke-virtual {p0}, Lb/c/a/c/m0;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/c/a/c/o0$c;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
