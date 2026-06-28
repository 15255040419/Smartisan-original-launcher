.class Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;
.super Ljava/lang/Object;
.source "ICUCurrencyMetaInfo.java"

# interfaces
.implements Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InfoCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector<",
        "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ICUCurrencyMetaInfo$1;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 11

    move-object v0, p0

    .line 206
    iget-object v0, v0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    new-instance v10, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public collects()I
    .locals 0

    const p0, 0x7fffffff

    return p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object p0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
