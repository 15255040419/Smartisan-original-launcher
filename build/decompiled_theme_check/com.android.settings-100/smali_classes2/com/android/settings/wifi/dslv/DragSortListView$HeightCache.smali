.class Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeightCache"
.end annotation


# instance fields
.field private mMap:Landroid/util/SparseIntArray;

.field private mMaxSize:I

.field private mOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/wifi/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dslv/DragSortListView;I)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    .line 895
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    .line 896
    iput p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mMaxSize:I

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 3

    .line 903
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, p2, :cond_2

    if-ne v0, v1, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mMaxSize:I

    if-ne v0, v1, :cond_1

    .line 908
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 914
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 915
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 925
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public get(I)I
    .locals 1

    .line 920
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method
