.class public Lb/a/a/o0;
.super Ljava/lang/Object;
.source "SingleCorpusPromoter.java"

# interfaces
.implements Lcom/android/quicksearchbox/Promoter;


# instance fields
.field public final a:Lcom/android/quicksearchbox/Corpus;

.field public final b:I

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Corpus;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/o0;->a:Lcom/android/quicksearchbox/Corpus;

    .line 3
    iput p2, p0, Lb/a/a/o0;->b:I

    .line 4
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lb/a/a/o0;->c:Ljava/util/Set;

    .line 5
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getSources()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quicksearchbox/Source;

    .line 6
    iget-object v0, p0, Lb/a/a/o0;->c:Ljava/util/Set;

    invoke-interface {p2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/quicksearchbox/SuggestionCursor;ILb/a/a/w;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p3}, Lb/a/a/w;->getCount()I

    move-result v2

    if-ge v2, p2, :cond_2

    .line 3
    invoke-interface {p1, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 4
    invoke-virtual {p0, p1}, Lb/a/a/o0;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Lb/a/a/w0;

    invoke-direct {v2, p1, v1}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    invoke-virtual {p3, v2}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lb/a/a/o0;->c:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public pickPromoted(Lb/a/a/y0;ILb/a/a/w;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lb/a/a/y0;->k()Lb/a/a/k0;

    move-result-object v0

    .line 2
    iget v1, p0, Lb/a/a/o0;->b:I

    invoke-virtual {p0, v0, v1, p3}, Lb/a/a/o0;->a(Lcom/android/quicksearchbox/SuggestionCursor;ILb/a/a/w;)V

    .line 3
    iget-object v0, p0, Lb/a/a/o0;->a:Lcom/android/quicksearchbox/Corpus;

    invoke-virtual {p1, v0}, Lb/a/a/y0;->a(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/CorpusResult;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/o0;->a(Lcom/android/quicksearchbox/SuggestionCursor;ILb/a/a/w;)V

    return-void
.end method
