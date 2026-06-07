.class public Lcom/android/quicksearchbox/dslv/DragSortListView$b;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/dslv/DragSortListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$b;->a:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$b;->a:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->b(Lcom/android/quicksearchbox/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$b;->a:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->e()V

    :cond_0
    return-void
.end method

.method public onChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView$b;->a()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView$b;->a()V

    return-void
.end method
