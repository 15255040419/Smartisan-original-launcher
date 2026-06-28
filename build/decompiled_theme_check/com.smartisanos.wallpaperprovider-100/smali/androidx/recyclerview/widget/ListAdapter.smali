.class public abstract Landroidx/recyclerview/widget/ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private final mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/recyclerview/widget/AsyncDifferConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 106
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v1, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    return-void
.end method

.method protected constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 100
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v1, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 101
    invoke-virtual {v2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    return-void
.end method


# virtual methods
.method protected getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 124
    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 129
    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public submitList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 119
    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mHelper:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    return-void
.end method
