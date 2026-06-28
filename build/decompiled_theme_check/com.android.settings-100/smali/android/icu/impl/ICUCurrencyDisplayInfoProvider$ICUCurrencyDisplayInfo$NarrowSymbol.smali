.class Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;
.super Ljava/lang/Object;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NarrowSymbol"
.end annotation


# instance fields
.field final isoCode:Ljava/lang/String;

.field narrowSymbol:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;->narrowSymbol:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;->isoCode:Ljava/lang/String;

    return-void
.end method
