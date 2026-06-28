.class public abstract Landroidx/preference/TwoStatePreference;
.super Landroidx/preference/Preference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field protected mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 0

    .line 178
    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->mDisableDependentsState:Z

    return p0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 0

    .line 159
    iget-object p0, p0, Landroidx/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 0

    .line 127
    iget-object p0, p0, Landroidx/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    return p0
.end method

.method protected onClick()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 193
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/TwoStatePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    check-cast p1, Landroidx/preference/TwoStatePreference$SavedState;

    .line 271
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 272
    iget-boolean p1, p1, Landroidx/preference/TwoStatePreference$SavedState;->mChecked:Z

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 266
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 251
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 257
    :cond_0
    new-instance v1, Landroidx/preference/TwoStatePreference$SavedState;

    invoke-direct {v1, v0}, Landroidx/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 258
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    iput-boolean p0, v1, Landroidx/preference/TwoStatePreference$SavedState;->mChecked:Z

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 199
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 201
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->getPersistedBoolean(Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .line 88
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 89
    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->mCheckedSet:Z

    if-nez v2, :cond_2

    .line 90
    :cond_1
    iput-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 91
    iput-boolean v1, p0, Landroidx/preference/TwoStatePreference;->mCheckedSet:Z

    .line 92
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->persistBoolean(Z)Z

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->notifyDependencyChange(Z)V

    .line 95
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mDisableDependentsState:Z

    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1

    .line 167
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 147
    iput-object p1, p0, Landroidx/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 148
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 149
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 115
    iput-object p1, p0, Landroidx/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 3

    .line 102
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mDisableDependentsState:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 103
    invoke-super {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method protected syncSummaryView(Landroid/view/View;)V
    .locals 3

    .line 220
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 225
    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move v0, v2

    goto :goto_1

    .line 228
    :cond_1
    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    .line 234
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 235
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    :cond_3
    const/16 p0, 0x8

    if-nez v0, :cond_4

    move p0, v2

    .line 244
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq p0, v0, :cond_5

    .line 245
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method protected syncSummaryView(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    const v0, 0x1020010

    .line 211
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->syncSummaryView(Landroid/view/View;)V

    return-void
.end method
