.class public final Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;
.super Landroid/widget/LinearLayout;
.source "TNTSettingSourceView.kt"


# instance fields
.field public final a:Lb/a/a/l1/i/a;

.field public b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Lb/a/a/l1/i/a;

    invoke-direct {p2, p1}, Lb/a/a/l1/i/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a:Lb/a/a/l1/i/a;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;)Lb/a/a/l1/i/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a:Lb/a/a/l1/i/a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a()Z

    move-result p0

    return p0
.end method

.method private final setCheckBox(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_application:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_application"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_apps"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_appstore:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_appstore"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.appstore"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_setting:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_setting"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_com.android.settings/.settingitemsprovider.SettingItemsLauncher"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_note:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_note"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_com.smartisanos.notes/.ShowGlobalSearchResultActivity"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_calculator:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_calculator"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.calculator"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_text:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_text"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.document"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_image:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_image"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.image"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_music:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_music"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.audio"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_video:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_video"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.video"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 10
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_apk:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_apk"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.apk"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 11
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_zip:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_zip"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.archive"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 12
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_baidu:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_baidu"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_baidu"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 13
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_google:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_google"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_google"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_shuffler:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_shuffler"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_shuffler"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 15
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_zhihu:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_zhihu"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_zhihu"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_weibo:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_weibo"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_weibo"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 17
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_toutiao:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_toutiao"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_toutiao"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 18
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_sougou_wechat:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_sougou_wechat"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_sougou_wechat"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 19
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_sougou:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_sougou"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_sougou"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 20
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_baidu_baike:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_baidu_baike"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_baidu_baike"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 21
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_jd:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_jd"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_jd"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 22
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_360:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_360"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_360"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 23
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_twitter:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_twitter"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_twitter"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 24
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_youtube:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_youtube"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_youtube"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 25
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_taobao:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_taobao"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enable_corpus_web_taobao"

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->b:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final a(Lb/a/a/l1/i/a;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$k;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$k;-><init>(Lb/a/a/l1/i/a;)V

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->setCheckBox(Lkotlin/jvm/functions/Function1;)V

    .line 3
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_application:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$s;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$s;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_appstore:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$t;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$t;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_setting:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$u;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$u;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 6
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_note:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$v;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$v;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_calculator:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$w;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$w;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_text:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$x;

    invoke-direct {v1, p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$x;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 9
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_image:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$y;

    invoke-direct {v1, p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$y;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 10
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_music:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$z;

    invoke-direct {v1, p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$z;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 11
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_video:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$a;

    invoke-direct {v1, p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$a;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_apk:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$b;

    invoke-direct {v1, p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$b;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_zip:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$c;

    invoke-direct {v1, p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$c;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 14
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_baidu:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$d;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$d;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 15
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_sougou:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$e;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$e;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_shuffler:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$f;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$f;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 17
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_google:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$g;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$g;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 18
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_zhihu:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$h;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$h;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 19
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_weibo:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$i;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$i;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 20
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_toutiao:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$j;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$j;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 21
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_sougou_wechat:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$l;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$l;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 22
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_baidu_baike:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$m;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$m;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 23
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_jd:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$n;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$n;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 24
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_taobao:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$o;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$o;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 25
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_360:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$p;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$p;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 26
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_twitter:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$q;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$q;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 27
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_youtube:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$r;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$r;-><init>(Lb/a/a/l1/i/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 28
    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_text:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_text"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_image:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_image"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_music:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_music"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_video:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_video"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_apk:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_apk"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/smartisanos/quicksearch/R$id;->cb_file_zip:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "cb_file_zip"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final b()V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$a0;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView$a0;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;)V

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->setCheckBox(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a:Lb/a/a/l1/i/a;

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->a(Lb/a/a/l1/i/a;)V

    return-void
.end method
