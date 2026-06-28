.class Lcom/android/settings/wifi/dslv/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dslv/DragSortListView;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$2;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$2;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$100(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 583
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$2;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->cancelDrag()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 589
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$2;->cancel()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 594
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$2;->cancel()V

    return-void
.end method
