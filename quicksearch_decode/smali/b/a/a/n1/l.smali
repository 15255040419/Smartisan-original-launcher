.class public Lb/a/a/n1/l;
.super Ljava/lang/Object;
.source "CorpusResultComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/quicksearchbox/Corpus;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lb/a/a/e0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object p1

    check-cast p1, Lb/a/a/e0;

    iput-object p1, p0, Lb/a/a/n1/l;->a:Lb/a/a/e0;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/quicksearchbox/Corpus;Lcom/android/quicksearchbox/Corpus;)I
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v0

    .line 2
    invoke-interface {p2}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lb/a/a/n1/l;->a:Lb/a/a/e0;

    invoke-virtual {v0, p1}, Lb/a/a/e0;->d(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lb/a/a/n1/l;->a:Lb/a/a/e0;

    invoke-virtual {v1, p2}, Lb/a/a/e0;->d(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    .line 5
    :cond_3
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getSortScore()I

    move-result p1

    invoke-interface {p2}, Lcom/android/quicksearchbox/Corpus;->getSortScore()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/quicksearchbox/Corpus;

    check-cast p2, Lcom/android/quicksearchbox/Corpus;

    invoke-virtual {p0, p1, p2}, Lb/a/a/n1/l;->a(Lcom/android/quicksearchbox/Corpus;Lcom/android/quicksearchbox/Corpus;)I

    move-result p1

    return p1
.end method
