.class public Lcom/android/quicksearchbox/SearchActivity$u;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u"
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quicksearchbox/SearchActivity$g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity$u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/quicksearchbox/Corpus;Lcom/android/quicksearchbox/Corpus;)I
    .locals 0

    .line 1
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

    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/SearchActivity$u;->a(Lcom/android/quicksearchbox/Corpus;Lcom/android/quicksearchbox/Corpus;)I

    move-result p1

    return p1
.end method
