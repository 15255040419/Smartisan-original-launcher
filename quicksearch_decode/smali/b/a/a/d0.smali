.class public Lb/a/a/d0;
.super Lb/a/a/e;
.source "RankAwarePromoter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/d0$b;
    }
.end annotation


# static fields
.field public static e:Ljava/lang/Boolean;


# instance fields
.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a/a/m;Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p1}, Lb/a/a/e;-><init>(Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;Lb/a/a/m;)V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/y0;ILb/a/a/w;)V
    .locals 12

    .line 1
    sget-object v0, Lb/a/a/d0;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/e;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/a/a/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.smartisanos.appstore"

    const-string v2, "com.smartisanos.appstore.ui.AppStoreActivity"

    invoke-static {v0, v1, v2}, Lb/a/a/n1/h0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lb/a/a/d0;->e:Ljava/lang/Boolean;

    .line 3
    :cond_0
    iget v0, p1, Lb/a/a/y0;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lb/a/a/y0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lb/a/a/d0;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v9, v2

    move v8, v3

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_0
    move v9, v8

    .line 6
    :goto_1
    iget v0, p1, Lb/a/a/y0;->d:I

    if-ne v0, v1, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    invoke-virtual {p0, p1, v0}, Lb/a/a/d0;->a(Lb/a/a/y0;Z)V

    .line 7
    invoke-virtual {p1}, Lb/a/a/y0;->e()Ljava/util/ArrayList;

    move-result-object v5

    iget v0, p1, Lb/a/a/y0;->d:I

    if-ne v0, v1, :cond_4

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v2

    :goto_3
    iget-boolean v11, p1, Lb/a/a/y0;->n:Z

    move-object v4, p0

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v11}, Lb/a/a/d0;->a(Ljava/util/List;ILb/a/a/w;ZZZZ)V

    return-void
.end method

.method public final a(Lb/a/a/y0;Z)V
    .locals 6

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p1}, Lb/a/a/y0;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p1}, Lb/a/a/y0;->e()Ljava/util/ArrayList;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v2, p2

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/CorpusResult;

    add-int/lit8 v2, v2, 0x1

    .line 12
    invoke-interface {v3, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 13
    invoke-virtual {p0, v3}, Lb/a/a/e;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 14
    invoke-interface {v3}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "content://com.android.contacts/contacts/lookup"

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ne v2, v1, :cond_0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v3, p2

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 19
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lb/a/a/d0;->a(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 20
    sget-object v0, Lb/a/a/n1/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p1, "A170062"

    .line 22
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const-string p1, "A170063"

    .line 24
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "A170064"

    .line 26
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;I)V"
        }
    .end annotation

    .line 27
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/CorpusResult;

    .line 28
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 29
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 30
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 32
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 34
    :goto_0
    iget-object p2, p0, Lb/a/a/d0;->d:Ljava/util/HashMap;

    invoke-static {v0}, Lb/a/a/x0;->a(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-void
.end method

.method public a(Ljava/util/List;ILb/a/a/w;ZZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;I",
            "Lb/a/a/w;",
            "ZZZZ)V"
        }
    .end annotation

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/quicksearchbox/CorpusResult;

    if-eqz p4, :cond_0

    .line 38
    invoke-interface {p4}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result p5

    if-lez p5, :cond_0

    if-eqz p6, :cond_1

    .line 39
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v0, 0x2

    if-ge p5, v0, :cond_0

    .line 40
    :cond_1
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_2
    new-instance p1, Lb/a/a/d0$b;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lb/a/a/d0$b;-><init>(Lb/a/a/d0$a;)V

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 42
    invoke-virtual {p0}, Lb/a/a/e;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result p1

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_3

    .line 44
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lb/a/a/d0;->d:Ljava/util/HashMap;

    .line 45
    invoke-static {}, Lb/a/a/l1/e;->c()V

    :cond_3
    const/4 p5, 0x0

    if-eqz p1, :cond_6

    .line 46
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 47
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/CorpusResult;

    invoke-interface {v2}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.calculator"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 49
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 50
    invoke-virtual {p0, p2, v4}, Lb/a/a/d0;->a(Ljava/util/ArrayList;I)V

    goto :goto_1

    :cond_4
    const-string v3, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.TNTSearchActivity"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 52
    invoke-virtual {p0, p2, p5}, Lb/a/a/d0;->a(Ljava/util/ArrayList;I)V

    .line 53
    :cond_5
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_6

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/CorpusResult;

    invoke-interface {v2}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.smartisanos.notes/.ShowGlobalSearchResultActivity"

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 55
    new-instance v2, Lb/a/a/l1/h/e;

    const-string v3, "enable_corpus_web_google"

    const-string v5, "https://www.google.com/search?q="

    invoke-direct {v2, v3, v5}, Lb/a/a/l1/h/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2, v4}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;Z)Z

    .line 56
    :cond_6
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 57
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/CorpusResult;

    .line 58
    invoke-interface {v3, p5}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    :cond_7
    if-eqz p1, :cond_8

    .line 59
    iget-object v4, p0, Lb/a/a/d0;->d:Ljava/util/HashMap;

    .line 60
    invoke-static {v3}, Lb/a/a/x0;->a(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 62
    iget-object v4, p0, Lb/a/a/d0;->d:Ljava/util/HashMap;

    invoke-static {v3}, Lb/a/a/x0;->a(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 63
    new-instance v6, Lb/a/a/w0;

    invoke-direct {v6, v3, v4, v5}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;J)V

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 64
    :cond_8
    invoke-virtual {p0, v3}, Lb/a/a/e;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p1, :cond_9

    .line 65
    invoke-interface {v3}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.smartisanos.quicksearch/com.android.quicksearchbox.SearchActivity"

    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez p7, :cond_9

    .line 67
    invoke-static {v3}, Lb/a/a/l1/e;->a(Lcom/android/quicksearchbox/SuggestionCursor;)Lb/a/a/w0;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 68
    :cond_9
    new-instance v4, Lb/a/a/w0;

    invoke-direct {v4, v3}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_a
    :goto_3
    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionCursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_b
    if-eqz p1, :cond_c

    .line 70
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 71
    :cond_c
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lb/a/a/w0;

    .line 72
    invoke-virtual {p3, p5, p1}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;Z)Z

    goto :goto_4

    :cond_d
    if-nez p1, :cond_e

    if-eqz p6, :cond_e

    .line 73
    invoke-virtual {p3}, Lb/a/a/w;->getCount()I

    move-result p1

    if-lez p1, :cond_e

    .line 74
    new-instance p1, Lb/a/a/s0;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p4}, Lb/a/a/s0;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p3, p1}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    :cond_e
    return-void
.end method
