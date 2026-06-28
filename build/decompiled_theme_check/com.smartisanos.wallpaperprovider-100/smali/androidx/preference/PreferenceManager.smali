.class public Landroidx/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;,
        Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;,
        Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;,
        Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;,
        Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field private static final STORAGE_DEFAULT:I = 0x0

.field private static final STORAGE_DEVICE_PROTECTED:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mNextId:J

.field private mNoCommit:Z

.field private mOnDisplayPreferenceDialogListener:Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

.field private mOnNavigateToScreenListener:Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;

.field private mOnPreferenceTreeClickListener:Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceComparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

.field private mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;

.field private mStorage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Landroidx/preference/PreferenceManager;->mStorage:I

    .line 105
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 119
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 119
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2

    .line 150
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 150
    invoke-static {p0, v0, v1, p1, p2}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "_has_set_default_values"

    .line 181
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez p4, :cond_0

    .line 184
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-nez p4, :cond_1

    .line 185
    :cond_0
    new-instance p4, Landroidx/preference/PreferenceManager;

    invoke-direct {p4, p0}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {p4, p1}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p4, p2}, Landroidx/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    const/4 p1, 0x0

    .line 188
    invoke-virtual {p4, p0, p3, p1}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    .line 190
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x1

    .line 191
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 192
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private setNoCommit(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 497
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 500
    :cond_0
    iput-boolean p1, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    return-void
.end method


# virtual methods
.method public createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;
    .locals 2

    .line 226
    new-instance v0, Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceScreen;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-object v0
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 451
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 455
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 509
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 468
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 472
    :cond_0
    iget-boolean v0, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 474
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 477
    :cond_1
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0

    .line 479
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method getNextId()J
    .locals 4

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-wide v0, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 239
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOnDisplayPreferenceDialogListener()Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
    .locals 0

    .line 522
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    return-object p0
.end method

.method public getOnNavigateToScreenListener()Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;
    .locals 0

    .line 569
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;

    return-object p0
.end method

.method public getOnPreferenceTreeClickListener()Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 0

    .line 552
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object p0
.end method

.method public getPreferenceComparisonCallback()Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;
    .locals 0

    .line 513
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mPreferenceComparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    return-object p0
.end method

.method public getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;
    .locals 0

    .line 380
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    return-object p0
.end method

.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 0

    .line 419
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 391
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 395
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 397
    iget v0, p0, Landroidx/preference/PreferenceManager;->mStorage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 402
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 406
    :goto_0
    iget-object v1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 410
    :cond_2
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public getSharedPreferencesMode()I
    .locals 0

    .line 276
    iget p0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesMode:I

    return p0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 0

    .line 250
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object p0
.end method

.method public inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 1

    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, v0}, Landroidx/preference/PreferenceManager;->setNoCommit(Z)V

    .line 215
    new-instance v0, Landroidx/preference/PreferenceInflater;

    invoke-direct {v0, p1, p0}, Landroidx/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceManager;)V

    .line 216
    invoke-virtual {v0, p2, p3}, Landroidx/preference/PreferenceInflater;->inflate(ILandroidx/preference/PreferenceGroup;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 217
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    const/4 p2, 0x0

    .line 220
    invoke-direct {p0, p2}, Landroidx/preference/PreferenceManager;->setNoCommit(Z)V

    return-object p1
.end method

.method public isStorageDefault()Z
    .locals 3

    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 336
    iget p0, p0, Landroidx/preference/PreferenceManager;->mStorage:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isStorageDeviceProtected()Z
    .locals 3

    .line 350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 351
    iget p0, p0, Landroidx/preference/PreferenceManager;->mStorage:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V
    .locals 0

    .line 527
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    return-void
.end method

.method public setOnNavigateToScreenListener(Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;)V
    .locals 0

    .line 562
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;

    return-void
.end method

.method public setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0

    .line 548
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-void
.end method

.method public setPreferenceComparisonCallback(Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V
    .locals 0

    .line 518
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mPreferenceComparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    return-void
.end method

.method public setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V
    .locals 0

    .line 368
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    return-void
.end method

.method public setPreferences(Landroidx/preference/PreferenceScreen;)Z
    .locals 1

    .line 429
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onDetached()V

    .line 433
    :cond_0
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 0

    .line 287
    iput p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesMode:I

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setStorageDefault()V
    .locals 2

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 297
    iput v0, p0, Landroidx/preference/PreferenceManager;->mStorage:I

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public setStorageDeviceProtected()V
    .locals 2

    .line 321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 322
    iput v0, p0, Landroidx/preference/PreferenceManager;->mStorage:I

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method shouldCommit()Z
    .locals 0

    .line 493
    iget-boolean p0, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public showDialog(Landroidx/preference/Preference;)V
    .locals 0

    .line 536
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    if-eqz p0, :cond_0

    .line 537
    invoke-interface {p0, p1}, Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
