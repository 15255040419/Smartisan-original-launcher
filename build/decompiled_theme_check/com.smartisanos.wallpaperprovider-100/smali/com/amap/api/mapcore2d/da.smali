.class public Lcom/amap/api/mapcore2d/da;
.super Ljava/lang/Exception;
.source "AMapCoreException.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    .line 56
    iput-object v0, p0, Lcom/amap/api/mapcore2d/da;->a:Ljava/lang/String;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/amap/api/mapcore2d/da;->b:I

    .line 61
    iput-object p1, p0, Lcom/amap/api/mapcore2d/da;->a:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x15

    .line 75
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_0
    const-string v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x16

    .line 77
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_1
    const-string v0, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x17

    .line 79
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_2
    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x18

    .line 81
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_3
    const-string v0, "\u7a7a\u6307\u9488\u5f02\u5e38 - NullPointException"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x19

    .line 83
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_4
    const-string v0, "url\u5f02\u5e38 - MalformedURLException"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x1a

    .line 85
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_5
    const-string v0, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x1b

    .line 87
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_6
    const-string v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0x1c

    .line 89
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_7
    const-string v0, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x1d

    .line 91
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_8
    const-string v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x1e

    .line 93
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_9
    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0x1f

    .line 95
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_a
    const-string v0, "key\u9274\u6743\u5931\u8d25"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0x20

    .line 97
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_b
    const-string v0, "requeust is null"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    .line 99
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto/16 :goto_0

    :cond_c
    const-string v0, "request url is empty"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x2

    .line 101
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto :goto_0

    :cond_d
    const-string v0, "response is null"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x3

    .line 103
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto :goto_0

    :cond_e
    const-string v0, "thread pool has exception"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p1, 0x4

    .line 105
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto :goto_0

    :cond_f
    const-string v0, "sdk name is invalid"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x5

    .line 107
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto :goto_0

    :cond_10
    const-string v0, "sdk info is null"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x6

    .line 109
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto :goto_0

    :cond_11
    const-string v0, "sdk packages is null"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p1, 0x7

    .line 111
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto :goto_0

    :cond_12
    const-string v0, "\u7ebf\u7a0b\u6c60\u4e3a\u7a7a"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p1, 0x8

    .line 114
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto :goto_0

    :cond_13
    const-string v0, "\u83b7\u53d6\u5bf9\u8c61\u9519\u8bef"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/16 p1, 0x65

    .line 117
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    goto :goto_0

    :cond_14
    const/4 p1, -0x1

    .line 120
    iput p1, p0, Lcom/amap/api/mapcore2d/da;->b:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amap/api/mapcore2d/da;->a:Ljava/lang/String;

    return-object p0
.end method
