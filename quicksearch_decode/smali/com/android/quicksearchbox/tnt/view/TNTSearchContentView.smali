.class public Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;
.super Landroid/widget/FrameLayout;
.source "TNTSearchContentView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$b;,
        Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$c;,
        Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$g<",
            "Lb/a/a/l1/c$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Lb/a/a/l1/c;

.field public e:Lcom/android/quicksearchbox/Corpus;

.field public f:Landroid/widget/EditText;

.field public g:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ld/j;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "TNTSearchContentView"

    .line 3
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b:Ljava/lang/String;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d()V

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;JI)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;JI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a:Z

    return p0
.end method

.method public static final synthetic c(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b:Ljava/lang/String;

    return-object p0
.end method

.method private final getActivity()Lcom/android/quicksearchbox/tnt/TNTSearchActivity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getCorpora()Lcom/android/quicksearchbox/Corpora;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    const-string v1, "QsbApplication.get(context)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/b0;->p()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    const-string v1, "QsbApplication.get(context).corpora"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "suggestionsAdapter"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final setCorpus(Lcom/android/quicksearchbox/Corpus;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->e:Lcom/android/quicksearchbox/Corpus;

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->f()Lcom/android/quicksearchbox/Promoter;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setPromoter(Lcom/android/quicksearchbox/Promoter;)V

    return-void

    :cond_0
    const-string p1, "suggestionsAdapter"

    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->h:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->h:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/Corpora;->getCorpus(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown corpus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final a()V
    .locals 2

    .line 15
    invoke-static {}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->getInstance()Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->clearObserverAndReceivers(Landroid/content/Context;)V

    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    iget-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forwarding key to query box: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->f:Landroid/widget/EditText;

    const/4 v0, 0x0

    const-string v1, "searchEditor"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->f:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_2
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "mTNTSuggestionsListAdapter"

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/a/a/l1/c;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_1
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lb/a/a/l1/c;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;JI)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;JI)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-eq p4, v1, :cond_0

    const/16 v1, 0x54

    if-eq p4, v1, :cond_0

    const/16 v1, 0x17

    if-ne p4, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p4, 0x0

    .line 16
    invoke-interface {p1, p4, p2, p3}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionClicked(Landroid/view/View;J)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final a(Lb/a/a/y0;)[Landroid/view/inputmethod/CompletionInfo;
    .locals 9

    .line 6
    invoke-virtual {p1}, Lb/a/a/y0;->l()Lcom/android/quicksearchbox/CorpusResult;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->g()Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 10
    invoke-interface {p1, v4}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    if-eqz v2, :cond_0

    .line 11
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v5

    .line 13
    new-instance v6, Landroid/view/inputmethod/CompletionInfo;

    int-to-long v7, v4

    invoke-direct {v6, v7, v8, v4, v5}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v3, [Landroid/view/inputmethod/CompletionInfo;

    .line 14
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, [Landroid/view/inputmethod/CompletionInfo;

    return-object p1

    :cond_3
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestions(Lb/a/a/y0;)V

    return-void

    :cond_0
    const-string v0, "suggestionsAdapter"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(I)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "mTNTSuggestionsListAdapter"

    const/16 v2, 0x42

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xa0

    if-ne p1, v2, :cond_2

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lb/a/a/l1/c;->m()V

    goto :goto_2

    :cond_1
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v2, 0x13

    if-ne p1, v2, :cond_4

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lb/a/a/l1/c;->n()V

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v2, 0x14

    if-ne p1, v2, :cond_6

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lb/a/a/l1/c;->l()V

    goto :goto_2

    :cond_5
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v2, 0x10

    const/16 v3, 0x8

    if-le v3, p1, :cond_7

    goto :goto_1

    :cond_7
    if-lt v2, p1, :cond_9

    .line 5
    iget-object v2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    if-eqz v2, :cond_8

    sub-int/2addr p1, v3

    invoke-virtual {v2, p1}, Lb/a/a/l1/c;->b(I)Z

    goto :goto_2

    :cond_8
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_1
    const/16 v2, 0x99

    const/16 v3, 0x91

    if-le v3, p1, :cond_a

    goto :goto_2

    :cond_a
    if-lt v2, p1, :cond_c

    .line 6
    iget-object v2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    if-eqz v2, :cond_b

    sub-int/2addr p1, v3

    invoke-virtual {v2, p1}, Lb/a/a/l1/c;->b(I)Z

    goto :goto_2

    :cond_b
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_2
    return-void
.end method

.method public final c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/a/l1/c;->i()V

    return-void

    :cond_0
    const-string v0, "mTNTSuggestionsListAdapter"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(I)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 0

    .line 1
    invoke-static {p0}, Lb/a/a/n1/h0;->a(Landroid/view/View;)V

    return-void
.end method

.method public final e()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$g<",
            "Lb/a/a/l1/c$b;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/a/a/l1/c;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/b0;->c(Landroid/content/Context;)Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    move-result-object v2

    sget v3, Lcom/smartisanos/quicksearch/R$id;->suggestions_view:I

    invoke-virtual {p0, v3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    const-string v4, "suggestions_view"

    invoke-static {v3, v4}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v1, v2, p0, v3}, Lb/a/a/l1/c;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/ui/SuggestionViewFactory;Landroid/view/ViewGroup;Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    .line 4
    new-instance v0, Lb/a/a/m1/e;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    if-eqz v1, :cond_0

    invoke-direct {v0, v1}, Lb/a/a/m1/e;-><init>(Lb/a/a/m1/g;)V

    return-object v0

    :cond_0
    const-string v0, "mTNTSuggestionsListAdapter"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f()Lcom/android/quicksearchbox/Promoter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->b()Lcom/android/quicksearchbox/Promoter;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lb/a/a/b0;->a(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/Promoter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getSearchCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->e:Lcom/android/quicksearchbox/Corpus;

    return-object v0
.end method

.method public final getCorpusName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getMTNTSuggestionsListAdapter()Lb/a/a/l1/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mTNTSuggestionsListAdapter"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSearchCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getWebCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getSearchEditor()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "searchEditor"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSuggestions()Lb/a/a/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getSuggestions()Lb/a/a/y0;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "suggestionsAdapter"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getWebCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpora;->getWebCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b:Ljava/lang/String;

    const-string v2, "No web corpus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    const/4 v1, 0x0

    const-string v2, "suggestionsAdapter"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$g;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->c()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ld/h;

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<com.android.quicksearchbox.tnt.TNTSuggestionsListAdapter.VH>"

    invoke-direct {v0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v2}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void

    .line 5
    :cond_3
    invoke-static {v2}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b()V

    .line 2
    sget v0, Lcom/smartisanos/quicksearch/R$id;->suggestions_view:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    const-string v1, "suggestions_view"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public final j()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a()V

    .line 2
    invoke-static {}, Lb/a/a/l1/e;->a()V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b:Ljava/lang/String;

    const-string v1, "onSuggestionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->n()V

    .line 3
    invoke-direct {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getActivity()Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b:Ljava/lang/String;

    const-string v1, "registerSettingPreferenceObserverIfNeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->l()V

    :cond_3
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 2
    invoke-static {}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->getInstance()Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lb/a/a/n1/c0;->a(Lcom/android/quicksearchbox/SuggestionCursor;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v2, v0}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->registerObserverAndReceiver(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    const-string v1, "suggestionsAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v3, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$a;

    invoke-direct {v3, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$a;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)V

    invoke-interface {v0, v3}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$g;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$b;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$b;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->a(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 3
    sget v0, Lcom/smartisanos/quicksearch/R$id;->suggestions_view:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/a/a/l1/c;->j()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void

    :cond_0
    const-string v0, "mTNTSuggestionsListAdapter"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_1
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_2
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final n()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/h0;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getSuggestions()Lb/a/a/y0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(Lb/a/a/y0;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    .line 4
    iget-boolean v2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayCompletions("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/n1/h0;->c(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->f:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    return-void

    :cond_2
    const-string v0, "searchEditor"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void

    :cond_4
    const-string v0, "suggestionsAdapter"

    .line 6
    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    sget v0, Lcom/smartisanos/quicksearch/R$id;->suggestions_view:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$c;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$c;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3
    sget v0, Lcom/smartisanos/quicksearch/R$id;->suggestions_view:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    const-string v1, "suggestions_view"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$a;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$a;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->e()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 5
    sget v0, Lcom/smartisanos/quicksearch/R$id;->suggestions_view:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 6
    sget v0, Lcom/smartisanos/quicksearch/R$id;->suggestions_view:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->d(Z)V

    .line 7
    sget v0, Lcom/smartisanos/quicksearch/R$id;->suggestions_view:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    new-instance v3, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$c;

    invoke-direct {v3, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$c;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 8
    sget v0, Lcom/smartisanos/quicksearch/R$id;->suggestions_view:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    .line 9
    sget v0, Lcom/smartisanos/quicksearch/R$id;->suggestions_view:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060286

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFadingEdgeLength(I)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->g:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "visibleHandler"

    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCorpus(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCorpus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->setCorpus(Lcom/android/quicksearchbox/Corpus;)V

    return-void
.end method

.method public final setMTNTSuggestionsListAdapter(Lb/a/a/l1/c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->d:Lb/a/a/l1/c;

    return-void
.end method

.method public final setMaxPromotedSuggestions(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setMaxPromoted(I)V

    return-void

    :cond_0
    const-string p1, "suggestionsAdapter"

    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setSearchEditor(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->f:Landroid/widget/EditText;

    return-void
.end method

.method public final setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    return-void

    :cond_0
    const-string p1, "suggestionsAdapter"

    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setSuggestions(Lb/a/a/y0;)V
    .locals 1

    const-string v0, "suggestions"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lb/a/a/y0;->a()V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestions(Lb/a/a/y0;)V

    return-void

    :cond_0
    const-string p1, "suggestionsAdapter"

    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setVisibleHandler(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ld/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method
