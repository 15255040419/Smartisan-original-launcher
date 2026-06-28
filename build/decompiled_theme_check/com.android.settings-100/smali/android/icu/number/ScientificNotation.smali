.class public Landroid/icu/number/ScientificNotation;
.super Landroid/icu/number/Notation;
.source "ScientificNotation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/ScientificNotation$ScientificModifier;,
        Landroid/icu/number/ScientificNotation$ScientificHandler;
    }
.end annotation


# instance fields
.field engineeringInterval:I

.field exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

.field minExponentDigits:I

.field requireMinInt:Z


# direct methods
.method constructor <init>(IZILandroid/icu/number/NumberFormatter$SignDisplay;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/icu/number/Notation;-><init>()V

    .line 37
    iput p1, p0, Landroid/icu/number/ScientificNotation;->engineeringInterval:I

    .line 38
    iput-boolean p2, p0, Landroid/icu/number/ScientificNotation;->requireMinInt:Z

    .line 39
    iput p3, p0, Landroid/icu/number/ScientificNotation;->minExponentDigits:I

    .line 40
    iput-object p4, p0, Landroid/icu/number/ScientificNotation;->exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 99
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public withExponentSignDisplay(Landroid/icu/number/NumberFormatter$SignDisplay;)Landroid/icu/number/ScientificNotation;
    .locals 0

    .line 83
    invoke-virtual {p0}, Landroid/icu/number/ScientificNotation;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/number/ScientificNotation;

    .line 84
    iput-object p1, p0, Landroid/icu/number/ScientificNotation;->exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object p0
.end method

.method withLocaleData(Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;
    .locals 7

    .line 105
    new-instance v6, Landroid/icu/number/ScientificNotation$ScientificHandler;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/number/ScientificNotation$ScientificHandler;-><init>(Landroid/icu/number/ScientificNotation;Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;Landroid/icu/number/ScientificNotation$1;)V

    return-object v6
.end method

.method public withMinExponentDigits(I)Landroid/icu/number/ScientificNotation;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/icu/number/ScientificNotation;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/number/ScientificNotation;

    .line 60
    iput p1, p0, Landroid/icu/number/ScientificNotation;->minExponentDigits:I

    return-object p0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer digits must be between 0 and 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
