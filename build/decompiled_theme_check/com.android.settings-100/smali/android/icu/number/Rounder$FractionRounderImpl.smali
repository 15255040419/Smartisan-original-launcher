.class Landroid/icu/number/Rounder$FractionRounderImpl;
.super Landroid/icu/number/FractionRounder;
.source "Rounder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Rounder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FractionRounderImpl"
.end annotation


# instance fields
.field final maxFrac:I

.field final minFrac:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 521
    invoke-direct {p0}, Landroid/icu/number/FractionRounder;-><init>()V

    .line 522
    iput p1, p0, Landroid/icu/number/Rounder$FractionRounderImpl;->minFrac:I

    .line 523
    iput p2, p0, Landroid/icu/number/Rounder$FractionRounderImpl;->maxFrac:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 528
    iget v0, p0, Landroid/icu/number/Rounder$FractionRounderImpl;->maxFrac:I

    invoke-static {v0}, Landroid/icu/number/Rounder;->access$000(I)I

    move-result v0

    iget-object v1, p0, Landroid/icu/number/Rounder$FractionRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 529
    iget p0, p0, Landroid/icu/number/Rounder$FractionRounderImpl;->minFrac:I

    invoke-static {p0}, Landroid/icu/number/Rounder;->access$100(I)I

    move-result p0

    neg-int p0, p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x7fffffff

    invoke-interface {p1, p0, v0}, Landroid/icu/impl/number/DecimalQuantity;->setFractionLength(II)V

    return-void
.end method
