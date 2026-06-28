.class public Lcom/android/settingslib/widget/FooterPreferenceMixin;
.super Ljava/lang/Object;
.source "FooterPreferenceMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;


# instance fields
.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private final mFragment:Landroidx/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFragment:Landroidx/preference/PreferenceFragment;

    .line 34
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private getPrefContext()Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFragment:Landroidx/preference/PreferenceFragment;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFragment:Landroidx/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 52
    :cond_0
    new-instance v1, Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {p0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 57
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    return-object p0
.end method

.method public hasFooter()Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
