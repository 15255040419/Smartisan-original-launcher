.class Landroid/icu/number/Rounder$SignificantRounderImpl;
.super Landroid/icu/number/Rounder;
.source "Rounder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Rounder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SignificantRounderImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final maxSig:I

.field final minSig:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 533
    const-class v0, Landroid/icu/number/Rounder;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 537
    invoke-direct {p0}, Landroid/icu/number/Rounder;-><init>()V

    .line 538
    iput p1, p0, Landroid/icu/number/Rounder$SignificantRounderImpl;->minSig:I

    .line 539
    iput p2, p0, Landroid/icu/number/Rounder$SignificantRounderImpl;->maxSig:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 544
    iget v0, p0, Landroid/icu/number/Rounder$SignificantRounderImpl;->maxSig:I

    invoke-static {p1, v0}, Landroid/icu/number/Rounder;->access$200(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result v0

    iget-object v1, p0, Landroid/icu/number/Rounder$SignificantRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 545
    iget p0, p0, Landroid/icu/number/Rounder$SignificantRounderImpl;->minSig:I

    invoke-static {p1, p0}, Landroid/icu/number/Rounder;->access$300(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result p0

    neg-int p0, p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x7fffffff

    invoke-interface {p1, p0, v0}, Landroid/icu/impl/number/DecimalQuantity;->setFractionLength(II)V

    return-void
.end method

.method public apply(Landroid/icu/impl/number/DecimalQuantity;I)V
    .locals 0

    .line 551
    iget p0, p0, Landroid/icu/number/Rounder$SignificantRounderImpl;->minSig:I

    sub-int/2addr p0, p2

    const p2, 0x7fffffff

    invoke-interface {p1, p0, p2}, Landroid/icu/impl/number/DecimalQuantity;->setFractionLength(II)V

    return-void
.end method
