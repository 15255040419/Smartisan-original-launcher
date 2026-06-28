.class public Lcom/android/settings/AppListPreferenceWithSettings;
.super Lcom/android/settings/AppListPreference;
.source "AppListPreferenceWithSettings.java"


# instance fields
.field private mSettingsComponent:Landroid/content/ComponentName;

.field private mSettingsIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d020e

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreferenceWithSettings;->setWidgetLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppListPreferenceWithSettings;)Landroid/content/ComponentName;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method private updateSettingsVisibility()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    if-nez p0, :cond_1

    const/16 p0, 0x8

    .line 50
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 52
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0815

    .line 28
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    .line 29
    iget-object p1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    new-instance v0, Lcom/android/settings/AppListPreferenceWithSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AppListPreferenceWithSettings$1;-><init>(Lcom/android/settings/AppListPreferenceWithSettings;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/AppListPreferenceWithSettings;->updateSettingsVisibility()V

    return-void
.end method

.method protected setSettingsComponent(Landroid/content/ComponentName;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    .line 58
    invoke-direct {p0}, Lcom/android/settings/AppListPreferenceWithSettings;->updateSettingsVisibility()V

    return-void
.end method
