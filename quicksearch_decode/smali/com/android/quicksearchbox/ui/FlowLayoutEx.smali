.class public Lcom/android/quicksearchbox/ui/FlowLayoutEx;
.super Lcom/nex3z/flowlayout/FlowLayout;
.source "FlowLayoutEx.java"


# instance fields
.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nex3z/flowlayout/FlowLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/nex3z/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/FlowLayoutEx;->p:Ljava/lang/String;

    return-void
.end method

.method public getVisibleChildCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/nex3z/flowlayout/FlowLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/FlowLayoutEx;->p:Ljava/lang/String;

    const-string p2, "A170044"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/FlowLayoutEx;->getVisibleChildCount()I

    move-result p1

    invoke-static {p1}, Lb/a/a/n1/d$j;->c(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/FlowLayoutEx;->p:Ljava/lang/String;

    const-string p2, "A170080"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/FlowLayoutEx;->getVisibleChildCount()I

    move-result p1

    const-string p3, "hotword_exposure"

    .line 6
    invoke-static {p2, p3, p1}, Lb/a/a/n1/d$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/FlowLayoutEx;->p:Ljava/lang/String;

    return-void
.end method
