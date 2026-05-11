.class Lcom/smartisanos/launcher/theme/F;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Kt:I

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/F;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    iput p2, p0, Lcom/smartisanos/launcher/theme/F;->Kt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/F;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/F;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->h(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5
    iget v3, p0, Lcom/smartisanos/launcher/theme/F;->Kt:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 7
    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 9
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/F;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->h(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method
