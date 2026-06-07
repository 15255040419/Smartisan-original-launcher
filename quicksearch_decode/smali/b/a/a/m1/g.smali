.class public abstract Lb/a/a/m1/g;
.super Ljava/lang/Object;
.source "SuggestionsAdapterBase.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionsAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/m1/g$d;,
        Lb/a/a/m1/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
        "TA;>;"
    }
.end annotation


# instance fields
.field public a:Landroid/database/DataSetObserver;

.field public b:Lcom/android/quicksearchbox/Promoter;

.field public c:I

.field public d:Lcom/android/quicksearchbox/SuggestionCursor;

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

.field public g:Lb/a/a/y0;

.field public h:Lb/a/a/y0;

.field public i:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

.field public j:Landroid/view/View$OnFocusChangeListener;

.field public k:Z

.field public l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    .line 3
    new-instance v0, Lb/a/a/m1/g$a;

    invoke-direct {v0, p0}, Lb/a/a/m1/g$a;-><init>(Lb/a/a/m1/g;)V

    iput-object v0, p0, Lb/a/a/m1/g;->l:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Lb/a/a/m1/g;->f:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/a/a/m1/g;->e:Ljava/util/HashMap;

    .line 6
    iget-object p1, p0, Lb/a/a/m1/g;->f:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getSuggestionViewTypes()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lb/a/a/m1/g;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lb/a/a/m1/g;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Lb/a/a/m1/g;)Lb/a/a/y0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/m1/g;->g:Lb/a/a/y0;

    return-object p0
.end method

.method public static synthetic a(Lb/a/a/m1/g;Lb/a/a/y0;)Lb/a/a/y0;
    .locals 0

    .line 2
    iput-object p1, p0, Lb/a/a/m1/g;->g:Lb/a/a/y0;

    return-object p1
.end method

.method public static synthetic a(Lb/a/a/m1/g;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lb/a/a/m1/g;->a(Lcom/android/quicksearchbox/SuggestionCursor;)V

    return-void
.end method

.method public static synthetic b(Lb/a/a/m1/g;)Lb/a/a/y0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/m1/g;->h:Lb/a/a/y0;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget-object v0, p0, Lb/a/a/m1/g;->d:Lcom/android/quicksearchbox/SuggestionCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public a(Lcom/android/quicksearchbox/SuggestionCursor;I)I
    .locals 1

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 12
    iget-object p2, p0, Lb/a/a/m1/g;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lb/a/a/m1/g;->a(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/android/quicksearchbox/SuggestionCursor;IJLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 13
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 14
    iget-object p2, p0, Lb/a/a/m1/g;->f:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0, p5, p6}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 15
    instance-of p2, p1, Lcom/android/quicksearchbox/ui/SuggestionView;

    if-eqz p2, :cond_0

    .line 16
    move-object p2, p1

    check-cast p2, Lcom/android/quicksearchbox/ui/SuggestionView;

    invoke-interface {p2, p0, p3, p4}, Lcom/android/quicksearchbox/ui/SuggestionView;->bindAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    goto :goto_0

    .line 17
    :cond_0
    new-instance p2, Lb/a/a/m1/g$d;

    invoke-direct {p2, p0, p3, p4}, Lb/a/a/m1/g$d;-><init>(Lb/a/a/m1/g;J)V

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :goto_0
    iget-object p2, p0, Lb/a/a/m1/g;->j:Landroid/view/View$OnFocusChangeListener;

    if-eqz p2, :cond_1

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    return-object p1
.end method

.method public a(I)Lb/a/a/w0;
    .locals 2

    .line 5
    iget-object v0, p0, Lb/a/a/m1/g;->d:Lcom/android/quicksearchbox/SuggestionCursor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    new-instance v1, Lb/a/a/w0;

    invoke-direct {v1, v0, p1}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    return-object v1
.end method

.method public a(Lb/a/a/y0;)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/g;->b:Lcom/android/quicksearchbox/Promoter;

    iget v1, p0, Lb/a/a/m1/g;->c:I

    invoke-virtual {p1, v0, v1}, Lb/a/a/y0;->b(Lcom/android/quicksearchbox/Promoter;I)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 3

    .line 7
    iget-object v0, p0, Lb/a/a/m1/g;->f:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lb/a/a/m1/g;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown viewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 31
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 32
    iput-object p1, p0, Lb/a/a/m1/g;->d:Lcom/android/quicksearchbox/SuggestionCursor;

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 33
    new-instance v0, Lb/a/a/m1/g$b;

    invoke-direct {v0, p0}, Lb/a/a/m1/g$b;-><init>(Lb/a/a/m1/g;)V

    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SuggestionCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 34
    :cond_3
    iget-object v0, p0, Lb/a/a/m1/g;->d:Lcom/android/quicksearchbox/SuggestionCursor;

    if-ne p1, v0, :cond_5

    if-eqz p1, :cond_4

    .line 35
    invoke-virtual {p0}, Lb/a/a/m1/g;->e()V

    :cond_4
    return-void

    .line 36
    :cond_5
    iput-object p1, p0, Lb/a/a/m1/g;->d:Lcom/android/quicksearchbox/SuggestionCursor;

    .line 37
    iget-object p1, p0, Lb/a/a/m1/g;->d:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz p1, :cond_6

    .line 38
    invoke-virtual {p0}, Lb/a/a/m1/g;->e()V

    goto :goto_0

    .line 39
    :cond_6
    invoke-virtual {p0}, Lb/a/a/m1/g;->f()V

    :goto_0
    return-void
.end method

.method public a(Lcom/android/quicksearchbox/SuggestionCursor;IJLandroid/view/View;)V
    .locals 1

    .line 21
    iget-object p2, p0, Lb/a/a/m1/g;->f:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0, p5}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 22
    instance-of p2, p1, Lcom/android/quicksearchbox/ui/SuggestionView;

    if-eqz p2, :cond_0

    .line 23
    move-object p2, p1

    check-cast p2, Lcom/android/quicksearchbox/ui/SuggestionView;

    invoke-interface {p2, p0, p3, p4}, Lcom/android/quicksearchbox/ui/SuggestionView;->bindAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    goto :goto_0

    .line 24
    :cond_0
    new-instance p2, Lb/a/a/m1/g$d;

    invoke-direct {p2, p0, p3, p4}, Lb/a/a/m1/g$d;-><init>(Lb/a/a/m1/g;J)V

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :goto_0
    iget-object p2, p0, Lb/a/a/m1/g;->j:Landroid/view/View$OnFocusChangeListener;

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 2
    iget-object v0, p0, Lb/a/a/m1/g;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public b(Lcom/android/quicksearchbox/SuggestionCursor;I)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lb/a/a/m1/g;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 4
    iget-object p2, p0, Lb/a/a/m1/g;->f:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {p2, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/g;->h:Lb/a/a/y0;

    invoke-virtual {v0}, Lb/a/a/y0;->n()Z

    move-result v0

    return v0
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/m1/g;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/m1/g;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/g;->g:Lb/a/a/y0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lb/a/a/y0;->p()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lb/a/a/m1/g;->g:Lb/a/a/y0;

    .line 6
    :cond_1
    iget-object v0, p0, Lb/a/a/m1/g;->h:Lb/a/a/y0;

    invoke-virtual {p0, v0}, Lb/a/a/m1/g;->a(Lb/a/a/y0;)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lb/a/a/m1/g;->a(Lcom/android/quicksearchbox/SuggestionCursor;)V

    return-void
.end method

.method public getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/g;->d:Lcom/android/quicksearchbox/SuggestionCursor;

    return-object v0
.end method

.method public abstract getListAdapter()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract getSuggestion(J)Lb/a/a/w0;
.end method

.method public getSuggestions()Lb/a/a/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/g;->h:Lb/a/a/y0;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/g;->h:Lb/a/a/y0;

    invoke-virtual {v0}, Lb/a/a/y0;->q()V

    return-void
.end method

.method public abstract isEmpty()Z
.end method

.method public onSuggestionClicked(Landroid/view/View;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    if-eqz v0, :cond_0

    const-string p1, "QSB.SuggestionsAdapter"

    const-string p2, "onSuggestionClicked after close"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/g;->i:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuggestionContactCallClicked(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    if-eqz v0, :cond_0

    const-string p1, "QSB.SuggestionsAdapter"

    const-string p2, "onSuggestionContactCallClicked after close"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/g;->i:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionContactCallClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuggestionContactSmsClicked(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    if-eqz v0, :cond_0

    const-string p1, "QSB.SuggestionsAdapter"

    const-string p2, "onSuggestionContactSmsClicked after close"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/g;->i:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionContactSmsClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuggestionForceTouch(Landroid/view/View;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    if-eqz v0, :cond_0

    const-string p1, "QSB.SuggestionsAdapter"

    const-string p2, "onSuggestionLongClicked after close"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/g;->i:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionForceTouch(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuggestionLongClicked(Landroid/view/View;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    if-eqz v0, :cond_0

    const-string p1, "QSB.SuggestionsAdapter"

    const-string p2, "onSuggestionLongClicked after close"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/g;->i:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionLongClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuggestionMusicClicked(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    if-eqz v0, :cond_0

    const-string p1, "QSB.SuggestionsAdapter"

    const-string p2, "onSuggestionMusicClicked after close"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/g;->i:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionMusicClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuggestionQueryRefineClicked(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    if-eqz v0, :cond_0

    const-string p1, "QSB.SuggestionsAdapter"

    const-string p2, "onSuggestionQueryRefineClicked after close"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/g;->i:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionQueryRefineClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuggestionQuickContactClicked(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    if-eqz v0, :cond_0

    const-string p1, "QSB.SuggestionsAdapter"

    const-string p2, "onSuggestionQuickContactClicked after close"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/g;->i:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionQuickContactClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuggestionRemoveFromHistoryClicked(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    if-eqz v0, :cond_0

    const-string p1, "QSB.SuggestionsAdapter"

    const-string p2, "onSuggestionRemoveFromHistoryClicked after close"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/m1/g;->i:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionRemoveFromHistoryClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMaxPromoted(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/m1/g;->c:I

    .line 2
    invoke-virtual {p0}, Lb/a/a/m1/g;->g()V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m1/g;->j:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setPromoter(Lcom/android/quicksearchbox/Promoter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m1/g;->b:Lcom/android/quicksearchbox/Promoter;

    .line 2
    invoke-virtual {p0}, Lb/a/a/m1/g;->g()V

    return-void
.end method

.method public setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m1/g;->i:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    return-void
.end method

.method public setSuggestions(Lb/a/a/y0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/m1/g;->h:Lb/a/a/y0;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lb/a/a/m1/g;->k:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lb/a/a/y0;->p()V

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lb/a/a/m1/g;->a:Landroid/database/DataSetObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 5
    new-instance v0, Lb/a/a/m1/g$c;

    invoke-direct {v0, p0, v1}, Lb/a/a/m1/g$c;-><init>(Lb/a/a/m1/g;Lb/a/a/m1/g$a;)V

    iput-object v0, p0, Lb/a/a/m1/g;->a:Landroid/database/DataSetObserver;

    .line 6
    :cond_3
    iget-object v0, p0, Lb/a/a/m1/g;->h:Lb/a/a/y0;

    if-eqz v0, :cond_4

    .line 7
    iget-object v2, p0, Lb/a/a/m1/g;->a:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Lb/a/a/y0;->b(Landroid/database/DataSetObserver;)V

    .line 8
    iget-object v0, p0, Lb/a/a/m1/g;->h:Lb/a/a/y0;

    invoke-virtual {v0}, Lb/a/a/y0;->r()V

    .line 9
    iget-object v0, p0, Lb/a/a/m1/g;->h:Lb/a/a/y0;

    iput-object v0, p0, Lb/a/a/m1/g;->g:Lb/a/a/y0;

    .line 10
    :cond_4
    iput-object p1, p0, Lb/a/a/m1/g;->h:Lb/a/a/y0;

    .line 11
    iget-object v0, p0, Lb/a/a/m1/g;->h:Lb/a/a/y0;

    if-eqz v0, :cond_5

    .line 12
    iget-object v2, p0, Lb/a/a/m1/g;->a:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Lb/a/a/y0;->a(Landroid/database/DataSetObserver;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lb/a/a/m1/g;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lb/a/a/m1/g;->l:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    if-eqz p1, :cond_7

    .line 15
    invoke-virtual {p1}, Lb/a/a/y0;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 16
    :cond_7
    iget-object p1, p0, Lb/a/a/m1/g;->l:Landroid/os/Handler;

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lb/a/a/m1/g;->l:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    return-void
.end method
