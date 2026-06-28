.class Lcom/google/common/collect/Streams$1OptionalState;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Streams;->findLast(Ljava/util/stream/Stream;)Ljava/util/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionalState"
.end annotation


# instance fields
.field set:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 753
    iput-boolean v0, p0, Lcom/google/common/collect/Streams$1OptionalState;->set:Z

    const/4 v0, 0x0

    .line 754
    iput-object v0, p0, Lcom/google/common/collect/Streams$1OptionalState;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 762
    iget-boolean v0, p0, Lcom/google/common/collect/Streams$1OptionalState;->set:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 763
    iget-object p0, p0, Lcom/google/common/collect/Streams$1OptionalState;->value:Ljava/lang/Object;

    return-object p0
.end method

.method set(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 757
    iput-boolean v0, p0, Lcom/google/common/collect/Streams$1OptionalState;->set:Z

    .line 758
    iput-object p1, p0, Lcom/google/common/collect/Streams$1OptionalState;->value:Ljava/lang/Object;

    return-void
.end method
