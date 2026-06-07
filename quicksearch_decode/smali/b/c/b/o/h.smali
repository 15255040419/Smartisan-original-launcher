.class public final Lb/c/b/o/h;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/b/o/h$c;,
        Lb/c/b/o/h$b;,
        Lb/c/b/o/h$d;,
        Lb/c/b/o/h$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field public b:Lb/c/b/o/h$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/o/h$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public final e:Lb/c/b/o/h$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/o/h$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public f:Lb/c/b/o/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/o/h<",
            "TK;TV;>.b;"
        }
    .end annotation
.end field

.field public g:Lb/c/b/o/h$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/o/h<",
            "TK;TV;>.c;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lb/c/b/o/h;

    .line 2
    new-instance v0, Lb/c/b/o/h$a;

    invoke-direct {v0}, Lb/c/b/o/h$a;-><init>()V

    sput-object v0, Lb/c/b/o/h;->h:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lb/c/b/o/h;->h:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lb/c/b/o/h;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/c/b/o/h;->c:I

    .line 4
    iput v0, p0, Lb/c/b/o/h;->d:I

    .line 5
    new-instance v0, Lb/c/b/o/h$e;

    invoke-direct {v0}, Lb/c/b/o/h$e;-><init>()V

    iput-object v0, p0, Lb/c/b/o/h;->e:Lb/c/b/o/h$e;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lb/c/b/o/h;->h:Ljava/util/Comparator;

    :goto_0
    iput-object p1, p0, Lb/c/b/o/h;->a:Ljava/util/Comparator;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lb/c/b/o/h$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lb/c/b/o/h$e<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lb/c/b/o/h;->a(Ljava/lang/Object;Z)Lb/c/b/o/h$e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;Z)Lb/c/b/o/h$e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lb/c/b/o/h$e<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/b/o/h;->a:Ljava/util/Comparator;

    .line 2
    iget-object v1, p0, Lb/c/b/o/h;->b:Lb/c/b/o/h$e;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 3
    sget-object v3, Lb/c/b/o/h;->h:Ljava/util/Comparator;

    if-ne v0, v3, :cond_0

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 4
    iget-object v4, v1, Lb/c/b/o/h$e;->f:Ljava/lang/Object;

    .line 5
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lb/c/b/o/h$e;->f:Ljava/lang/Object;

    .line 6
    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    return-object v1

    :cond_2
    if-gez v4, :cond_3

    .line 7
    iget-object v5, v1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v2

    .line 8
    :cond_6
    iget-object p2, p0, Lb/c/b/o/h;->e:Lb/c/b/o/h$e;

    const/4 v2, 0x1

    if-nez v1, :cond_9

    .line 9
    sget-object v3, Lb/c/b/o/h;->h:Ljava/util/Comparator;

    if-ne v0, v3, :cond_8

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_7

    goto :goto_4

    .line 10
    :cond_7
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Comparable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_8
    :goto_4
    new-instance v0, Lb/c/b/o/h$e;

    iget-object v3, p2, Lb/c/b/o/h$e;->e:Lb/c/b/o/h$e;

    invoke-direct {v0, v1, p1, p2, v3}, Lb/c/b/o/h$e;-><init>(Lb/c/b/o/h$e;Ljava/lang/Object;Lb/c/b/o/h$e;Lb/c/b/o/h$e;)V

    .line 12
    iput-object v0, p0, Lb/c/b/o/h;->b:Lb/c/b/o/h$e;

    goto :goto_6

    .line 13
    :cond_9
    new-instance v0, Lb/c/b/o/h$e;

    iget-object v3, p2, Lb/c/b/o/h$e;->e:Lb/c/b/o/h$e;

    invoke-direct {v0, v1, p1, p2, v3}, Lb/c/b/o/h$e;-><init>(Lb/c/b/o/h$e;Ljava/lang/Object;Lb/c/b/o/h$e;Lb/c/b/o/h$e;)V

    if-gez v4, :cond_a

    .line 14
    iput-object v0, v1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    goto :goto_5

    .line 15
    :cond_a
    iput-object v0, v1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    .line 16
    :goto_5
    invoke-virtual {p0, v1, v2}, Lb/c/b/o/h;->a(Lb/c/b/o/h$e;Z)V

    .line 17
    :goto_6
    iget p1, p0, Lb/c/b/o/h;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lb/c/b/o/h;->c:I

    .line 18
    iget p1, p0, Lb/c/b/o/h;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lb/c/b/o/h;->d:I

    return-object v0
.end method

.method public a(Ljava/util/Map$Entry;)Lb/c/b/o/h$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lb/c/b/o/h$e<",
            "TK;TV;>;"
        }
    .end annotation

    .line 20
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/c/b/o/h;->a(Ljava/lang/Object;)Lb/c/b/o/h$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v1, v0, Lb/c/b/o/h$e;->g:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lb/c/b/o/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final a(Lb/c/b/o/h$e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/o/h$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    .line 52
    iget-object v1, p1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    .line 53
    iget-object v2, v1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    .line 54
    iget-object v3, v1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    .line 55
    iput-object v2, p1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    if-eqz v2, :cond_0

    .line 56
    iput-object p1, v2, Lb/c/b/o/h$e;->a:Lb/c/b/o/h$e;

    .line 57
    :cond_0
    invoke-virtual {p0, p1, v1}, Lb/c/b/o/h;->a(Lb/c/b/o/h$e;Lb/c/b/o/h$e;)V

    .line 58
    iput-object p1, v1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    .line 59
    iput-object v1, p1, Lb/c/b/o/h$e;->a:Lb/c/b/o/h$e;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 60
    iget v0, v0, Lb/c/b/o/h$e;->h:I

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lb/c/b/o/h$e;->h:I

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lb/c/b/o/h$e;->h:I

    .line 61
    iget p1, p1, Lb/c/b/o/h$e;->h:I

    if-eqz v3, :cond_3

    iget v4, v3, Lb/c/b/o/h$e;->h:I

    :cond_3
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lb/c/b/o/h$e;->h:I

    return-void
.end method

.method public final a(Lb/c/b/o/h$e;Lb/c/b/o/h$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/o/h$e<",
            "TK;TV;>;",
            "Lb/c/b/o/h$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p1, Lb/c/b/o/h$e;->a:Lb/c/b/o/h$e;

    const/4 v1, 0x0

    .line 24
    iput-object v1, p1, Lb/c/b/o/h$e;->a:Lb/c/b/o/h$e;

    if-eqz p2, :cond_0

    .line 25
    iput-object v0, p2, Lb/c/b/o/h$e;->a:Lb/c/b/o/h$e;

    :cond_0
    if-eqz v0, :cond_2

    .line 26
    iget-object v1, v0, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    if-ne v1, p1, :cond_1

    .line 27
    iput-object p2, v0, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    goto :goto_0

    .line 28
    :cond_1
    iput-object p2, v0, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    goto :goto_0

    .line 29
    :cond_2
    iput-object p2, p0, Lb/c/b/o/h;->b:Lb/c/b/o/h$e;

    :goto_0
    return-void
.end method

.method public final a(Lb/c/b/o/h$e;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/o/h$e<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_e

    .line 30
    iget-object v0, p1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    .line 31
    iget-object v1, p1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 32
    iget v3, v0, Lb/c/b/o/h$e;->h:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 33
    iget v4, v1, Lb/c/b/o/h$e;->h:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    .line 34
    iget-object v0, v1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    .line 35
    iget-object v3, v1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    if-eqz v3, :cond_2

    .line 36
    iget v3, v3, Lb/c/b/o/h$e;->h:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    .line 37
    iget v2, v0, Lb/c/b/o/h$e;->h:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    .line 38
    :cond_4
    invoke-virtual {p0, v1}, Lb/c/b/o/h;->b(Lb/c/b/o/h$e;)V

    .line 39
    invoke-virtual {p0, p1}, Lb/c/b/o/h;->a(Lb/c/b/o/h$e;)V

    goto :goto_5

    .line 40
    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Lb/c/b/o/h;->a(Lb/c/b/o/h$e;)V

    :goto_5
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    .line 41
    iget-object v1, v0, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    .line 42
    iget-object v3, v0, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    if-eqz v3, :cond_7

    .line 43
    iget v3, v3, Lb/c/b/o/h$e;->h:I

    goto :goto_6

    :cond_7
    move v3, v2

    :goto_6
    if-eqz v1, :cond_8

    .line 44
    iget v2, v1, Lb/c/b/o/h$e;->h:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_7

    .line 45
    :cond_9
    invoke-virtual {p0, v0}, Lb/c/b/o/h;->a(Lb/c/b/o/h$e;)V

    .line 46
    invoke-virtual {p0, p1}, Lb/c/b/o/h;->b(Lb/c/b/o/h$e;)V

    goto :goto_8

    .line 47
    :cond_a
    :goto_7
    invoke-virtual {p0, p1}, Lb/c/b/o/h;->b(Lb/c/b/o/h$e;)V

    :goto_8
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    .line 48
    iput v3, p1, Lb/c/b/o/h$e;->h:I

    if-eqz p2, :cond_d

    goto :goto_9

    .line 49
    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lb/c/b/o/h$e;->h:I

    if-nez p2, :cond_d

    goto :goto_9

    .line 50
    :cond_d
    iget-object p1, p1, Lb/c/b/o/h$e;->a:Lb/c/b/o/h$e;

    goto :goto_0

    :cond_e
    :goto_9
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(Ljava/lang/Object;)Lb/c/b/o/h$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lb/c/b/o/h$e<",
            "TK;TV;>;"
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lb/c/b/o/h;->a(Ljava/lang/Object;)Lb/c/b/o/h$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, p1, v0}, Lb/c/b/o/h;->b(Lb/c/b/o/h$e;Z)V

    :cond_0
    return-object p1
.end method

.method public final b(Lb/c/b/o/h$e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/o/h$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    .line 31
    iget-object v1, p1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    .line 32
    iget-object v2, v0, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    .line 33
    iget-object v3, v0, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    .line 34
    iput-object v3, p1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    if-eqz v3, :cond_0

    .line 35
    iput-object p1, v3, Lb/c/b/o/h$e;->a:Lb/c/b/o/h$e;

    .line 36
    :cond_0
    invoke-virtual {p0, p1, v0}, Lb/c/b/o/h;->a(Lb/c/b/o/h$e;Lb/c/b/o/h$e;)V

    .line 37
    iput-object p1, v0, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    .line 38
    iput-object v0, p1, Lb/c/b/o/h$e;->a:Lb/c/b/o/h$e;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 39
    iget v1, v1, Lb/c/b/o/h$e;->h:I

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lb/c/b/o/h$e;->h:I

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lb/c/b/o/h$e;->h:I

    .line 40
    iget p1, p1, Lb/c/b/o/h$e;->h:I

    if-eqz v2, :cond_3

    iget v4, v2, Lb/c/b/o/h$e;->h:I

    :cond_3
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lb/c/b/o/h$e;->h:I

    return-void
.end method

.method public b(Lb/c/b/o/h$e;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/o/h$e<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p1, Lb/c/b/o/h$e;->e:Lb/c/b/o/h$e;

    iget-object v0, p1, Lb/c/b/o/h$e;->d:Lb/c/b/o/h$e;

    iput-object v0, p2, Lb/c/b/o/h$e;->d:Lb/c/b/o/h$e;

    .line 2
    iget-object v0, p1, Lb/c/b/o/h$e;->d:Lb/c/b/o/h$e;

    iput-object p2, v0, Lb/c/b/o/h$e;->e:Lb/c/b/o/h$e;

    .line 3
    :cond_0
    iget-object p2, p1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    .line 4
    iget-object v0, p1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    .line 5
    iget-object v1, p1, Lb/c/b/o/h$e;->a:Lb/c/b/o/h$e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 6
    iget v1, p2, Lb/c/b/o/h$e;->h:I

    iget v4, v0, Lb/c/b/o/h$e;->h:I

    if-le v1, v4, :cond_1

    invoke-virtual {p2}, Lb/c/b/o/h$e;->b()Lb/c/b/o/h$e;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lb/c/b/o/h$e;->a()Lb/c/b/o/h$e;

    move-result-object p2

    .line 7
    :goto_0
    invoke-virtual {p0, p2, v2}, Lb/c/b/o/h;->b(Lb/c/b/o/h$e;Z)V

    .line 8
    iget-object v0, p1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    if-eqz v0, :cond_2

    .line 9
    iget v1, v0, Lb/c/b/o/h$e;->h:I

    .line 10
    iput-object v0, p2, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    .line 11
    iput-object p2, v0, Lb/c/b/o/h$e;->a:Lb/c/b/o/h$e;

    .line 12
    iput-object v3, p1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 13
    :goto_1
    iget-object v0, p1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    if-eqz v0, :cond_3

    .line 14
    iget v2, v0, Lb/c/b/o/h$e;->h:I

    .line 15
    iput-object v0, p2, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    .line 16
    iput-object p2, v0, Lb/c/b/o/h$e;->a:Lb/c/b/o/h$e;

    .line 17
    iput-object v3, p1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    .line 18
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lb/c/b/o/h$e;->h:I

    .line 19
    invoke-virtual {p0, p1, p2}, Lb/c/b/o/h;->a(Lb/c/b/o/h$e;Lb/c/b/o/h$e;)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 20
    invoke-virtual {p0, p1, p2}, Lb/c/b/o/h;->a(Lb/c/b/o/h$e;Lb/c/b/o/h$e;)V

    .line 21
    iput-object v3, p1, Lb/c/b/o/h$e;->b:Lb/c/b/o/h$e;

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p0, p1, v0}, Lb/c/b/o/h;->a(Lb/c/b/o/h$e;Lb/c/b/o/h$e;)V

    .line 23
    iput-object v3, p1, Lb/c/b/o/h$e;->c:Lb/c/b/o/h$e;

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {p0, p1, v3}, Lb/c/b/o/h;->a(Lb/c/b/o/h$e;Lb/c/b/o/h$e;)V

    .line 25
    :goto_2
    invoke-virtual {p0, v1, v2}, Lb/c/b/o/h;->a(Lb/c/b/o/h$e;Z)V

    .line 26
    iget p1, p0, Lb/c/b/o/h;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lb/c/b/o/h;->c:I

    .line 27
    iget p1, p0, Lb/c/b/o/h;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/c/b/o/h;->d:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lb/c/b/o/h;->b:Lb/c/b/o/h$e;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/c/b/o/h;->c:I

    .line 3
    iget v0, p0, Lb/c/b/o/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/c/b/o/h;->d:I

    .line 4
    iget-object v0, p0, Lb/c/b/o/h;->e:Lb/c/b/o/h$e;

    .line 5
    iput-object v0, v0, Lb/c/b/o/h$e;->e:Lb/c/b/o/h$e;

    iput-object v0, v0, Lb/c/b/o/h$e;->d:Lb/c/b/o/h$e;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/b/o/h;->a(Ljava/lang/Object;)Lb/c/b/o/h$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/b/o/h;->f:Lb/c/b/o/h$b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lb/c/b/o/h$b;

    invoke-direct {v0, p0}, Lb/c/b/o/h$b;-><init>(Lb/c/b/o/h;)V

    iput-object v0, p0, Lb/c/b/o/h;->f:Lb/c/b/o/h$b;

    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lb/c/b/o/h;->a(Ljava/lang/Object;)Lb/c/b/o/h$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lb/c/b/o/h$e;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/b/o/h;->g:Lb/c/b/o/h$c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lb/c/b/o/h$c;

    invoke-direct {v0, p0}, Lb/c/b/o/h$c;-><init>(Lb/c/b/o/h;)V

    iput-object v0, p0, Lb/c/b/o/h;->g:Lb/c/b/o/h$c;

    :goto_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lb/c/b/o/h;->a(Ljava/lang/Object;Z)Lb/c/b/o/h$e;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lb/c/b/o/h$e;->g:Ljava/lang/Object;

    .line 3
    iput-object p2, p1, Lb/c/b/o/h$e;->g:Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lb/c/b/o/h;->b(Ljava/lang/Object;)Lb/c/b/o/h$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lb/c/b/o/h$e;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lb/c/b/o/h;->c:I

    return v0
.end method
