.class final Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;
.super Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JdkBackedSetBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;)V"
        }
    .end annotation

    .line 800
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    .line 801
    iget p1, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    const/4 p1, 0x0

    .line 802
    :goto_0
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    if-ge p1, v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 809
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->addDedupedElement(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method build()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 823
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 829
    new-instance v0, Lcom/google/common/collect/JdkBackedImmutableSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    .line 830
    invoke-static {v2, p0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/JdkBackedImmutableSet;-><init>(Ljava/util/Set;Lcom/google/common/collect/ImmutableList;)V

    return-object v0

    .line 827
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 825
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method copy()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 818
    new-instance v0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    return-object v0
.end method
