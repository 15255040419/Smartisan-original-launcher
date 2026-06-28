.class public Lcom/android/settings/CancellablePreference;
.super Landroidx/preference/Preference;
.source "CancellablePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CancellablePreference$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancellable:Z

.field private mListener:Lcom/android/settings/CancellablePreference$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d0082

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/settings/CancellablePreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0082

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settings/CancellablePreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0174

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 55
    iget-boolean v0, p0, Lcom/android/settings/CancellablePreference;->mCancellable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/android/settings/CancellablePreference;->mListener:Lcom/android/settings/CancellablePreference$OnCancelListener;

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1, p0}, Lcom/android/settings/CancellablePreference$OnCancelListener;->onCancel(Lcom/android/settings/CancellablePreference;)V

    :cond_0
    return-void
.end method

.method public setCancellable(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/settings/CancellablePreference;->mCancellable:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/CancellablePreference;->notifyChanged()V

    return-void
.end method

.method public setOnCancelListener(Lcom/android/settings/CancellablePreference$OnCancelListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/CancellablePreference;->mListener:Lcom/android/settings/CancellablePreference$OnCancelListener;

    return-void
.end method
