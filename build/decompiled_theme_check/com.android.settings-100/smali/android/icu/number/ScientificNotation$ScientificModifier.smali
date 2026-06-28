.class Landroid/icu/number/ScientificNotation$ScientificModifier;
.super Ljava/lang/Object;
.source "ScientificNotation.java"

# interfaces
.implements Landroid/icu/impl/number/Modifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/ScientificNotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScientificModifier"
.end annotation


# instance fields
.field final exponent:I

.field final handler:Landroid/icu/number/ScientificNotation$ScientificHandler;


# direct methods
.method constructor <init>(ILandroid/icu/number/ScientificNotation$ScientificHandler;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput p1, p0, Landroid/icu/number/ScientificNotation$ScientificModifier;->exponent:I

    .line 250
    iput-object p2, p0, Landroid/icu/number/ScientificNotation$ScientificModifier;->handler:Landroid/icu/number/ScientificNotation$ScientificHandler;

    return-void
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/NumberStringBuilder;II)I
    .locals 0

    .line 255
    iget-object p2, p0, Landroid/icu/number/ScientificNotation$ScientificModifier;->handler:Landroid/icu/number/ScientificNotation$ScientificHandler;

    iget p0, p0, Landroid/icu/number/ScientificNotation$ScientificModifier;->exponent:I

    invoke-static {p2, p0, p1, p3}, Landroid/icu/number/ScientificNotation$ScientificHandler;->access$100(Landroid/icu/number/ScientificNotation$ScientificHandler;ILandroid/icu/impl/number/NumberStringBuilder;I)I

    move-result p0

    return p0
.end method

.method public getCodePointCount()I
    .locals 0

    .line 267
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public getPrefixLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStrong()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
