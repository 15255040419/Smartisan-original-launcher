.class public Lcom/android/settings/wifi/dslv/DragSortItemViewCheckable;
.super Lcom/android/settings/wifi/dslv/DragSortItemView;
.source "DragSortItemViewCheckable.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortItemViewCheckable;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 28
    instance-of v1, p0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 29
    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortItemViewCheckable;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 37
    instance-of v0, p0, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dslv/DragSortItemViewCheckable;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 44
    instance-of v0, p0, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->toggle()V

    :cond_0
    return-void
.end method
