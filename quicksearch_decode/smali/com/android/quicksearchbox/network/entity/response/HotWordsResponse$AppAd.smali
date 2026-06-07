.class public Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;
.super Ljava/lang/Object;
.source "HotWordsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppAd"
.end annotation


# instance fields
.field public click:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public download:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public impression:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isImpressionReported:Z

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;
    .annotation runtime Lb/c/b/n/c;
        value = "package"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClick()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;->click:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getDownload()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;->download:Ljava/util/List;

    return-object v0
.end method

.method public getImpression()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;->impression:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public isImpressionReported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;->isImpressionReported:Z

    return v0
.end method

.method public setImpressionReported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;->isImpressionReported:Z

    return-void
.end method
