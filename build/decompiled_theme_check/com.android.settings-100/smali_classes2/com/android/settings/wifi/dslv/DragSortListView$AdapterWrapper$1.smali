.class Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;

.field final synthetic val$this$0:Lcom/android/settings/wifi/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;Lcom/android/settings/wifi/dslv/DragSortListView;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;

    iput-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper$1;->val$this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 689
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$AdapterWrapper;->notifyDataSetInvalidated()V

    return-void
.end method
