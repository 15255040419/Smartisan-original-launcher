.class Lcom/google/common/collect/CompactLinkedHashMap;
.super Lcom/google/common/collect/CompactHashMap;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private final accessOrder:Z

.field private transient firstEntry:I

.field private transient lastEntry:I

.field transient links:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 102
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(IFZ)V

    return-void
.end method

.method constructor <init>(IFZ)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;-><init>(IF)V

    .line 111
    iput-boolean p3, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactLinkedHashMap;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    return p0
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide p0, p0, p1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private setPredecessor(II)V
    .locals 4

    .line 139
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v0, p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v2, p2

    const/16 p2, 0x20

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    aput-wide v0, p0, p1

    return-void
.end method

.method private setSucceeds(II)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 144
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSuccessor(II)V

    :goto_0
    if-ne p2, v0, :cond_1

    .line 149
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    goto :goto_1

    .line 151
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setPredecessor(II)V

    :goto_1
    return-void
.end method

.method private setSuccessor(II)V
    .locals 6

    .line 134
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v0, p0, p1

    const-wide v2, -0x100000000L

    and-long/2addr v0, v2

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    aput-wide v0, p0, p1

    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .locals 2

    .line 164
    iget-boolean v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 168
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    const/4 v0, -0x2

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 170
    iget p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->modCount:I

    :cond_0
    return-void
.end method

.method adjustAfterRemove(II)I
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result p0

    if-lt p1, p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public clear()V
    .locals 1

    .line 283
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    const/4 v0, -0x2

    .line 284
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 285
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    return-void
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;-><init>(Lcom/google/common/collect/CompactLinkedHashMap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap$1KeySetImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashMap$1KeySetImpl;-><init>(Lcom/google/common/collect/CompactLinkedHashMap;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 278
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;-><init>(Lcom/google/common/collect/CompactLinkedHashMap;)V

    return-object v0
.end method

.method firstEntryIndex()I
    .locals 0

    .line 193
    iget p0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    return p0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 203
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    :goto_0
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method getSuccessor(I)I
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide p0, p0, p1

    long-to-int p0, p0

    return p0
.end method

.method init(IF)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->init(IF)V

    const/4 p2, -0x2

    .line 117
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 118
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 119
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 120
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    const-wide/16 p1, -0x1

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 158
    iget p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    const/4 p2, -0x2

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    return-void
.end method

.method moveLastEntry(I)V
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 177
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    if-ge p1, v0, :cond_0

    .line 179
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(I)V

    return-void
.end method

.method resizeEntries(I)V
    .locals 1

    .line 187
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 188
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    return-void
.end method
