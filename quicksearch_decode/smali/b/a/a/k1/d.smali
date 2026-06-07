.class public Lb/a/a/k1/d;
.super Ljava/lang/Object;
.source "SearchableItemsController.java"

# interfaces
.implements Lcom/android/quicksearchbox/preferences/PreferenceController;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final a:Lcom/android/quicksearchbox/SearchSettings;

.field public final b:Lcom/android/quicksearchbox/Corpora;

.field public final c:Landroid/content/Context;

.field public d:Landroid/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/Corpora;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/k1/d;->a:Lcom/android/quicksearchbox/SearchSettings;

    .line 3
    iput-object p2, p0, Lb/a/a/k1/d;->b:Lcom/android/quicksearchbox/Corpora;

    .line 4
    iput-object p3, p0, Lb/a/a/k1/d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/k1/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Lcom/android/quicksearchbox/Corpus;)Landroid/preference/Preference;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;

    invoke-virtual {p0}, Lb/a/a/k1/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {p1}, Lb/a/a/e0;->e(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 8
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 10
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getSettingsDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 13
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getCorpusIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/preferences/SearchableItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final b()Lcom/android/quicksearchbox/Corpora;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/k1/d;->b:Lcom/android/quicksearchbox/Corpora;

    return-object v0
.end method

.method public final c()Landroid/content/res/Resources;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/k1/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/android/quicksearchbox/SearchSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/k1/d;->a:Lcom/android/quicksearchbox/SearchSettings;

    return-object v0
.end method

.method public final e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb/a/a/k1/d;->c()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lb/a/a/k1/d;->d:Landroid/preference/PreferenceGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 3
    invoke-virtual {p0}, Lb/a/a/k1/d;->b()Lcom/android/quicksearchbox/Corpora;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpora;->getAllCorpora()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/Corpus;

    if-nez v0, :cond_1

    .line 4
    invoke-interface {v2}, Lcom/android/quicksearchbox/Corpus;->includeInAll()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    :cond_1
    invoke-virtual {p0, v2}, Lb/a/a/k1/d;->a(Lcom/android/quicksearchbox/Corpus;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v3, p0, Lb/a/a/k1/d;->d:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/preference/PreferenceGroup;

    iput-object p1, p0, Lb/a/a/k1/d;->d:Landroid/preference/PreferenceGroup;

    .line 2
    invoke-virtual {p0}, Lb/a/a/k1/d;->e()V

    return-void
.end method

.method public onCreateComplete()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/k1/d;->d()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/quicksearchbox/SearchSettings;->broadcastSettingsChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
