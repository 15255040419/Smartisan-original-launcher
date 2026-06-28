.class final Lcom/google/common/collect/ImmutableMultiset$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final counts:[I

.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "*>;)V"
        }
    .end annotation

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 624
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    .line 625
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->counts:[I

    .line 627
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 628
    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 629
    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->counts:[I

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 4

    .line 635
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultiset;->create(I)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    const/4 v1, 0x0

    .line 636
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 637
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;->counts:[I

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/LinkedHashMultiset;->add(Ljava/lang/Object;I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method
