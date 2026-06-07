.class public Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;
.super Lcom/android/quicksearchbox/ui/DefaultSuggestionView;
.source "ApplicationSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/ApplicationSuggestionView$c;,
        Lcom/android/quicksearchbox/ui/ApplicationSuggestionView$b;
    }
.end annotation


# static fields
.field public static final n:Landroid/net/Uri;


# instance fields
.field public j:Landroid/widget/TextView;

.field public k:Landroid/content/Context;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.smartisanos.launcher.exportprovider"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->n:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->k:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->k:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->k:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->m:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "key_pkg_arraylist"

    .line 7
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->n:Landroid/net/Uri;

    const-string v3, "get_folder_title_method"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "key_folder_title_arraylist"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    :cond_1
    return-object v1
.end method

.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->j:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->k:Landroid/content/Context;

    invoke-static {p2}, Lb/a/a/n1/h0;->l(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->m:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->l:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->j:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->l:Ljava/lang/String;

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->m:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView$c;

    invoke-direct {v0, p0, p2}, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView$c;-><init>(Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;Lcom/android/quicksearchbox/ui/ApplicationSuggestionView$a;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->onFinishInflate()V

    const v0, 0x7f0800ba

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->j:Landroid/widget/TextView;

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView;->m:Ljava/lang/String;

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method
