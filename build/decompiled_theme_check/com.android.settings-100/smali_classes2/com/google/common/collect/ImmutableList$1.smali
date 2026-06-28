.class Lcom/google/common/collect/ImmutableList$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;II)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$1;->this$0:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 397
    iget-object p0, p0, Lcom/google/common/collect/ImmutableList$1;->this$0:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
