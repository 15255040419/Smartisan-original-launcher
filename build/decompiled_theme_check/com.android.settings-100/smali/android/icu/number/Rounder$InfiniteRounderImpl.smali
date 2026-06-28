.class Landroid/icu/number/Rounder$InfiniteRounderImpl;
.super Landroid/icu/number/Rounder;
.source "Rounder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Rounder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfiniteRounderImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 507
    invoke-direct {p0}, Landroid/icu/number/Rounder;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .locals 1

    .line 512
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->roundToInfinity()V

    const/4 p0, 0x0

    const v0, 0x7fffffff

    .line 513
    invoke-interface {p1, p0, v0}, Landroid/icu/impl/number/DecimalQuantity;->setFractionLength(II)V

    return-void
.end method
