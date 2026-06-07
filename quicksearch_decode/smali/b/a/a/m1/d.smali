.class public Lb/a/a/m1/d;
.super Ljava/lang/Object;
.source "DefaultSuggestionViewFactory.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionViewFactory;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/quicksearchbox/ui/SuggestionViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

.field public d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb/a/a/m1/d;->b:Ljava/util/LinkedList;

    .line 3
    iput-object p1, p0, Lb/a/a/m1/d;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView$a;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/a/m1/d;->c:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 6
    new-instance v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionApplicationView$a;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionApplicationView$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 7
    new-instance v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$c;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 8
    new-instance v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView$a;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 9
    new-instance v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$b;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 10
    new-instance v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$d;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 11
    new-instance v0, Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$b;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$a;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/a/m1/d;->c:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 13
    new-instance v0, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView$b;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/ApplicationSuggestionView$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 14
    new-instance v0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView$b;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 15
    new-instance v0, Lcom/android/quicksearchbox/ui/MailSuggestionView$a;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/MailSuggestionView$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 16
    new-instance v0, Lcom/android/quicksearchbox/ui/ContactSuggestionView$a;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/ContactSuggestionView$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 17
    new-instance v0, Lcom/android/quicksearchbox/ui/SpecialSuggestionView$a;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/SpecialSuggestionView$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 18
    new-instance v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$d;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 19
    new-instance v0, Lcom/android/quicksearchbox/ui/MusicSuggestionView$a;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/MusicSuggestionView$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 20
    new-instance v0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView$a;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/FullTextSuggestionView$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "NOTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "FILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "SETTING_SWITCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "SETTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lb/a/a/m1/d;->c:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lb/a/a/m1/d;->c:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    new-instance v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$c;

    iget-object v1, p0, Lb/a/a/m1/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/a/m1/f;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    new-instance v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView$a;

    iget-object v1, p0, Lb/a/a/m1/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/a/m1/f;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    new-instance v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionApplicationView$a;

    iget-object v1, p0, Lb/a/a/m1/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionApplicationView$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/a/m1/f;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ed565d0 -> :sswitch_4
        -0x4134c7dd -> :sswitch_3
        -0x230866d0 -> :sswitch_2
        0x20ed7c -> :sswitch_1
        0x24a7f2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getSuggestionViewTypes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/m1/d;->d:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/a/a/m1/d;->d:Ljava/util/HashSet;

    .line 3
    iget-object v0, p0, Lb/a/a/m1/d;->d:Ljava/util/HashSet;

    iget-object v1, p0, Lb/a/a/m1/d;->c:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getSuggestionViewTypes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p0, Lb/a/a/m1/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 5
    iget-object v2, p0, Lb/a/a/m1/d;->d:Ljava/util/HashSet;

    invoke-interface {v1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getSuggestionViewTypes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/d;->d:Ljava/util/HashSet;

    return-object v0
.end method

.method public getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    .line 2
    iget-object v0, p0, Lb/a/a/m1/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 3
    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1, p1, p2, p3}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lb/a/a/m1/d;->c:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 6
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lb/a/a/h0;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Lb/a/a/h0;

    .line 9
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.TNTSearchActivity"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/a/a/m1/d;->a(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 14
    :cond_1
    iget-object v0, p0, Lb/a/a/m1/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 15
    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 17
    :cond_3
    iget-object v0, p0, Lb/a/a/m1/d;->c:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/m1/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 2
    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lb/a/a/m1/d;->c:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
