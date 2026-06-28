.class public Lcom/android/settings/AppProgressPreference;
.super Lcom/android/settings/TintablePreference;
.source "AppProgressPreference.java"


# instance fields
.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TintablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d01e3

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/settings/AppProgressPreference;->setLayoutResource(I)V

    const p1, 0x7f0d0343

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/settings/AppProgressPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/TintablePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x102000d

    .line 42
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 43
    iget p0, p0, Lcom/android/settings/AppProgressPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/android/settings/AppProgressPreference;->mProgress:I

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/AppProgressPreference;->notifyChanged()V

    return-void
.end method
