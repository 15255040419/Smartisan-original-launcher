.class Lcom/google/common/collect/CompactHashSet;
.super Ljava/util/AbstractSet;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LOAD_FACTOR:F = 1.0f

.field private static final DEFAULT_SIZE:I = 0x3

.field private static final HASH_MASK:J = -0x100000000L

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NEXT_MASK:J = 0xffffffffL

.field static final UNSET:I = -0x1


# instance fields
.field transient elements:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient entries:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient loadFactor:F

.field transient modCount:I

.field private transient size:I

.field private transient table:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient threshold:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 172
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashSet;)[J
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    return-object p0
.end method

.method static synthetic access$100(J)I
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/common/collect/CompactHashSet;Ljava/lang/Object;I)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public static create()Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 87
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 100
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 101
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static getNext(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method private hashTableMask()I
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static newEntries(I)[J
    .locals 2

    .line 204
    new-array p0, p0, [J

    const-wide/16 v0, -0x1

    .line 205
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-object p0
.end method

.method private static newTable(I)[I
    .locals 1

    .line 198
    new-array p0, p0, [I

    const/4 v0, -0x1

    .line 199
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 558
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 559
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 560
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 562
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 563
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/Object;I)Z
    .locals 8

    .line 349
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v0

    and-int/2addr v0, p2

    .line 350
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    move v4, v3

    .line 356
    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v5

    if-ne v5, p2, :cond_2

    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v4, v3, :cond_1

    .line 359
    iget-object p1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    iget-object p2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v2, p2, v1

    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result p2

    aput p2, p1, v0

    goto :goto_1

    .line 362
    :cond_1
    iget-object p1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v2, p1, v4

    aget-wide v5, p1, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result p2

    invoke-static {v2, v3, p2}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v2

    aput-wide v2, p1, v4

    .line 365
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->moveEntry(I)V

    .line 366
    iget p1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 367
    iget p1, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    return p2

    .line 371
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v4

    if-ne v4, v3, :cond_3

    return v2

    :cond_3
    move v7, v4

    move v4, v1

    move v1, v7

    goto :goto_0
.end method

.method private resizeMeMaybe(I)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v0, v0

    if-le p1, v0, :cond_1

    ushr-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    .line 277
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    if-eq p1, v0, :cond_1

    .line 282
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    :cond_1
    return-void
.end method

.method private resizeTable(I)V
    .locals 11

    .line 303
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 304
    array-length v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_0

    const p1, 0x7fffffff

    .line 306
    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    return-void

    :cond_0
    int-to-float v0, p1

    .line 309
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 310
    invoke-static {p1}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object p1

    .line 311
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 313
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    .line 314
    :goto_0
    iget v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge v3, v4, :cond_1

    .line 315
    aget-wide v4, v1, v3

    .line 316
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v4

    and-int v5, v4, v2

    .line 318
    aget v6, p1, v5

    .line 319
    aput v3, p1, v5

    int-to-long v4, v4

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    const-wide v7, 0xffffffffL

    int-to-long v9, v6

    and-long v6, v9, v7

    or-long/2addr v4, v6

    .line 320
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    :cond_1
    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    .line 324
    iput-object p1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    return-void
.end method

.method private static swapNext(JI)J
    .locals 4

    const-wide v0, -0x100000000L

    and-long/2addr p0, v0

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 550
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 551
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 552
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 231
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 232
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 233
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v3

    and-int/2addr v3, v2

    .line 234
    iget v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 235
    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v6, v5, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 237
    aput v4, v5, v3

    goto :goto_1

    .line 243
    :cond_0
    :goto_0
    aget-wide v8, v0, v6

    .line 244
    invoke-static {v8, v9}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v3

    if-ne v3, v2, :cond_1

    aget-object v3, v1, v6

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x0

    return p0

    .line 247
    :cond_1
    invoke-static {v8, v9}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 249
    invoke-static {v8, v9, v4}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v7

    aput-wide v7, v0, v6

    :goto_1
    const v0, 0x7fffffff

    if-eq v4, v0, :cond_3

    add-int/lit8 v0, v4, 0x1

    .line 255
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeMeMaybe(I)V

    .line 256
    invoke-virtual {p0, v4, p1, v2}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 257
    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 258
    iget p1, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    if-lt v4, p1, :cond_2

    .line 259
    iget-object p1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    .line 261
    :cond_2
    iget p1, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    return v0

    .line 252
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move v6, v3

    goto :goto_0
.end method

.method adjustAfterRemove(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public clear()V
    .locals 5

    .line 537
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 538
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 539
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 540
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    const-wide/16 v3, -0x1

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 541
    iput v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 329
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 330
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v2

    and-int/2addr v2, v0

    aget v1, v1, v2

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v2, v2, v1

    .line 333
    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v1, v4, v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 336
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method firstEntryIndex()I
    .locals 0

    .line 416
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    .line 482
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 483
    :goto_0
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge v0, v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getSuccessor(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 420
    iget p0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method init(IF)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Initial capacity must be non-negative"

    .line 187
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    const-string v2, "Illegal load factor"

    .line 188
    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    float-to-double v2, p2

    .line 189
    invoke-static {p1, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 190
    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 191
    iput p2, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    .line 192
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 193
    invoke-static {p1}, Lcom/google/common/collect/CompactHashSet;->newEntries(I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    int-to-float p1, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 194
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    int-to-long v1, p3

    const/16 p3, 0x20

    shl-long/2addr v1, p3

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 270
    iget-object p0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object p2, p0, p1

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    .line 495
    iget p0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 434
    new-instance v0, Lcom/google/common/collect/CompactHashSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet$1;-><init>(Lcom/google/common/collect/CompactHashSet;)V

    return-object v0
.end method

.method moveEntry(I)V
    .locals 6

    .line 380
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_2

    .line 383
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v5, v4, v0

    aput-object v5, v4, p1

    .line 384
    aput-object v3, v4, v0

    .line 387
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v3, v0

    .line 388
    aput-wide v4, v3, p1

    .line 389
    aput-wide v1, v3, v0

    .line 393
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v1

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v2

    and-int/2addr v1, v2

    .line 394
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v3, v2, v1

    if-ne v3, v0, :cond_0

    .line 397
    aput p1, v2, v1

    goto :goto_1

    .line 404
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v1, v1, v3

    invoke-static {v1, v2}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 407
    iget-object p0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    invoke-static {v1, v2, p1}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v0

    aput-wide v0, p0, v3

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object v3, v0, p1

    .line 411
    iget-object p0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aput-wide v1, p0, p1

    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 344
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method resizeEntries(I)V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 294
    array-length v1, v0

    .line 295
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    if-le p1, v1, :cond_0

    const-wide/16 v2, -0x1

    .line 297
    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 299
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    return-void
.end method

.method public size()I
    .locals 0

    .line 490
    iget p0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    return p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-static {v0, v1, p0, v2}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public trimToSize()V
    .locals 6

    .line 514
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 515
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 516
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    :cond_0
    int-to-float v1, v0

    .line 522
    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_1

    int-to-double v2, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 525
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    float-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    shl-int/lit8 v1, v1, 0x1

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 531
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    :cond_2
    return-void
.end method
