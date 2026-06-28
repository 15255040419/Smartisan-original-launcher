.class final Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;
.super Ljava/lang/Object;
.source "DecimalFormat_ICU58_Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormat_ICU58_Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AffixForCurrency"
.end annotation


# instance fields
.field private negPrefixPatternForCurrency:Ljava/lang/String;

.field private negSuffixPatternForCurrency:Ljava/lang/String;

.field private final patternType:I

.field private posPrefixPatternForCurrency:Ljava/lang/String;

.field private posSuffixPatternForCurrency:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 6013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6003
    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->negPrefixPatternForCurrency:Ljava/lang/String;

    .line 6005
    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->negSuffixPatternForCurrency:Ljava/lang/String;

    .line 6007
    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->posPrefixPatternForCurrency:Ljava/lang/String;

    .line 6009
    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->posSuffixPatternForCurrency:Ljava/lang/String;

    .line 6014
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->negPrefixPatternForCurrency:Ljava/lang/String;

    .line 6015
    iput-object p2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->negSuffixPatternForCurrency:Ljava/lang/String;

    .line 6016
    iput-object p3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->posPrefixPatternForCurrency:Ljava/lang/String;

    .line 6017
    iput-object p4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->posSuffixPatternForCurrency:Ljava/lang/String;

    .line 6018
    iput p5, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->patternType:I

    return-void
.end method


# virtual methods
.method public getNegPrefix()Ljava/lang/String;
    .locals 0

    .line 6022
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->negPrefixPatternForCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public getNegSuffix()Ljava/lang/String;
    .locals 0

    .line 6026
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->negSuffixPatternForCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public getPatternType()I
    .locals 0

    .line 6038
    iget p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->patternType:I

    return p0
.end method

.method public getPosPrefix()Ljava/lang/String;
    .locals 0

    .line 6030
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->posPrefixPatternForCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public getPosSuffix()Ljava/lang/String;
    .locals 0

    .line 6034
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->posSuffixPatternForCurrency:Ljava/lang/String;

    return-object p0
.end method
