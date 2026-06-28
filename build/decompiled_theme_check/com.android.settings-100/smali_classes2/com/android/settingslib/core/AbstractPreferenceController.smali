.class public abstract Lcom/android/settingslib/core/AbstractPreferenceController;
.super Ljava/lang/Object;
.source "AbstractPreferenceController.java"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 26
    instance-of v1, p0, Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 28
    check-cast p0, Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract getPreferenceKey()Ljava/lang/String;
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isAvailable()Z
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 0

    .line 83
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method
