.class public Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;
.super Ljava/lang/Object;
.source "HotWordsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotWordsData"
.end annotation


# instance fields
.field public adApps:Ljava/util/LinkedList;
    .annotation runtime Lb/c/b/n/c;
        value = "ad"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;",
            ">;"
        }
    .end annotation
.end field

.field public adPositions:Ljava/util/List;
    .annotation runtime Lb/c/b/n/c;
        value = "ad_pos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public hotwords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterAdApps(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;->adApps:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;->adApps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;

    .line 5
    invoke-virtual {v1}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lb/a/a/n1/h0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getHotWords()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;->hotwords:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;->hotwords:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;

    iget-object v3, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;->hotwords:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const-string v0, "HotWordsResponse"

    const-string v1, "hotwords is empty"

    .line 5
    invoke-static {v0, v1}, Lb/a/a/n1/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;->adPositions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;->adApps:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;->hotwords:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
