.class Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;
.super Ljava/lang/Object;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormattingData"
.end annotation


# instance fields
.field displayName:Ljava/lang/String;

.field formatInfo:Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

.field final isoCode:Ljava/lang/String;

.field symbol:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->formatInfo:Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    .line 120
    iput-object p1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->isoCode:Ljava/lang/String;

    return-void
.end method
