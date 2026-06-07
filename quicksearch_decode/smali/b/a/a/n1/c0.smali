.class public Lb/a/a/n1/c0;
.super Ljava/lang/Object;
.source "SettingItemUtils.java"


# direct methods
.method public static a(Lcom/android/quicksearchbox/SuggestionCursor;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lsmartisanos/app/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 23
    :cond_0
    invoke-static {p1}, Lb/a/a/n1/c0;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 25
    invoke-interface {p0, v2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 26
    invoke-static {p0, v1, p1}, Lb/a/a/n1/c0;->a(Lcom/android/quicksearchbox/Suggestion;ZLandroid/content/Context;)Lsmartisanos/app/settings/search/SearchResultItem;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Lcom/android/quicksearchbox/Suggestion;ZLandroid/content/Context;)Lsmartisanos/app/settings/search/SearchResultItem;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v2

    .line 2
    instance-of v3, v2, Lb/a/a/h0;

    if-nez v3, :cond_1

    return-object v1

    .line 3
    :cond_1
    check-cast v2, Lb/a/a/h0;

    .line 4
    invoke-virtual {v2}, Lb/a/a/h0;->e()Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.SearchSuggestionProvider"

    .line 5
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 6
    :cond_2
    invoke-interface/range {p0 .. p0}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    .line 7
    :cond_3
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v3, "icon_id"

    .line 9
    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 10
    invoke-interface/range {p0 .. p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-interface/range {p0 .. p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v5

    const-string v3, "switch_table"

    .line 12
    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "switch_key"

    .line 13
    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "special_key"

    .line 14
    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "is_switch"

    .line 15
    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "def_value"

    .line 16
    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "item_path_1"

    .line 17
    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "item_path_2"

    .line 18
    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v2, p1

    move-object/from16 v3, p2

    .line 19
    invoke-static {v2, v0, v3}, Lb/a/a/n1/c0;->a(ZLcom/android/quicksearchbox/Suggestion;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 20
    :cond_4
    new-instance v0, Lsmartisanos/app/settings/search/SearchResultItem;

    move-object v3, v0

    invoke-direct/range {v3 .. v15}, Lsmartisanos/app/settings/search/SearchResultItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "voice_input"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(ZLcom/android/quicksearchbox/Suggestion;Landroid/content/Context;)Z
    .locals 3

    .line 28
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p0, :cond_1

    if-eqz p2, :cond_1

    const-string v1, "switch_table"

    .line 29
    invoke-interface {p2, v1}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "switch_key"

    .line 30
    invoke-interface {p2, v2}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "global"

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "voice_input_web"

    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "voice_input_local"

    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    return v0

    .line 34
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_3

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "setting.RecycleBinActivity;i.BubbleDirection="

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.smartisanos.sara.setting.DrawerSettingActivity"

    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.smartisanos.ideapills.sync.share.ShareMainActivity"

    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v0

    .line 39
    :cond_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p0, p2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "com.android.settings/com.android.settings.MasterClearActivity/master_clear_for_crypt_keeper=true"

    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
