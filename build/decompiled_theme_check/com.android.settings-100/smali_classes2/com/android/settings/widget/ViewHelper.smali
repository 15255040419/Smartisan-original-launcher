.class public Lcom/android/settings/widget/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEnableState(ZLandroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 18
    invoke-static {p0, v2}, Lcom/android/settings/widget/ViewHelper;->setEnableState(ZLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
