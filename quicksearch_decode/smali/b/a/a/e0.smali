.class public Lb/a/a/e0;
.super Ljava/lang/Object;
.source "SearchSettingsImpl.java"

# interfaces
.implements Lcom/android/quicksearchbox/SearchSettings;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb/a/a/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/a/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/e0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lb/a/a/e0;->b:Lb/a/a/m;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 9
    invoke-static {p0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "TNTSearchSettings"

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "SearchSettings"

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable_corpus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    .line 8
    invoke-virtual {p0, p2, v0}, Lb/a/a/e0;->a(Ljava/lang/String;I)V

    return p1
.end method

.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e0;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/android/quicksearchbox/Corpus;Z)V
    .locals 0

    .line 12
    invoke-static {p1}, Lb/a/a/e0;->e(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lb/a/a/e0;->a(Ljava/lang/String;Z)V

    .line 13
    invoke-virtual {p0}, Lb/a/a/e0;->broadcastSettingsChanged()V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 17
    invoke-static {v1}, Lb/a/a/e0;->e(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 19
    invoke-virtual {p0}, Lb/a/a/e0;->broadcastSettingsChanged()V

    return-void
.end method

.method public a(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lb/a/a/e0;->b:Lb/a/a/m;

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/a/a/m;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 14
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public addMenuItems(Landroid/view/Menu;Z)V
    .locals 1

    .line 1
    new-instance p2, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lb/a/a/e0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0001

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f080147

    .line 3
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lb/a/a/e0;->getSearchSettingsIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-void
.end method

.method public allowWebSearchShortcuts()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/a/a/e0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/a/a/e0;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "TNTSearchSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lb/a/a/e0;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "SearchSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "default_sort_corpora"

    .line 7
    invoke-virtual {p0, v0, p1}, Lb/a/a/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lb/a/a/e0;->b:Lb/a/a/m;

    invoke-virtual {p1}, Lb/a/a/m;->j()V

    .line 9
    invoke-virtual {p0}, Lb/a/a/e0;->broadcastSettingsChanged()V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lb/a/a/e0;->a(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p0}, Lb/a/a/e0;->broadcastSettingsChanged()V

    return-void
.end method

.method public b(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lb/a/a/e0;->b:Lb/a/a/m;

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/a/a/m;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public broadcastSettingsChanged()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QSB.SearchSettingsImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lb/a/a/e0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final c(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.smartisanos.launcher/.StartActivityForSearch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "apps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getSources()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Source;

    .line 4
    instance-of v3, v0, Lb/a/a/h0;

    if-eqz v3, :cond_2

    .line 5
    check-cast v0, Lb/a/a/h0;

    .line 6
    invoke-virtual {p0}, Lb/a/a/e0;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Lb/a/a/h0;->d()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v3, v0}, Lb/a/a/n1/f0;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method public d(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1}, Lb/a/a/e0;->e(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getNextVoiceSearchHintIndex(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "next_voice_search_hint"

    invoke-virtual {p0, v0, v1}, Lb/a/a/e0;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    .line 2
    rem-int/2addr v0, p1

    return v0
.end method

.method public getPreSearchKeyBoardType()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_pre_keyboard_type"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSearchBaseDomain()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_base_domain"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBaseDomainApplyTime()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_base_domain_apply_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchSettingsIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Lb/a/a/e0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getSearchableItemsIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.quicksearchbox.action.SEARCHABLE_ITEMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lb/a/a/e0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    const-class v1, Lcom/android/quicksearchbox/preferences/SearchableItemsFragment;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":android:show_fragment"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public haveVoiceSearchHintsExpired(I)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const-string v5, "voice_search_version"

    .line 3
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-wide/16 v7, 0x0

    const-string v9, "first_voice_search_hint_time"

    .line 4
    invoke-interface {v0, v9, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v7, v10, v7

    if-eqz v7, :cond_0

    if-eq p1, v6, :cond_1

    .line 5
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0, v5, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 7
    invoke-interface {p1, v9, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-wide v10, v2

    :cond_1
    sub-long/2addr v2, v10

    .line 8
    invoke-static {}, Lb/a/a/m;->s()J

    move-result-wide v5

    cmp-long p1, v2, v5

    if-lez p1, :cond_2

    return v1

    :cond_2
    return v4

    :cond_3
    return v1
.end method

.method public isCorpusEnabled(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v0

    .line 2
    invoke-static {p1}, Lb/a/a/e0;->e(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lb/a/a/e0;->c(Lcom/android/quicksearchbox/Corpus;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFirstBootQSB()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FIRST_BOOT_QSB"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstUseSearch()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_first_use_status"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetVoiceSearchHintFirstSeenTime()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "first_voice_search_hint_time"

    invoke-virtual {p0, v2, v0, v1}, Lb/a/a/e0;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public savePreSearchKeyBoardType(I)V
    .locals 1

    const-string v0, "search_pre_keyboard_type"

    .line 1
    invoke-virtual {p0, v0, p1}, Lb/a/a/e0;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public setSearchBaseDomain(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "search_base_domain"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p1, "search_base_domain_apply_time"

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUseGoogleCom(Z)V
    .locals 1

    const-string v0, "use_google_com"

    .line 1
    invoke-virtual {p0, v0, p1}, Lb/a/a/e0;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldUseGoogleCom()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/a/a/e0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_google_com"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateFirstBootQSBStatus(Z)V
    .locals 1

    const-string v0, "FIRST_BOOT_QSB"

    .line 1
    invoke-virtual {p0, v0, p1}, Lb/a/a/e0;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateFirstUseStatus(Z)V
    .locals 1

    const-string v0, "search_first_use_status"

    .line 1
    invoke-virtual {p0, v0, p1}, Lb/a/a/e0;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public upgradeSettingsIfNeeded()V
    .locals 0

    return-void
.end method
