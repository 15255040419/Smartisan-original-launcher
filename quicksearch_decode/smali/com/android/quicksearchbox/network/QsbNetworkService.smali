.class public interface abstract Lcom/android/quicksearchbox/network/QsbNetworkService;
.super Ljava/lang/Object;
.source "QsbNetworkService.java"


# virtual methods
.method public abstract getAppstoreInfo(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lh/s/q;
            value = "kwd"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lf/v;",
            ">;"
        }
    .end annotation

    .annotation runtime Lh/s/g;
        method = "GET"
        path = "https://api-app.smartisan.com/appstore/api/v1_6/search/psearch?kwd=?&source=2"
    .end annotation
.end method

.method public abstract getHotWords(Lf/t;)Lretrofit2/Call;
    .param p1    # Lf/t;
        .annotation runtime Lh/s/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/t;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lh/s/l;
        value = "wap/hot-words"
    .end annotation
.end method

.method public abstract getQueryAssociationalWord(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lh/s/q;
            value = "keyword"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lf/v;",
            ">;"
        }
    .end annotation

    .annotation runtime Lh/s/g;
        method = "GET"
        path = "https://so.toutiao.com/2/wap/search/extra/sug/?source=CS1112&from=3"
    .end annotation
.end method
