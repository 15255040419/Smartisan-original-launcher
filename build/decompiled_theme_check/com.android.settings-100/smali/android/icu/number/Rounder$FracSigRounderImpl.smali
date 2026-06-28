.class Landroid/icu/number/Rounder$FracSigRounderImpl;
.super Landroid/icu/number/Rounder;
.source "Rounder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Rounder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FracSigRounderImpl"
.end annotation


# instance fields
.field final maxFrac:I

.field final maxSig:I

.field final minFrac:I

.field final minSig:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 561
    invoke-direct {p0}, Landroid/icu/number/Rounder;-><init>()V

    .line 562
    iput p1, p0, Landroid/icu/number/Rounder$FracSigRounderImpl;->minFrac:I

    .line 563
    iput p2, p0, Landroid/icu/number/Rounder$FracSigRounderImpl;->maxFrac:I

    .line 564
    iput p3, p0, Landroid/icu/number/Rounder$FracSigRounderImpl;->minSig:I

    .line 565
    iput p4, p0, Landroid/icu/number/Rounder$FracSigRounderImpl;->maxSig:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .locals 4

    .line 570
    iget v0, p0, Landroid/icu/number/Rounder$FracSigRounderImpl;->minFrac:I

    invoke-static {v0}, Landroid/icu/number/Rounder;->access$100(I)I

    move-result v0

    .line 571
    iget v1, p0, Landroid/icu/number/Rounder$FracSigRounderImpl;->maxFrac:I

    invoke-static {v1}, Landroid/icu/number/Rounder;->access$000(I)I

    move-result v1

    .line 572
    iget v2, p0, Landroid/icu/number/Rounder$FracSigRounderImpl;->minSig:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 574
    iget v2, p0, Landroid/icu/number/Rounder$FracSigRounderImpl;->maxSig:I

    invoke-static {p1, v2}, Landroid/icu/number/Rounder;->access$200(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result v2

    .line 575
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 578
    :cond_0
    invoke-static {p1, v2}, Landroid/icu/number/Rounder;->access$300(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result v2

    .line 579
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 581
    :goto_0
    iget-object p0, p0, Landroid/icu/number/Rounder$FracSigRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v1, p0}, Landroid/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    const/4 p0, 0x0

    neg-int v0, v0

    .line 582
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x7fffffff

    invoke-interface {p1, p0, v0}, Landroid/icu/impl/number/DecimalQuantity;->setFractionLength(II)V

    return-void
.end method
