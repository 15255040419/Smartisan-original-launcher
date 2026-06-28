.class public abstract Landroid/icu/number/FractionRounder;
.super Landroid/icu/number/Rounder;
.source "FractionRounder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/icu/number/Rounder;-><init>()V

    return-void
.end method


# virtual methods
.method public withMaxDigits(I)Landroid/icu/number/Rounder;
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    const/4 v0, -0x1

    .line 70
    invoke-static {p0, v0, p1}, Landroid/icu/number/FractionRounder;->constructFractionSignificant(Landroid/icu/number/FractionRounder;II)Landroid/icu/number/Rounder;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Significant digits must be between 0 and 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withMinDigits(I)Landroid/icu/number/Rounder;
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    const/4 v0, -0x1

    .line 43
    invoke-static {p0, p1, v0}, Landroid/icu/number/FractionRounder;->constructFractionSignificant(Landroid/icu/number/FractionRounder;II)Landroid/icu/number/Rounder;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Significant digits must be between 0 and 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
