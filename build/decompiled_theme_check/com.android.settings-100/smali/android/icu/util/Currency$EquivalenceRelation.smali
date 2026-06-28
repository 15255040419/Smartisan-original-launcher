.class final Landroid/icu/util/Currency$EquivalenceRelation;
.super Ljava/lang/Object;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EquivalenceRelation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/util/Currency$EquivalenceRelation;->data:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/Currency$1;)V
    .locals 0

    .line 1020
    invoke-direct {p0}, Landroid/icu/util/Currency$EquivalenceRelation;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Landroid/icu/util/Currency$EquivalenceRelation<",
            "TT;>;"
        }
    .end annotation

    .line 1026
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1027
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 1028
    iget-object v5, p0, Landroid/icu/util/Currency$EquivalenceRelation;->data:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1031
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1029
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "All groups passed to add must be disjoint."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1033
    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 1034
    iget-object v4, p0, Landroid/icu/util/Currency$EquivalenceRelation;->data:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1040
    iget-object p0, p0, Landroid/icu/util/Currency$EquivalenceRelation;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    .line 1042
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1044
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
