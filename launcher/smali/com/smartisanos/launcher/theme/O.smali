.class Lcom/smartisanos/launcher/theme/O;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/theme/P;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/P;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/O;->this$1:Lcom/smartisanos/launcher/theme/P;

    iput-object p2, p0, Lcom/smartisanos/launcher/theme/O;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/O;->this$1:Lcom/smartisanos/launcher/theme/P;

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/P;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/O;->val$view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/O;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v4, v3

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    float-to-int v5, v4

    int-to-float v6, v0

    sub-float/2addr v6, v4

    float-to-int v4, v6

    const/4 v6, 0x0

    .line 6
    aget v7, v2, v6

    if-lt v7, v5, :cond_0

    aget v7, v2, v6

    if-gt v7, v4, :cond_0

    return-void

    .line 7
    :cond_0
    aget v7, v2, v6

    if-ge v7, v5, :cond_1

    .line 8
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/O;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v3

    goto :goto_0

    :cond_1
    move v5, v6

    .line 9
    :goto_0
    aget v2, v2, v6

    if-le v2, v4, :cond_2

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/O;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    div-int/2addr v0, v3

    sub-int/2addr v0, v1

    mul-int/2addr v0, v3

    sub-int v5, v2, v0

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/O;->this$1:Lcom/smartisanos/launcher/theme/P;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/P;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->h(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method
