.class public Lb/a/a/l0;
.super Lb/a/a/e;
.source "ShortcutPromoter.java"


# direct methods
.method public constructor <init>(Lb/a/a/m;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/SuggestionFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p2, p1}, Lb/a/a/e;-><init>(Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;Lb/a/a/m;)V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/y0;ILb/a/a/w;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lb/a/a/y0;->k()Lb/a/a/k0;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/l0;->a(Lcom/android/quicksearchbox/SuggestionCursor;ILb/a/a/w;)V

    return-void
.end method

.method public a(Lcom/android/quicksearchbox/SuggestionCursor;ILb/a/a/w;)V
    .locals 3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move v0, p2

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ge p2, v0, :cond_3

    .line 3
    invoke-virtual {p3}, Lb/a/a/w;->getCount()I

    move-result v1

    const/16 v2, 0x15

    if-ge v1, v2, :cond_3

    .line 4
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 5
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lb/a/a/e;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Lb/a/a/w0;

    invoke-direct {v1, p1}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {p3, v1}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
