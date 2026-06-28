.class public Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeEnablerManager.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAutoSelectionPrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/preference/TwoStatePreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollator:Ljava/text/Collator;

.field private final mFragment:Landroidx/preference/PreferenceFragment;

.field private mHaveHardKeyboard:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputMethodInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    .line 50
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mCollator:Ljava/text/Collator;

    .line 53
    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mFragment:Landroidx/preference/PreferenceFragment;

    .line 54
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 56
    iget-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    return-void
.end method

.method private addInputMethodSubtypePreferences(Landroidx/preference/PreferenceFragment;Landroid/view/inputmethod/InputMethodInfo;Landroidx/preference/PreferenceScreen;)V
    .locals 8

    .line 118
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Landroidx/preference/PreferenceCategory;

    invoke-direct {v2, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {p3, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 129
    invoke-virtual {p2, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 131
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 134
    new-instance v3, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;

    invoke-direct {v3, p1}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    .line 136
    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 138
    invoke-virtual {v3, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    new-instance v2, Landroidx/preference/PreferenceCategory;

    invoke-direct {v2, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 142
    sget v4, Lcom/android/settingslib/R$string;->active_input_method_subtypes:I

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceCategory;->setTitle(I)V

    .line 143
    invoke-virtual {p3, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    const/4 p3, 0x0

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 148
    invoke-virtual {p2, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    .line 149
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez p3, :cond_2

    .line 151
    invoke-static {v6, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameAsSentence(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 155
    :cond_1
    new-instance v7, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    invoke-direct {v7, p1, v6, p2}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V

    .line 157
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 160
    :cond_3
    new-instance p1, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManager$PPMWeI2GfPQjVpSU0RU1gADruK4;

    invoke-direct {p1, p0}, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManager$PPMWeI2GfPQjVpSU0RU1gADruK4;-><init>(Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 166
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 167
    invoke-virtual {v2, p2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 168
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    invoke-static {p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroidx/preference/Preference;)V

    goto :goto_2

    .line 171
    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 173
    sget p0, Lcom/android/settingslib/R$string;->use_system_language_to_select_input_method_subtypes:I

    invoke-virtual {v3, p0}, Landroidx/preference/TwoStatePreference;->setTitle(I)V

    goto :goto_3

    .line 176
    :cond_5
    invoke-virtual {v3, p3}, Landroidx/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z
    .locals 1

    .line 181
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 182
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    .line 183
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 199
    instance-of v2, v1, Landroidx/preference/TwoStatePreference;

    if-eqz v2, :cond_1

    xor-int/lit8 v2, p2, 0x1

    .line 203
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p2, :cond_1

    .line 205
    check-cast v1, Landroidx/preference/TwoStatePreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 210
    iget-object p2, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mFragment:Landroidx/preference/PreferenceFragment;

    .line 211
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mHaveHardKeyboard:Z

    .line 210
    invoke-static {p2, v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Landroidx/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateAutoSelectionPreferences()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    invoke-direct {p0, v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    return-void
.end method

.method private updateImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 220
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/TwoStatePreference;

    if-eqz v3, :cond_0

    .line 224
    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p1, :cond_0

    .line 228
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 6

    .line 234
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 236
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    .line 237
    invoke-virtual {p0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object p0

    if-eqz v1, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 242
    instance-of v3, v1, Landroidx/preference/TwoStatePreference;

    if-nez v3, :cond_2

    goto :goto_0

    .line 245
    :cond_2
    check-cast v1, Landroidx/preference/TwoStatePreference;

    const/4 v3, 0x0

    .line 246
    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 247
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 250
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public init(Landroidx/preference/PreferenceFragment;Ljava/lang/String;Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 60
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 61
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mHaveHardKeyboard:Z

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 65
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_2
    invoke-direct {p0, p1, v1, p3}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->addInputMethodSubtypePreferences(Landroidx/preference/PreferenceFragment;Landroid/view/inputmethod/InputMethodInfo;Landroidx/preference/PreferenceScreen;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public synthetic lambda$addInputMethodSubtypePreferences$0$InputMethodAndSubtypeEnablerManager(Landroidx/preference/Preference;Landroidx/preference/Preference;)I
    .locals 1

    .line 161
    instance-of v0, p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    if-eqz v0, :cond_0

    .line 162
    check-cast p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1, p2, p0}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->compareTo(Landroidx/preference/Preference;Ljava/text/Collator;)I

    move-result p0

    return p0

    .line 164
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 88
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 95
    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 96
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 98
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    return v3

    .line 103
    :cond_2
    instance-of v0, p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    if-eqz v0, :cond_4

    .line 104
    check-cast p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    .line 105
    invoke-virtual {p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setChecked(Z)V

    .line 106
    invoke-virtual {p1}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_3

    .line 109
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateAutoSelectionPreferences()V

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public refresh(Landroid/content/Context;Landroidx/preference/PreferenceFragment;)V
    .locals 2

    .line 75
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-static {p2, p1, v0, v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Landroidx/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 78
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateAutoSelectionPreferences()V

    return-void
.end method

.method public save(Landroid/content/Context;Landroidx/preference/PreferenceFragment;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean p0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mHaveHardKeyboard:Z

    invoke-static {p2, p1, v0, p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Landroidx/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    return-void
.end method
