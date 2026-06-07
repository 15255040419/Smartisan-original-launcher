.class public Lb/a/a/x0;
.super Ljava/lang/Object;
.source "SuggestionUtils.java"


# direct methods
.method public static a(Landroid/net/Uri;)Landroid/content/ComponentName;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applications"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x0

    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x1

    .line 42
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 43
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 44
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/android/quicksearchbox/SuggestionCursor;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 8

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 7
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 8
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    if-eqz v1, :cond_1

    const-string v6, "content://com.android.settings.SearchSuggestionProvider/"

    .line 9
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    const/4 v6, 0x1

    const-string v7, "from_search"

    .line 12
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "user_query"

    .line 13
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_2

    const-string v3, "query"

    .line 14
    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz v4, :cond_3

    const-string v2, "intent_extra_data_key"

    .line 15
    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz p1, :cond_4

    const-string v2, "app_data"

    .line 16
    invoke-virtual {v5, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 17
    :cond_4
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.TNTSearchActivity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SETTING"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    new-instance p1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.settingitemsprovider.SettingItemsLauncher"

    invoke-direct {p1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 20
    :cond_5
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NOTE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 22
    new-instance p1, Landroid/content/ComponentName;

    const-string v2, "com.smartisanos.notes"

    const-string v3, "com.smartisanos.notes.ShowGlobalSearchResultActivity"

    invoke-direct {p1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 23
    :cond_6
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    if-eqz v1, :cond_a

    const-string p1, "content://applications/applications/"

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 25
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/x0;->a(Landroid/net/Uri;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 26
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 27
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 28
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 29
    :cond_7
    invoke-static {p0}, Lb/a/a/x0;->c(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, "com.smartisan.action.VIEW_FOLDER"

    .line 30
    invoke-virtual {v5, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    new-instance p0, Landroid/content/ComponentName;

    const-string p1, "com.smartisanos.filemanager"

    const-string v0, "com.smartisan.filemanager.FileBrowserActivity"

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 32
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, "path"

    invoke-virtual {v5, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 35
    :cond_9
    invoke-static {p0}, Lb/a/a/x0;->e(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 36
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_a
    :goto_2
    return-object v5
.end method

.method public static a(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/x0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/x0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/x0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/x0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/x0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/x0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/x0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/x0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const-string v0, "://"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x3

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2f

    .line 4
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static b(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.calendar"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2
    instance-of v1, p0, Lb/a/a/h0;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast p0, Lb/a/a/h0;

    invoke-virtual {p0}, Lb/a/a/h0;->e()Landroid/app/SearchableInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.smartisaos.fts"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static d(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.mms"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2
    instance-of v1, p0, Lb/a/a/h0;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast p0, Lb/a/a/h0;

    invoke-virtual {p0}, Lb/a/a/h0;->e()Landroid/app/SearchableInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.smartisanos.music.SearchSuggestionProvider"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method
