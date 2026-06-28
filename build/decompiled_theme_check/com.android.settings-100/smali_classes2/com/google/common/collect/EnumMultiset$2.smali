.class Lcom/google/common/collect/EnumMultiset$2;
.super Lcom/google/common/collect/EnumMultiset$Itr;
.source "EnumMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/EnumMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/EnumMultiset<",
        "TE;>.Itr<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/EnumMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/EnumMultiset;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$2;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumMultiset$Itr;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-void
.end method


# virtual methods
.method output(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/google/common/collect/EnumMultiset$2$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/EnumMultiset$2$1;-><init>(Lcom/google/common/collect/EnumMultiset$2;I)V

    return-object v0
.end method

.method bridge synthetic output(I)Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset$2;->output(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p0

    return-object p0
.end method
