.class public abstract Lb/a/a/k1/e;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragmentBase.java"


# instance fields
.field public a:Lcom/android/quicksearchbox/preferences/PreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/k1/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/b0;->a(Landroid/app/Activity;)Lb/a/a/k1/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/preference/PreferenceGroup;)V
    .locals 3

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 5
    instance-of v2, v1, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Lb/a/a/k1/e;->a(Landroid/preference/PreferenceGroup;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lb/a/a/k1/e;->a:Lcom/android/quicksearchbox/preferences/PreferenceController;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/quicksearchbox/preferences/PreferenceController;->handlePreference(Landroid/preference/Preference;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Lcom/android/quicksearchbox/preferences/PreferenceController;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/k1/e;->a:Lcom/android/quicksearchbox/preferences/PreferenceController;

    return-object v0
.end method

.method public abstract c()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lb/a/a/k1/e;->a()Lb/a/a/k1/c;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/k1/e;->a:Lcom/android/quicksearchbox/preferences/PreferenceController;

    .line 3
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "SearchSettings"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lb/a/a/k1/e;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a/a/k1/e;->a(Landroid/preference/PreferenceGroup;)V

    .line 6
    iget-object p1, p0, Lb/a/a/k1/e;->a:Lcom/android/quicksearchbox/preferences/PreferenceController;

    invoke-interface {p1}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onCreateComplete()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/k1/e;->a:Lcom/android/quicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onDestroy()V

    .line 2
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lb/a/a/k1/e;->a:Lcom/android/quicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/k1/e;->a:Lcom/android/quicksearchbox/preferences/PreferenceController;

    invoke-interface {v0}, Lcom/android/quicksearchbox/preferences/PreferenceController;->onStop()V

    .line 2
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method
