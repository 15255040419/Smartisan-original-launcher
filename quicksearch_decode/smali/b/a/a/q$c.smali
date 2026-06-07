.class public Lb/a/a/q$c;
.super Ljava/lang/Object;
.source "DefaultCorpusRanker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/quicksearchbox/Corpus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/quicksearchbox/Corpus;Lcom/android/quicksearchbox/Corpus;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v0

    .line 2
    invoke-interface {p2}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 3
    :cond_1
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

    invoke-virtual {p0, p1, p2}, Lb/a/a/q$c;->a(Lcom/android/quicksearchbox/Corpus;Lcom/android/quicksearchbox/Corpus;)I

    move-result p1

    return p1
.end method
