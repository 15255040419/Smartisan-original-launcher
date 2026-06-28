.class public Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDelegate"
.end annotation


# instance fields
.field final mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 106
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 111
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 112
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 115
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 121
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 124
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
