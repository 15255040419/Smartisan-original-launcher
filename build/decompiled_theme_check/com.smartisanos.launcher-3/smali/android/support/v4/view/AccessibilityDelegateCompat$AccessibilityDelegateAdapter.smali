.class final Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# instance fields
.field private final mCompat:Landroid/support/v4/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->getProvider()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 2
    invoke-static {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
