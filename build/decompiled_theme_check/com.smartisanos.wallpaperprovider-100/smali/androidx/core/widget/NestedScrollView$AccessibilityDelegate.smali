.class Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2070
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 2127
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2128
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 2129
    const-class p0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2130
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2131
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2132
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2133
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2134
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    move-result p0

    invoke-static {p2, p0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 2135
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result p0

    invoke-static {p2, p0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 2108
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2109
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 2110
    const-class p0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2111
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2112
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    .line 2114
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2115
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2000

    .line 2116
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2118
    :cond_0
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p1

    if-ge p1, p0, :cond_1

    const/16 p0, 0x1000

    .line 2119
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 2073
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    const/4 p3, 0x1

    if-eqz p0, :cond_0

    return p3

    .line 2076
    :cond_0
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 2077
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->isEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/16 p0, 0x1000

    if-eq p2, p0, :cond_4

    const/16 p0, 0x2000

    if-eq p2, p0, :cond_2

    return v0

    .line 2093
    :cond_2
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p0, p2

    .line 2094
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result p2

    sub-int/2addr p0, p2

    .line 2095
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    sub-int/2addr p2, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 2096
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    if-eq p0, p2, :cond_3

    .line 2097
    invoke-virtual {p1, v0, p0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return p3

    :cond_3
    return v0

    .line 2082
    :cond_4
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p0, p2

    .line 2083
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    move-result p2

    sub-int/2addr p0, p2

    .line 2084
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    add-int/2addr p2, p0

    .line 2085
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result p0

    .line 2084
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 2086
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    move-result p2

    if-eq p0, p2, :cond_5

    .line 2087
    invoke-virtual {p1, v0, p0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    return p3

    :cond_5
    return v0
.end method
