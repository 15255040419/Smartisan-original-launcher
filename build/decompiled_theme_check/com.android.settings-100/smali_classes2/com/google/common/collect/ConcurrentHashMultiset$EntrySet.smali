.class Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;
.super Lcom/google/common/collect/AbstractMultiset$EntrySet;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultiset<",
        "TE;>.EntrySet;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultiset$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultiset;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V
    .locals 0

    .line 558
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    return-void
.end method

.method private snapshot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 582
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method


# virtual methods
.method multiset()Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ConcurrentHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 561
    iget-object p0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    return-object p0
.end method

.method bridge synthetic multiset()Lcom/google/common/collect/Multiset;
    .locals 0

    .line 557
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->multiset()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 571
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->snapshot()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 576
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->snapshot()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
