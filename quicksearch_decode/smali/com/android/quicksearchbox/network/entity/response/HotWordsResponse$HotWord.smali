.class public Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;
.super Ljava/lang/Object;
.source "HotWordsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotWord"
.end annotation


# instance fields
.field public app:Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;

.field public type:I

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->app:Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;

    .line 6
    invoke-virtual {p1}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->word:Ljava/lang/String;

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->word:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->type:I

    return-void
.end method


# virtual methods
.method public getApp()Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->app:Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->type:I

    return v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->word:Ljava/lang/String;

    return-object v0
.end method

.method public isAppWord()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
