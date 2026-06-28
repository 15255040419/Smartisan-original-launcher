.class public Lcom/android/settingslib/RestrictedSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "RestrictedSwitchPreference.java"


# instance fields
.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field mRestrictedSwitchSummary:Ljava/lang/CharSequence;

.field mUseAdditionalSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 81
    sget v0, Lcom/android/settingslib/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 39
    iput-boolean p3, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 45
    sget p4, Lcom/android/settingslib/R$layout;->restricted_switch_widget:I

    invoke-virtual {p0, p4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setWidgetLayoutResource(I)V

    .line 46
    new-instance p4, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {p4, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    if-eqz p2, :cond_3

    .line 48
    sget-object p4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 50
    sget p4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_useAdditionalSummary:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 53
    iget v0, p4, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget p4, p4, Landroid/util/TypedValue;->data:I

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    iput-boolean p4, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 58
    :cond_1
    sget p4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 60
    iget p4, p2, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_3

    .line 62
    iget p4, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p4, :cond_2

    .line 63
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 66
    :cond_2
    iget-object p1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    .line 70
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz p1, :cond_4

    .line 71
    sget p1, Lcom/android/settingslib/R$layout;->restricted_switch_preference:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setLayoutResource(I)V

    .line 72
    invoke-virtual {p0, p3}, Lcom/android/settingslib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;)V
    .locals 1

    .line 153
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    return-void
.end method

.method public checkRestrictionAndSetDisabled(Ljava/lang/String;I)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    return-void
.end method

.method public isDisabledByAdmin()Z
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 149
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 91
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 95
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settingslib/R$string;->enabled_by_admin:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settingslib/R$string;->disabled_by_admin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    :cond_1
    sget v1, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020040

    .line 103
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v2, :cond_5

    .line 108
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_5
    iget-boolean v1, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v1, :cond_7

    .line 112
    sget v1, Lcom/android/settingslib/R$id;->additional_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 115
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 116
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 119
    :cond_6
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const v1, 0x1020010

    .line 123
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 125
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-super {p0}, Landroidx/preference/SwitchPreference;->performClick()V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    .line 166
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    return-void
.end method
