.class public Landroid/icu/impl/CurrencyData;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CurrencyData$DefaultInfo;,
        Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;,
        Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;,
        Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;,
        Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    }
.end annotation


# static fields
.field public static final provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "android.icu.impl.ICUCurrencyDisplayInfoProvider"

    .line 113
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    new-instance v0, Landroid/icu/impl/CurrencyData$1;

    invoke-direct {v0}, Landroid/icu/impl/CurrencyData$1;-><init>()V

    .line 128
    :goto_0
    sput-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
