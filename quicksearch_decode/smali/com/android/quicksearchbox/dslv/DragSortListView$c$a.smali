.class public Lcom/android/quicksearchbox/dslv/DragSortListView$c$a;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/dslv/DragSortListView$c;-><init>(Lcom/android/quicksearchbox/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/dslv/DragSortListView$c;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/dslv/DragSortListView$c;Lcom/android/quicksearchbox/dslv/DragSortListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$c$a;->a:Lcom/android/quicksearchbox/dslv/DragSortListView$c;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$c$a;->a:Lcom/android/quicksearchbox/dslv/DragSortListView$c;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$c$a;->a:Lcom/android/quicksearchbox/dslv/DragSortListView$c;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
