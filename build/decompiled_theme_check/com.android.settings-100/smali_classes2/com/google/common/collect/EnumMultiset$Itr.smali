.class abstract Lcom/google/common/collect/EnumMultiset$Itr;
.super Ljava/lang/Object;
.source "EnumMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/EnumMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/google/common/collect/EnumMultiset;

.field toRemove:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/EnumMultiset;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 211
    iput p1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    const/4 p1, -0x1

    .line 212
    iput p1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 218
    :goto_0
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v1}, Lcom/google/common/collect/EnumMultiset;->access$000(Lcom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    aget v0, v0, v1

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 218
    iput v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/google/common/collect/EnumMultiset$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/EnumMultiset$Itr;->output(I)Ljava/lang/Object;

    move-result-object v0

    .line 232
    iget v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    iput v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    add-int/lit8 v1, v1, 0x1

    .line 233
    iput v1, p0, Lcom/google/common/collect/EnumMultiset$Itr;->index:I

    return-object v0

    .line 229
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method abstract output(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 6

    .line 239
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 240
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aget v0, v0, v2

    if-lez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$210(Lcom/google/common/collect/EnumMultiset;)I

    .line 242
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$300(Lcom/google/common/collect/EnumMultiset;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v4}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v4

    iget v5, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aget v4, v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/google/common/collect/EnumMultiset;->access$302(Lcom/google/common/collect/EnumMultiset;J)J

    .line 243
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aput v1, v0, v2

    :cond_1
    const/4 v0, -0x1

    .line 245
    iput v0, p0, Lcom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    return-void
.end method
