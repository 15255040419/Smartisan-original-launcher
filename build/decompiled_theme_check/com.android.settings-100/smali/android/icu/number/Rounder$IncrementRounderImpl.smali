.class Landroid/icu/number/Rounder$IncrementRounderImpl;
.super Landroid/icu/number/Rounder;
.source "Rounder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Rounder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncrementRounderImpl"
.end annotation


# instance fields
.field final increment:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0

    .line 589
    invoke-direct {p0}, Landroid/icu/number/Rounder;-><init>()V

    .line 590
    iput-object p1, p0, Landroid/icu/number/Rounder$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 595
    iget-object v0, p0, Landroid/icu/number/Rounder$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    iget-object v1, p0, Landroid/icu/number/Rounder$IncrementRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    .line 596
    iget-object v0, p0, Landroid/icu/number/Rounder$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    iget-object p0, p0, Landroid/icu/number/Rounder$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    invoke-interface {p1, v0, p0}, Landroid/icu/impl/number/DecimalQuantity;->setFractionLength(II)V

    return-void
.end method
