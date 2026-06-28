.class public Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"


# instance fields
.field private final mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

.field private mList:Ljava/util/List;

.field private mMaxScheduledGeneration:I

.field private mReadOnlyList:Ljava/util/List;

.field private final mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;


# direct methods
.method public constructor <init>(Landroid/support/v7/util/ListUpdateCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 7
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    .line 8
    iput-object p2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/util/DiffUtil$ItemCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    .line 4
    new-instance p1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;

    invoke-direct {p1, p2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;-><init>(Landroid/support/v7/util/DiffUtil$ItemCallback;)V

    invoke-virtual {p1}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->build()Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMaxScheduledGeneration:I

    return p0
.end method

.method static synthetic access$200(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;Ljava/util/List;Landroid/support/v7/util/DiffUtil$DiffResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->latchList(Ljava/util/List;Landroid/support/v7/util/DiffUtil$DiffResult;)V

    return-void
.end method

.method private latchList(Ljava/util/List;Landroid/support/v7/util/DiffUtil$DiffResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 3
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-virtual {p2, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    return-void
.end method


# virtual methods
.method public getCurrentList()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    return-object p0
.end method

.method public submitList(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMaxScheduledGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMaxScheduledGeneration:I

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 6
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-interface {p0, v2, p1}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 7
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 9
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v2, p1}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    return-void

    .line 10
    :cond_2
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    invoke-direct {v3, p0, v0, p1, v1}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;-><init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;Ljava/util/List;Ljava/util/List;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
