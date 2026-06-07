.class public Lb/a/a/b1$a;
.super Lb/a/a/z$a;
.source "WebCorpus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic l:Lb/a/a/b1;


# direct methods
.method public constructor <init>(Lb/a/a/b1;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/a/a/b1$a;->l:Lb/a/a/b1;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lb/a/a/z$a;-><init>(Lb/a/a/z;Ljava/lang/String;Ljava/util/ArrayList;I)V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lb/a/a/z$a;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/SourceResult;

    .line 2
    invoke-interface {v3}, Lcom/android/quicksearchbox/SourceResult;->getSource()Lcom/android/quicksearchbox/Source;

    move-result-object v4

    iget-object v5, p0, Lb/a/a/b1$a;->l:Lb/a/a/b1;

    invoke-static {v5}, Lb/a/a/b1;->a(Lb/a/a/b1;)Lcom/android/quicksearchbox/Source;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 4
    new-instance v3, Lb/a/a/w0;

    invoke-direct {v3, v1, v0}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    invoke-virtual {p0, v3}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    :cond_2
    if-eqz v2, :cond_3

    .line 5
    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    .line 6
    new-instance v3, Lb/a/a/w0;

    invoke-direct {v3, v2, v0}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    invoke-virtual {p0, v3}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
