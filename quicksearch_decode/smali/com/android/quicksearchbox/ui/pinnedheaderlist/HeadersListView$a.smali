.class public Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$a;
.super Ljava/lang/Object;
.source "HeadersListView.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$a;->a:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderClick(Landroid/view/View;IJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$a;->a:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->a(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;)Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$OnHeaderClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$a;->a:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->a(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;)Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$OnHeaderClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$a;->a:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView$OnHeaderClickListener;->onHeaderClick(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;Landroid/view/View;IJZ)V

    :cond_0
    return-void
.end method
