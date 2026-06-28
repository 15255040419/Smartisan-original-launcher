.class Lcom/google/common/cache/LocalCache$WriteQueue$1;
.super Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache$AbstractReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field nextWrite:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/cache/LocalCache$WriteQueue;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$WriteQueue;)V
    .locals 0

    .line 3610
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->this$0:Lcom/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 3620
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 3632
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3624
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    return-object p0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/ReferenceEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3636
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    return-object p0
.end method

.method public getWriteTime()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3629
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    return-void
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3641
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    return-void
.end method

.method public setWriteTime(J)V
    .locals 0

    return-void
.end method
