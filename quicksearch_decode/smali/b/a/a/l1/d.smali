.class public final Lb/a/a/l1/d;
.super Ljava/lang/Object;
.source "TNTSuggestionsListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/l1/d$d;,
        Lb/a/a/l1/d$c;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lb/a/a/l1/d$d;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/android/quicksearchbox/tnt/QueryStartListener;

.field public final h:Landroid/os/Handler;

.field public final i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

.field public final j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

.field public final k:Lcom/android/quicksearchbox/tnt/QueryFinishListener;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/TNTSearchActivity;Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Lcom/android/quicksearchbox/tnt/QueryFinishListener;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "search_activity_view"

    invoke-static {p2, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryFinishListener"

    invoke-static {p3, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    iput-object p2, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    iput-object p3, p0, Lb/a/a/l1/d;->k:Lcom/android/quicksearchbox/tnt/QueryFinishListener;

    const-string p1, "TNTSuggestionsListener"

    .line 2
    iput-object p1, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    const-string p1, "com.smartisanos.quicksearch_web_search"

    .line 3
    iput-object p1, p0, Lb/a/a/l1/d;->d:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/a/a/l1/d;->f:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Lb/a/a/l1/d$f;

    invoke-direct {p1, p0}, Lb/a/a/l1/d$f;-><init>(Lb/a/a/l1/d;)V

    iput-object p1, p0, Lb/a/a/l1/d;->h:Landroid/os/Handler;

    .line 6
    iget-object p1, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    iput-object p1, p0, Lb/a/a/l1/d;->g:Lcom/android/quicksearchbox/tnt/QueryStartListener;

    .line 7
    iget-object p1, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    const-string p2, "search"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/SearchManager;

    .line 8
    new-instance p2, Landroid/content/ComponentName;

    const-string p3, "com.smartisanos.quicksearch"

    const-string v0, "com.android.quicksearchbox.SearchActivity"

    invoke-direct {p2, p3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p1

    .line 10
    new-instance p2, Lb/a/a/h0;

    iget-object p3, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    invoke-static {}, Lb/a/a/b0;->H()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v1

    .line 12
    invoke-direct {p2, p3, p1, v0, v1}, Lb/a/a/h0;-><init>(Landroid/content/Context;Landroid/app/SearchableInfo;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    .line 13
    new-instance p1, Lb/a/a/k;

    iget-object p3, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {p3}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object v0

    invoke-direct {p1, p3, v0, p2}, Lb/a/a/k;-><init>(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/Source;)V

    .line 14
    iget-object p2, p0, Lb/a/a/l1/d;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    new-instance p2, Lb/a/a/l1/d$a;

    invoke-direct {p2, p0}, Lb/a/a/l1/d$a;-><init>(Lb/a/a/l1/d;)V

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->setQueryListener(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;)V

    .line 16
    iget-object p1, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget p2, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    .line 17
    iget-object p2, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {p2}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object p2

    invoke-static {p2, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object p2

    const-string p3, "config"

    .line 18
    invoke-static {p2, p3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lb/a/a/m;->d()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->setMaxPromotedSuggestions(I)V

    .line 19
    new-instance p2, Lb/a/a/l1/d$c;

    invoke-direct {p2, p0}, Lb/a/a/l1/d$c;-><init>(Lb/a/a/l1/d;)V

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    .line 20
    new-instance p2, Lb/a/a/l1/d$d;

    invoke-direct {p2, p0}, Lb/a/a/l1/d$d;-><init>(Lb/a/a/l1/d;)V

    iput-object p2, p0, Lb/a/a/l1/d;->e:Lb/a/a/l1/d$d;

    .line 21
    new-instance p2, Lb/a/a/l1/d$b;

    invoke-direct {p2, p0}, Lb/a/a/l1/d$b;-><init>(Lb/a/a/l1/d;)V

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->setVisibleHandler(Lkotlin/jvm/functions/Function0;)V

    .line 22
    invoke-virtual {p0}, Lb/a/a/l1/d;->b()Lcom/android/quicksearchbox/Corpora;

    move-result-object p1

    iget-object p2, p0, Lb/a/a/l1/d;->e:Lb/a/a/l1/d$d;

    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/Corpora;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void

    .line 23
    :cond_0
    new-instance p1, Ld/h;

    const-string p2, "null cannot be cast to non-null type android.app.SearchManager"

    invoke-direct {p1, p2}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/TNTSearchActivity;
    .locals 0

    .line 4
    iget-object p0, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    return-object p0
.end method

.method public static final synthetic a(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method

.method public static final synthetic a(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;JZ)V
    .locals 0

    .line 3
    invoke-virtual/range {p0 .. p5}, Lb/a/a/l1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;JZ)V

    return-void
.end method

.method public static final synthetic a(Lb/a/a/l1/d;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->a(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public static final synthetic a(Lb/a/a/l1/d;Ljava/util/ArrayList;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/a/a/l1/d;->a(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lb/a/a/l1/d;)Lb/a/a/l1/d$d;
    .locals 0

    .line 2
    iget-object p0, p0, Lb/a/a/l1/d;->e:Lb/a/a/l1/d$d;

    return-object p0
.end method

.method public static final synthetic b(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->b(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method

.method public static final synthetic c(Lb/a/a/l1/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/d;->c:I

    return p0
.end method

.method public static final synthetic c(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->d(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lb/a/a/l1/d;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/l1/d;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic d(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->e(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method

.method public static final synthetic e(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    return-object p0
.end method

.method public static final synthetic e(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->f(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method

.method public static final synthetic f(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->g(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method

.method public static final synthetic g(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->h(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method

.method public static final synthetic h(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 3

    .line 12
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    const-string v1, "suggestion.suggestionSource"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "com.android.settings/.settingitemsprovider.SettingItemsLauncher"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object p1

    const-string v0, "is_switch"

    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v1, "SETTING_SWITCH"

    goto/16 :goto_1

    :cond_1
    const-string v1, "SETTING"

    goto :goto_1

    :sswitch_1
    const-string p1, "com.smartisanos.notes/.ShowGlobalSearchResultActivity"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v1, "NOTE"

    goto :goto_1

    :sswitch_2
    const-string p1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.video"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :sswitch_3
    const-string p1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :sswitch_4
    const-string p1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :sswitch_5
    const-string p1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.apk"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :sswitch_6
    const-string p1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.document"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :sswitch_7
    const-string p1, "com.smartisanos.quicksearch/com.android.quicksearchbox.SearchActivity"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v1, "APPLICATION"

    goto :goto_1

    :sswitch_8
    const-string v2, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.TNTSearchActivity"

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v1, p1

    goto :goto_1

    :sswitch_9
    const-string p1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.archive"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const-string v1, "FILE"

    :cond_2
    :goto_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60aeaa61 -> :sswitch_9
        -0x2877415e -> :sswitch_8
        -0x1fa5a12e -> :sswitch_7
        -0x1b7d0822 -> :sswitch_6
        -0x9871a87 -> :sswitch_5
        0x3bd7a3f3 -> :sswitch_4
        0x3c44b178 -> :sswitch_3
        0x3cfa1c98 -> :sswitch_2
        0x5313d81d -> :sswitch_1
        0x7bdba9af -> :sswitch_0
    .end sparse-switch
.end method

.method public final a()V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lb/a/a/l1/d;->j()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/ShortcutRepository;->clearHistory()V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lb/a/a/l1/d;->a(Z)V

    const-string v0, "A170005"

    .line 8
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;Z)V
    .locals 3

    .line 28
    iget-boolean v0, p0, Lb/a/a/l1/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 29
    :try_start_0
    iget-object p2, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    const/4 v0, -0x1

    invoke-static {p2, p1, v0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 30
    :cond_2
    iget-object p2, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 31
    iget-object v0, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final a(Lb/a/a/y0;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->setSuggestions(Lb/a/a/y0;)V

    return-void
.end method

.method public final a(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)V
    .locals 1

    .line 32
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.WEB_SEARCH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "query"

    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "smartisan_search"

    .line 34
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "create_new_tab"

    .line 35
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.android.browser.SOURCE_PACKAGE_NAME"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lb/a/a/l1/d;->d:Ljava/lang/String;

    const-string v0, "com.android.browser.SOURCE_POSITION"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(Intent.ACTION_WEB\u2026TION\", REPORT_WEB_SEARCH)"

    invoke-static {p1, p2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lb/a/a/l1/d;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :cond_0
    :try_start_0
    iget-object p2, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "com.android.browser"

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p0, p1, p2}, Lb/a/a/l1/d;->a(Landroid/content/Intent;Z)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 3

    .line 20
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p2

    const-string v0, "suggestions.suggestionSource"

    invoke-static {p2, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "is_switch"

    .line 22
    invoke-interface {v0, v2}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v2, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 23
    :cond_0
    iget-object v0, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->g()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Lb/a/a/x0;->a(Lcom/android/quicksearchbox/SuggestionCursor;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.android.providers.applications/.ApplicationLauncher"

    .line 25
    invoke-static {v0, p2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 26
    invoke-virtual {p0, p1, p2}, Lb/a/a/l1/d;->a(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0, p1, v1}, Lb/a/a/l1/d;->a(Landroid/content/Intent;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result v1

    .line 68
    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    const-string v1, "suggestions"

    .line 69
    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    const-string v2, "suggestions.suggestionSource"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.contacts/.activities.ContactDetailActivity"

    .line 70
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lb/a/a/l1/d;->f()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v5

    invoke-virtual {p0}, Lb/a/a/l1/d;->d()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x4

    move-wide v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 72
    invoke-virtual {p0}, Lb/a/a/l1/d;->j()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p3

    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 73
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 74
    iget-object p2, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {p2}, Lcom/android/quicksearchbox/BaseActivity;->b()Lb/a/a/m1/c;

    move-result-object p2

    new-instance p3, Lb/a/a/l1/d$e;

    invoke-direct {p3, p0, p1}, Lb/a/a/l1/d$e;-><init>(Lb/a/a/l1/d;Landroid/net/Uri;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lb/a/a/m1/c;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;",
            "Landroid/view/View;",
            "JZ)V"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p3, p4}, Lb/a/a/l1/d;->c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p3

    .line 45
    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    .line 46
    invoke-interface {p3, p1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 47
    invoke-static {}, Lb/a/a/n1/d0;->b()Lb/a/a/n1/d0;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 48
    iget-object p4, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {p4}, Lcom/android/quicksearchbox/BaseActivity;->b()Lb/a/a/m1/c;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p1, p2, p3, p4, p5}, Lb/a/a/n1/d0;->a(Landroid/view/View;Lcom/android/quicksearchbox/Suggestion;Lb/a/a/m1/c;Z)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p1, p4}, Lb/a/a/n1/d0;->a(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 50
    iget-object p4, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {p4}, Lcom/android/quicksearchbox/BaseActivity;->b()Lb/a/a/m1/c;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lb/a/a/n1/d0;->a(Landroid/view/View;Lcom/android/quicksearchbox/Suggestion;Lb/a/a/m1/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;>;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lb/a/a/l1/d;->c()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/b0;->q()Lcom/android/quicksearchbox/CorpusRanker;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/l1/d;->h:Landroid/os/Handler;

    invoke-static {v1, p1}, Lb/a/a/n1/k;->a(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)Lcom/android/quicksearchbox/util/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/CorpusRanker;->getCorporaInAll(Lcom/android/quicksearchbox/util/Consumer;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {p0}, Lb/a/a/l1/d;->h()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "A170061"

    .line 57
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lb/a/a/l1/d;->b(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/b0;->B()Lcom/android/quicksearchbox/SuggestionsProvider;

    move-result-object v2

    .line 61
    iget-object v0, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {v0}, Lb/a/a/n1/h0;->k(Landroid/content/Context;)Z

    move-result v7

    iget-object v0, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v8

    iget-object v9, p0, Lb/a/a/l1/d;->k:Lcom/android/quicksearchbox/tnt/QueryFinishListener;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 62
    invoke-interface/range {v2 .. v9}, Lcom/android/quicksearchbox/SuggestionsProvider;->getSuggestions(Ljava/lang/String;Ljava/util/List;ZIZZLcom/android/quicksearchbox/tnt/QueryFinishListener;)Lb/a/a/y0;

    move-result-object p1

    const-string p2, "QsbApplication.get(activ\u2026ty), queryFinishListener)"

    invoke-static {p1, p2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lb/a/a/l1/d;->a(Lb/a/a/y0;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .line 51
    iget-object v0, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 9
    iget-object v0, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed query from history, success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lb/a/a/l1/d;->c(Z)V

    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    const v0, 0x7f100121

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 5

    .line 75
    invoke-static {}, Lb/c/a/a/d;->c()Lb/c/a/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/l1/d;->g()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lb/c/a/a/d;->b(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-boolean v1, p0, Lb/a/a/l1/d;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Search clicked, query="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 78
    :cond_1
    invoke-virtual {p0}, Lb/a/a/l1/d;->h()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {p0}, Lb/a/a/l1/d;->f()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {p0}, Lb/a/a/l1/d;->c()Lcom/android/quicksearchbox/Corpus;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v2, v3, p1, v4}, Lcom/android/quicksearchbox/Logger;->logSearch(Lcom/android/quicksearchbox/Corpus;II)V

    .line 80
    invoke-virtual {p0, v1, v0}, Lb/a/a/l1/d;->a(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public final a(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_2
    if-gez v1, :cond_3

    move v0, v3

    :cond_3
    if-eqz v0, :cond_4

    const p1, 0x7f1000f3

    .line 84
    invoke-static {p1}, Lb/a/a/n1/g0;->a(I)V

    :cond_4
    return v0
.end method

.method public final b()Lcom/android/quicksearchbox/Corpora;
    .locals 2

    .line 28
    iget-object v0, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/b0;->p()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity).corpora"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    .line 19
    invoke-virtual {p0}, Lb/a/a/l1/d;->i()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchSettings;->isFirstUseSearch()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    const-string v3, "upload first use keyboard event"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_0

    move v2, v1

    .line 21
    :cond_0
    invoke-static {v2}, Lb/a/a/n1/d$v;->a(I)V

    .line 22
    invoke-virtual {p0}, Lb/a/a/l1/d;->i()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/SearchSettings;->updateFirstUseStatus(Z)V

    .line 23
    invoke-virtual {p0}, Lb/a/a/l1/d;->i()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SearchSettings;->savePreSearchKeyBoardType(I)V

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lb/a/a/l1/d;->i()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchSettings;->getPreSearchKeyBoardType()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-eq v0, p1, :cond_4

    .line 25
    :cond_2
    iget-object v0, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    const-string v3, "keyboard changed, upload event"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 26
    :goto_0
    invoke-static {v1}, Lb/a/a/n1/d$v;->a(I)V

    .line 27
    invoke-virtual {p0}, Lb/a/a/l1/d;->i()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SearchSettings;->savePreSearchKeyBoardType(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final b(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lb/a/a/l1/d;->c(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lb/a/a/l1/d;->a(Z)V

    return-void
.end method

.method public final b(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-boolean v0, p0, Lb/a/a/l1/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Used suggestion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    invoke-virtual {p0}, Lb/a/a/l1/d;->f()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v5

    invoke-virtual {p0}, Lb/a/a/l1/d;->d()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x2

    move-wide v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 8
    invoke-virtual {p0}, Lb/a/a/l1/d;->j()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p3

    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 8

    .line 9
    sget-boolean v0, Lb/a/a/c1/c;->e:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSuggestions() fromResumed?="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    iget-object v0, p0, Lb/a/a/l1/d;->g:Lcom/android/quicksearchbox/tnt/QueryStartListener;

    invoke-interface {v0}, Lcom/android/quicksearchbox/tnt/QueryStartListener;->onQueryStart()V

    .line 12
    invoke-virtual {p0}, Lb/a/a/l1/d;->g()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    move v5, v1

    :goto_0
    if-gt v1, v4, :cond_6

    if-nez v5, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v4

    .line 14
    :goto_1
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-gt v6, v7, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    if-nez v5, :cond_4

    if-nez v6, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v4, v2

    .line 15
    invoke-interface {v0, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {v1}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v1

    const-string v2, "QsbApplication.get(activity)"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lb/a/a/b0;->z()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->cancelPendingTasks()V

    .line 18
    new-instance v1, Lb/a/a/l1/d$i;

    invoke-direct {v1, p0, v0, p1}, Lb/a/a/l1/d$i;-><init>(Lb/a/a/l1/d;Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lb/a/a/l1/d;->a(Lcom/android/quicksearchbox/util/Consumer;)V

    return-void
.end method

.method public final c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)",
            "Lb/a/a/w0;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1, p2, p3}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getSuggestion(J)Lb/a/a/w0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p3

    if-nez p2, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-interface {p2}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v1

    if-ltz p3, :cond_2

    if-lt p3, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p2, p3}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    return-object p1

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid suggestion position "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", count = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public final c()Lcom/android/quicksearchbox/Corpus;
    .locals 2

    .line 18
    iget-object v0, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 3

    .line 9
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lb/a/a/l1/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing suggestion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from shortcuts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    invoke-virtual {p0}, Lb/a/a/l1/d;->j()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/quicksearchbox/ShortcutRepository;->removeFromHistory(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    :cond_1
    return-void
.end method

.method public final c(Z)V
    .locals 5

    .line 12
    sget-boolean v0, Lb/a/a/c1/c;->e:Z

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    const-string v1, "updateSuggestionsBuffered()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 14
    invoke-static {}, Lb/a/a/m;->r()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    .line 15
    :goto_0
    iget-object p1, p0, Lb/a/a/l1/d;->h:Landroid/os/Handler;

    iget v4, p0, Lb/a/a/l1/d;->c:I

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    iget-object p1, p0, Lb/a/a/l1/d;->h:Landroid/os/Handler;

    iget v4, p0, Lb/a/a/l1/d;->c:I

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lb/a/a/l1/d;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getSuggestions()Lb/a/a/y0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/a/y0;->g()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)Z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 5
    iget-boolean v1, p0, Lb/a/a/l1/d;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching suggestion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {v2}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lb/a/a/i;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v2

    const-string v3, "suggestion.suggestionSource"

    invoke-static {v2, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/android/quicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "INTERNAL_SEARCHABLE_LABEL_APPSTORE"

    invoke-static {v2, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v9

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lb/a/a/l1/d;->a(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 10
    invoke-virtual {p1}, Lb/a/a/i;->getSuggestionText1()Ljava/lang/String;

    move-result-object v4

    const-string v5, "suggest_text_1"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lb/a/a/i;->getSuggestionText2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "suggest_text_2"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lb/a/a/i;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v4

    const-string v5, "suggest_icon_1"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "suggest_intent_action"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lb/a/a/i;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "suggest_intent_data"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "suggest_access_time"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "suggest_intent_extra_data"

    .line 16
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/quicksearchbox/data/QsbProvider;->f:Landroid/net/Uri;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 18
    :cond_1
    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    .line 19
    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 20
    instance-of v2, v1, Lb/a/a/w;

    if-eqz v2, :cond_6

    .line 21
    move-object v2, v1

    check-cast v2, Lb/a/a/w;

    invoke-virtual {v2}, Lb/a/a/w;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    iget-object p2, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {v2, p2}, Lb/a/a/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    .line 23
    invoke-virtual {v2, p1, p2}, Lb/a/a/w;->a(II)V

    return v9

    .line 24
    :cond_2
    invoke-virtual {v2}, Lb/a/a/w;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    invoke-virtual {p0}, Lb/a/a/l1/d;->a()V

    return v9

    .line 26
    :cond_3
    invoke-virtual {v2}, Lb/a/a/w;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 27
    invoke-virtual {p0, v0}, Lb/a/a/l1/d;->a(I)Z

    const-string p1, "A170006"

    .line 28
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    return v9

    .line 29
    :cond_4
    invoke-virtual {v2}, Lb/a/a/w;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string p1, "A170007"

    .line 30
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    return v9

    .line 31
    :cond_5
    invoke-virtual {v2}, Lb/a/a/w;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "A170031"

    .line 32
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->i()V

    return v9

    .line 34
    :cond_6
    invoke-static {v1}, Lb/a/a/x0;->c(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v2

    const-string v10, "suggestions"

    if-eqz v2, :cond_7

    .line 35
    new-instance v2, Ljava/io/File;

    invoke-static {v1, v10}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 37
    iget-object p1, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    const p2, 0x7f1000b3

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v9

    .line 38
    :cond_7
    invoke-virtual {p0}, Lb/a/a/l1/d;->f()Lcom/android/quicksearchbox/Logger;

    move-result-object v3

    invoke-virtual {p0}, Lb/a/a/l1/d;->d()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    move-wide v4, p2

    move-object v6, v1

    invoke-interface/range {v3 .. v8}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 39
    invoke-virtual {p0}, Lb/a/a/l1/d;->j()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 40
    iget-object p2, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->b()V

    .line 41
    invoke-static {v1, v10}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/quicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-interface {v1}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 42
    :cond_8
    invoke-static {p1}, Lb/a/a/n1/d$j;->d(I)V

    .line 43
    :cond_9
    invoke-virtual {p0, v1, p1}, Lb/a/a/l1/d;->a(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    return v9

    :cond_a
    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    .line 5
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    iget-object v1, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "activity.packageManager"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x10000

    .line 7
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "info.activityInfo.packageName"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "smartisanos"

    invoke-static {v4, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 10
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "com.android.browser"

    :goto_2
    return-object v0
.end method

.method public final e(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result v1

    .line 14
    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    const-string v1, "suggestions"

    .line 15
    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 17
    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "musicUri"

    .line 18
    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "musicUri.lastPathSegment"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    invoke-virtual {p0}, Lb/a/a/l1/d;->f()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v5

    invoke-virtual {p0}, Lb/a/a/l1/d;->d()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x3

    move-wide v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 20
    invoke-virtual {p0}, Lb/a/a/l1/d;->j()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p3

    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    :catch_0
    :cond_3
    return-void
.end method

.method public final f()Lcom/android/quicksearchbox/Logger;
    .locals 2

    .line 10
    iget-object v0, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/b0;->t()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity).logger"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lb/a/a/l1/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/l1/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query refine clicked, pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lb/a/a/i;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lb/a/a/l1/d;->f()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v5

    invoke-virtual {p0}, Lb/a/a/l1/d;->d()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x1

    move-wide v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p1, p2}, Lb/a/a/l1/d;->a(Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {p0, p2}, Lb/a/a/l1/d;->b(Z)V

    :cond_2
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p2

    const-string p3, "suggestion.cursor"

    invoke-static {p2, p3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lb/a/a/l1/d;->b(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    :cond_0
    return-void
.end method

.method public final h()Lcom/android/quicksearchbox/Corpus;
    .locals 2

    .line 12
    iget-object v0, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getSearchCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/a/a/i;->getSuggestionText1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "suggestion.suggestionText1"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100120

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000f7

    .line 7
    new-instance v2, Lb/a/a/l1/d$g;

    invoke-direct {v2, p0, p1, p2, p3}, Lb/a/a/l1/d$g;-><init>(Lb/a/a/l1/d;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f100061

    const/4 p3, 0x0

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public final i()Lcom/android/quicksearchbox/SearchSettings;
    .locals 2

    .line 11
    iget-object v0, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity).settings"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l1/d;->c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result v1

    .line 4
    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    const-string v1, "suggestions"

    .line 5
    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    const-string v2, "suggestions.suggestionSource"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.contacts/.activities.ContactDetailActivity"

    .line 6
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lb/a/a/l1/d;->f()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v5

    invoke-virtual {p0}, Lb/a/a/l1/d;->d()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x3

    move-wide v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 8
    invoke-virtual {p0}, Lb/a/a/l1/d;->j()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p3

    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 9
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {p2}, Lcom/android/quicksearchbox/BaseActivity;->b()Lb/a/a/m1/c;

    move-result-object p2

    new-instance p3, Lb/a/a/l1/d$h;

    invoke-direct {p3, p0, p1}, Lb/a/a/l1/d$h;-><init>(Lb/a/a/l1/d;Landroid/net/Uri;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lb/a/a/m1/c;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    :cond_1
    return-void
.end method

.method public final j()Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/l1/d;->i:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/b0;->y()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity).shortcutRepository"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/l1/d;->b()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/l1/d;->e:Lb/a/a/l1/d$d;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/Corpora;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/l1/d;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->h()V

    return-void
.end method
