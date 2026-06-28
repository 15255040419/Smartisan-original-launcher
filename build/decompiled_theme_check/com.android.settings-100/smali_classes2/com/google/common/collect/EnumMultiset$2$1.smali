.class Lcom/google/common/collect/EnumMultiset$2$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "EnumMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/EnumMultiset$2;->output(I)Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/EnumMultiset$2;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/EnumMultiset$2;I)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$2$1;->this$1:Lcom/google/common/collect/EnumMultiset$2;

    iput p2, p0, Lcom/google/common/collect/EnumMultiset$2$1;->val$index:I

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$2$1;->this$1:Lcom/google/common/collect/EnumMultiset$2;

    iget-object v0, v0, Lcom/google/common/collect/EnumMultiset$2;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget p0, p0, Lcom/google/common/collect/EnumMultiset$2$1;->val$index:I

    aget p0, v0, p0

    return p0
.end method

.method public getElement()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$2$1;->this$1:Lcom/google/common/collect/EnumMultiset$2;

    iget-object v0, v0, Lcom/google/common/collect/EnumMultiset$2;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$000(Lcom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;

    move-result-object v0

    iget p0, p0, Lcom/google/common/collect/EnumMultiset$2$1;->val$index:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public bridge synthetic getElement()Ljava/lang/Object;
    .locals 0

    .line 264
    invoke-virtual {p0}, Lcom/google/common/collect/EnumMultiset$2$1;->getElement()Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method
