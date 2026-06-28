.class Lcom/google/common/collect/AbstractMultiset$EntrySet;
.super Lcom/google/common/collect/Multisets$EntrySet;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$EntrySet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultiset;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 181
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method multiset()Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 176
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMultiset;

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lcom/google/common/collect/AbstractMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->distinctElements()I

    move-result p0

    return p0
.end method
