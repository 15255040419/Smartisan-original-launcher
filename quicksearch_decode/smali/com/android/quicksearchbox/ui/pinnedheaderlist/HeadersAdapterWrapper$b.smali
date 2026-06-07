.class public Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$b;
.super Ljava/lang/Object;
.source "HeadersAdapterWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->a(Lb/a/a/m1/h/b;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$b;->b:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    iput p2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$b;->b:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    invoke-static {v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->b(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;)Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$b;->b:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->c:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;

    iget v1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$b;->a:I

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$b;->b:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    invoke-static {v2}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->b(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;)Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;

    move-result-object v2

    iget v3, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$b;->a:I

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$OnHeaderClickListener;->onHeaderClick(Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
