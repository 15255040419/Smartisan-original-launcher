.class Lcom/google/common/collect/CompactLinkedHashSet;
.super Lcom/google/common/collect/CompactHashSet;
.source "CompactLinkedHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient firstEntry:I

.field private transient lastEntry:I

.field private transient predecessor:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient successor:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 69
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactLinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 82
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 83
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method private succeeds(II)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 144
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput p2, v1, p1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 150
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    goto :goto_1

    .line 152
    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aput p1, p0, p2

    :goto_1
    return-void
.end method


# virtual methods
.method adjustAfterRemove(II)I
    .locals 0

    .line 216
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result p0

    if-ne p1, p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public clear()V
    .locals 2

    .line 179
    invoke-super {p0}, Lcom/google/common/collect/CompactHashSet;->clear()V

    const/4 v0, -0x2

    .line 180
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 181
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 182
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 183
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method firstEntryIndex()I
    .locals 0

    .line 211
    iget p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    return p0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 229
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    :goto_0
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 230
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method getSuccessor(I)I
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget p0, p0, p1

    return p0
.end method

.method init(IF)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 133
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 134
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 136
    iget-object p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    .line 137
    iget-object p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    const/4 p1, -0x2

    .line 138
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 139
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 159
    iget p2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    const/4 p2, -0x2

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    return-void
.end method

.method moveEntry(I)V
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 166
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->moveEntry(I)V

    .line 168
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v2, v2, p1

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    if-eq v0, p1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 171
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v1, -0x1

    aput v1, p1, v0

    .line 174
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput v1, p0, v0

    return-void
.end method

.method resizeEntries(I)V
    .locals 3

    .line 188
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 189
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    array-length v1, v0

    .line 190
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 191
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    if-ge v1, p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 195
    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {p0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    :cond_0
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    const/16 v0, 0x11

    .line 225
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 201
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

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

    .line 206
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
