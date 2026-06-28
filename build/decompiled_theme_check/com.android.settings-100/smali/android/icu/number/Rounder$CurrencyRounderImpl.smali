.class Landroid/icu/number/Rounder$CurrencyRounderImpl;
.super Landroid/icu/number/CurrencyRounder;
.source "Rounder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Rounder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CurrencyRounderImpl"
.end annotation


# instance fields
.field final usage:Landroid/icu/util/Currency$CurrencyUsage;


# direct methods
.method public constructor <init>(Landroid/icu/util/Currency$CurrencyUsage;)V
    .locals 0

    .line 603
    invoke-direct {p0}, Landroid/icu/number/CurrencyRounder;-><init>()V

    .line 604
    iput-object p1, p0, Landroid/icu/number/Rounder$CurrencyRounderImpl;->usage:Landroid/icu/util/Currency$CurrencyUsage;

    return-void
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .locals 0

    .line 610
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
