.class public Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse;
.super Ljava/lang/Object;
.source "HotWordsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;,
        Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;,
        Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;
    }
.end annotation


# static fields
.field public static final HOT_WORD_MAX_SIZE:I = 0xa

.field public static final TAG:Ljava/lang/String; = "HotWordsResponse"

.field public static final TYPE_HOT_WORD_APP:I = 0x1

.field public static final TYPE_HOT_WORD_NORMAL:I


# instance fields
.field public code:I

.field public data:Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;

.field public errInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(Landroid/content/Context;)Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse;->data:Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWordsData;

    return-object p1
.end method
