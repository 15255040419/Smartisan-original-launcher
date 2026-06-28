.class public Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;
.super Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;
.source "InputMethodSubtypePreference.java"


# instance fields
.field private final mIsSystemLanguage:Z

.field private final mIsSystemLocale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 8

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-static {p2, p1, p3}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameAsSentence(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object v7, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v2, p0

    move-object v3, p1

    .line 42
    invoke-direct/range {v2 .. v7}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setPersistent(Z)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setKey(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p3}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 61
    iput-boolean p1, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    .line 62
    iput-boolean p1, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    .line 65
    iget-boolean p2, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-nez p2, :cond_1

    .line 66
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 67
    invoke-virtual {p5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    :cond_2
    iput-boolean p1, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;Ljava/text/Collator;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    if-eqz v1, :cond_8

    .line 76
    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    .line 77
    iget-boolean v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-nez v2, :cond_1

    return v3

    .line 80
    :cond_1
    iget-boolean v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v2, :cond_2

    return v4

    .line 83
    :cond_2
    iget-boolean v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-nez v2, :cond_3

    return v3

    .line 86
    :cond_3
    iget-boolean v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-nez v2, :cond_4

    iget-boolean v1, v1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v1, :cond_4

    return v4

    .line 89
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    .line 90
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 94
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    if-eqz v1, :cond_6

    move p0, v3

    goto :goto_0

    :cond_6
    move p0, v0

    :goto_0
    if-eqz v2, :cond_7

    move v0, v3

    :cond_7
    sub-int/2addr p0, v0

    return p0

    .line 99
    :cond_8
    invoke-super {p0, p1}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method
