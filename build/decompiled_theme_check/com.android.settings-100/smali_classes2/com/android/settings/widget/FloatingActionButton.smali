.class public Lcom/android/settings/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "FloatingActionButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const p2, 0x7f010021

    .line 34
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/FloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 35
    new-instance p1, Lcom/android/settings/widget/FloatingActionButton$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/FloatingActionButton$1;-><init>(Lcom/android/settings/widget/FloatingActionButton;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/FloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/FloatingActionButton;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/widget/FloatingActionButton;->invalidateOutline()V

    return-void
.end method
