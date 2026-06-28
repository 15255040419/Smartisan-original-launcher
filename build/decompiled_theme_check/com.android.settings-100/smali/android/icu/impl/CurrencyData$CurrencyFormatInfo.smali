.class public final Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyFormatInfo"
.end annotation


# instance fields
.field public final currencyPattern:Ljava/lang/String;

.field public final isoCode:Ljava/lang/String;

.field public final monetaryDecimalSeparator:Ljava/lang/String;

.field public final monetaryGroupingSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->isoCode:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryDecimalSeparator:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:Ljava/lang/String;

    return-void
.end method
