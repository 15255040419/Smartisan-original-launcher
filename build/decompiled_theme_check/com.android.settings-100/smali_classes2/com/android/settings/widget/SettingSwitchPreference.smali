.class public Lcom/android/settings/widget/SettingSwitchPreference;
.super Landroid/preference/Preference;
.source "SettingSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SettingSwitchPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingSwitchPreference"


# instance fields
.field private mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mChecked:Z

.field private mSwitch:Lsmartisanos/widget/SwitchEx;

.field private mSwitchTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mChecked:Z

    return p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0575

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/SwitchEx;

    iput-object v0, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mSwitch:Lsmartisanos/widget/SwitchEx;

    .line 53
    iget-object v0, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mSwitchTag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v1, v0}, Lsmartisanos/widget/SwitchEx;->setTag(Ljava/lang/Object;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mSwitch:Lsmartisanos/widget/SwitchEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mSwitch:Lsmartisanos/widget/SwitchEx;

    iget-boolean v1, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mSwitch:Lsmartisanos/widget/SwitchEx;

    iget-object v1, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d028c

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/widget/SettingSwitchPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    check-cast p1, Lcom/android/settings/widget/SettingSwitchPreference$SavedState;

    .line 98
    invoke-virtual {p1}, Lcom/android/settings/widget/SettingSwitchPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 99
    iget-boolean p1, p1, Lcom/android/settings/widget/SettingSwitchPreference$SavedState;->checked:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingSwitchPreference;->setChecked(Z)V

    return-void

    .line 93
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingSwitchPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 84
    :cond_0
    new-instance v1, Lcom/android/settings/widget/SettingSwitchPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SettingSwitchPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingSwitchPreference;->isChecked()Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/settings/widget/SettingSwitchPreference$SavedState;->checked:Z

    return-object v1
.end method

.method public setChecked(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mChecked:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingSwitchPreference;->notifyChanged()V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setTagForSwitch(Ljava/lang/Object;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/widget/SettingSwitchPreference;->mSwitchTag:Ljava/lang/Object;

    return-void
.end method
