.class public Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
.super Ljava/lang/Object;
.source "InputMethodSettingValuesWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;


# instance fields
.field private final mAsciiCapableEnabledImis:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    .line 75
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    .line 76
    invoke-static {}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getDefaultCurrentUserId()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v0, "input_method"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 78
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    return-void
.end method

.method private static getDefaultCurrentUserId()I
    .locals 3

    .line 66
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private getEnabledValidSystemNonAuxAsciiCapableImeCount(Landroid/content/Context;)I
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 144
    invoke-virtual {p0, v2, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 149
    sget-object p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string p1, "No \"enabledValidSystemNonAuxAsciiCapableIme\"s found."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :catchall_0
    move-exception p0

    .line 142
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
    .locals 2

    .line 54
    sget-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-direct {v1, p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 61
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    return-object p0
.end method

.method private updateAsciiCapableEnabledImis()V
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 98
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 100
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 102
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    const-string v6, "keyboard"

    .line 103
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getInputMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 4

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 123
    monitor-exit v1

    return v3

    .line 125
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-direct {p0, p2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getEnabledValidSystemNonAuxAsciiCapableImeCount(Landroid/content/Context;)I

    move-result v1

    if-gt v1, v3, :cond_2

    if-ne v1, v3, :cond_1

    if-eqz v0, :cond_2

    .line 132
    :cond_1
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return v3

    :catchall_0
    move-exception p0

    .line 125
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p0

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 160
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 158
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 8

    .line 168
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 171
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 172
    sget-object v7, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 177
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 178
    sget-object p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string p2, "ascii capable subtype enabled imi not found. Fall back to English Keyboard subtype."

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p2, "keyboard"

    invoke-static {p1, p0, v1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result p0

    return p0

    .line 183
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public refreshAllInputMethodAndSubtypes()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 85
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 88
    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->updateAsciiCapableEnabledImis()V

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
