.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$h;
.super Ljava/lang/Object;
.source "TNTSearchActivityView.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$h;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 2
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$h;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060290

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int p2, p5, p2

    .line 3
    invoke-direct {p1, p4, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$h;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06028c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const-string p3, "search_bar_blur"

    if-ge p5, p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$h;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget p4, Lcom/smartisanos/quicksearch/R$id;->search_bar_blur:I

    invoke-virtual {p2, p4}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2, p3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$h;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget p4, Lcom/smartisanos/quicksearch/R$id;->search_bar_blur:I

    invoke-virtual {p2, p4}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2, p3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$h;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget p4, Lcom/smartisanos/quicksearch/R$id;->search_bar_blur:I

    invoke-virtual {p2, p4}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2, p3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
