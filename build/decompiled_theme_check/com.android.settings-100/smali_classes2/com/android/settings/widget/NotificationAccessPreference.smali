.class public Lcom/android/settings/widget/NotificationAccessPreference;
.super Landroid/preference/Preference;
.source "NotificationAccessPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/NotificationAccessPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationAccessPreference"


# instance fields
.field private mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mChecked:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mStyle:I

.field private mSwitch:Lsmartisanos/widget/ListContentItemSwitch;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/NotificationAccessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/NotificationAccessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mChecked:Z

    return p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0913

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object v0, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    const v0, 0x7f0a02a0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    iget v2, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mStyle:I

    invoke-virtual {v1, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setBackgroundStyle(I)V

    .line 70
    iget-object v1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    iget-object v2, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    iget-object v2, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    iget-boolean v2, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    iget-object v2, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget v1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mStyle:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationAccessPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d01a8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/widget/NotificationAccessPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    check-cast p1, Lcom/android/settings/widget/NotificationAccessPreference$SavedState;

    .line 119
    invoke-virtual {p1}, Lcom/android/settings/widget/NotificationAccessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 120
    iget-boolean p1, p1, Lcom/android/settings/widget/NotificationAccessPreference$SavedState;->checked:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NotificationAccessPreference;->setChecked(Z)V

    return-void

    .line 114
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 99
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationAccessPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 105
    :cond_0
    new-instance v1, Lcom/android/settings/widget/NotificationAccessPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/NotificationAccessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationAccessPreference;->isChecked()Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/settings/widget/NotificationAccessPreference$SavedState;->checked:Z

    return-object v1
.end method

.method public setBackgroundStyle(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mStyle:I

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mChecked:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationAccessPreference;->notifyChanged()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/widget/NotificationAccessPreference;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
