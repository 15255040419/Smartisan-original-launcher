.class final Lcom/google/common/collect/JdkBackedImmutableSet;
.super Lcom/google/common/collect/IndexedImmutableSet;
.source "JdkBackedImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/IndexedImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation
.end field

.field private final delegateList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/google/common/collect/IndexedImmutableSet;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/common/collect/JdkBackedImmutableSet;->delegate:Ljava/util/Set;

    .line 35
    iput-object p2, p0, Lcom/google/common/collect/JdkBackedImmutableSet;->delegateList:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 45
    iget-object p0, p0, Lcom/google/common/collect/JdkBackedImmutableSet;->delegate:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/google/common/collect/JdkBackedImmutableSet;->delegateList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method isPartialView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/common/collect/JdkBackedImmutableSet;->delegateList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    return p0
.end method
