.class Lcom/google/common/collect/Sets$SubSet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$SubSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final elements:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field

.field remainingSetBits:I

.field final synthetic this$0:Lcom/google/common/collect/Sets$SubSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$SubSet;)V
    .locals 0

    .line 1506
    iput-object p1, p0, Lcom/google/common/collect/Sets$SubSet$1;->this$0:Lcom/google/common/collect/Sets$SubSet;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 1507
    iget-object p1, p0, Lcom/google/common/collect/Sets$SubSet$1;->this$0:Lcom/google/common/collect/Sets$SubSet;

    invoke-static {p1}, Lcom/google/common/collect/Sets$SubSet;->access$100(Lcom/google/common/collect/Sets$SubSet;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Sets$SubSet$1;->elements:Lcom/google/common/collect/ImmutableList;

    .line 1508
    iget-object p1, p0, Lcom/google/common/collect/Sets$SubSet$1;->this$0:Lcom/google/common/collect/Sets$SubSet;

    invoke-static {p1}, Lcom/google/common/collect/Sets$SubSet;->access$200(Lcom/google/common/collect/Sets$SubSet;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 1512
    iget p0, p0, Lcom/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1517
    iget v0, p0, Lcom/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 1521
    iget v1, p0, Lcom/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/collect/Sets$SubSet$1;->remainingSetBits:I

    .line 1522
    iget-object p0, p0, Lcom/google/common/collect/Sets$SubSet$1;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1519
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
