.class Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;
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
    name = "RegionCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-static {}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->access$300()Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;->result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ICUCurrencyMetaInfo$1;)V
    .locals 0

    .line 220
    invoke-direct {p0}, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 0

    .line 226
    iget-object p0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;->result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public collects()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object p0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;->result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    invoke-virtual {p0}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
