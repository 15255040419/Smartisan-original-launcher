.class public final Lb/a/a/l1/i/a;
.super La/l/h;
.source "TNTSettingSourceViewModel.kt"


# instance fields
.field public final a:Lb/a/a/e0;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, La/l/h;-><init>()V

    iput-object p1, p0, Lb/a/a/l1/i/a;->d:Landroid/content/Context;

    .line 2
    iget-object p1, p0, Lb/a/a/l1/i/a;->d:Landroid/content/Context;

    invoke-static {p1}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object p1

    const-string v0, "QsbApplication.get(context)"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lb/a/a/e0;

    iput-object p1, p0, Lb/a/a/l1/i/a;->a:Lb/a/a/e0;

    .line 3
    iget-object p1, p0, Lb/a/a/l1/i/a;->d:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "TNTSearchSettings"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/l1/i/a;->b:Landroid/content/SharedPreferences;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    .line 5
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_apps"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.appstore"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_com.android.settings/.settingitemsprovider.SettingItemsLauncher"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.document"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.image"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.audio"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.video"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.apk"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.archive"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_com.smartisanos.notes/.ShowGlobalSearchResultActivity"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.calculator"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_web_baidu"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable_corpus_web_sougou"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable_corpus_web_shuffler"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable_corpus_web_google"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable_corpus_web_zhihu"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable_corpus_web_weibo"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable_corpus_web_toutiao"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable_corpus_web_sougou_wechat"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable_corpus_web_baidu_baike"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable_corpus_web_jd"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable_corpus_web_360"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable_corpus_web_twitter"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enable_corpus_web_youtube"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_corpus_web_taobao"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type com.android.quicksearchbox.SearchSettingsImpl"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lb/a/a/l1/i/a;->a:Lb/a/a/e0;

    invoke-virtual {v0, p1, p2}, Lb/a/a/e0;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZLjava/lang/Boolean;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lb/a/a/l1/i/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p3, :cond_0

    .line 3
    iget-object p1, p0, Lb/a/a/l1/i/a;->a:Lb/a/a/e0;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string p3, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.TNTSearchActivity"

    invoke-virtual {p1, p3, p2}, Lb/a/a/e0;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lb/a/a/l1/i/a;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lb/a/a/l1/i/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
