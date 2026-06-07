.class public final Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;
.super Lsmartisanos/widget/SwitchEx;
.source "SwitchExDelegate.kt"


# instance fields
.field public final a:Lcom/android/quicksearchbox/settings/search/RealSwitchEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/settings/search/RealSwitchEx;)V
    .locals 1

    const-string v0, "realSwitchEx"

    invoke-static {p2, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lsmartisanos/widget/SwitchEx;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;->a:Lcom/android/quicksearchbox/settings/search/RealSwitchEx;

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;->a:Lcom/android/quicksearchbox/settings/search/RealSwitchEx;

    invoke-virtual {p1, p0}, Lcom/android/quicksearchbox/settings/search/RealSwitchEx;->a(Lsmartisanos/widget/SwitchEx;)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;->a:Lcom/android/quicksearchbox/settings/search/RealSwitchEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsmartisan/widget/SwitchEx;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;->a:Lcom/android/quicksearchbox/settings/search/RealSwitchEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lsmartisan/widget/SwitchEx;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;->a:Lcom/android/quicksearchbox/settings/search/RealSwitchEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lsmartisan/widget/SwitchEx;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lsmartisanos/widget/SwitchEx;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;->a:Lcom/android/quicksearchbox/settings/search/RealSwitchEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    return-void
.end method
