.class public Landroid/icu/impl/IterableComparator;
.super Ljava/lang/Object;
.source "IterableComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Iterable<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final NOCOMPARATOR:Landroid/icu/impl/IterableComparator;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final shorterFirst:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Landroid/icu/impl/IterableComparator;

    invoke-direct {v0}, Landroid/icu/impl/IterableComparator;-><init>()V

    sput-object v0, Landroid/icu/impl/IterableComparator;->NOCOMPARATOR:Landroid/icu/impl/IterableComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 25
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/IterableComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/IterableComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/icu/impl/IterableComparator;->comparator:Ljava/util/Comparator;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 34
    :goto_0
    iput p1, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    return-void
.end method

.method public static compareIterables(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    .line 65
    sget-object v0, Landroid/icu/impl/IterableComparator;->NOCOMPARATOR:Landroid/icu/impl/IterableComparator;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/IterableComparator;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget p0, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    neg-int v0, p0

    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    .line 42
    iget p0, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    return p0

    .line 44
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 45
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 47
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p0, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    neg-int v0, p0

    :cond_4
    return v0

    .line 50
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 51
    iget p0, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    return p0

    .line 53
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 54
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 56
    iget-object v3, p0, Landroid/icu/impl/IterableComparator;->comparator:Ljava/util/Comparator;

    if-eqz v3, :cond_7

    invoke-interface {v3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    :cond_7
    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/Iterable;

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/IterableComparator;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result p0

    return p0
.end method
