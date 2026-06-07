.class public Lcom/android/quicksearchbox/ui/CheckableItemLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableItemLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/CheckableItemLayout;->a:Z

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/CheckableItemLayout;->a:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/CheckableItemLayout;->a:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/CheckableItemLayout;->a:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->refreshDrawableState()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 7
    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/CheckableItemLayout;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/CheckableItemLayout;->setChecked(Z)V

    return-void
.end method
