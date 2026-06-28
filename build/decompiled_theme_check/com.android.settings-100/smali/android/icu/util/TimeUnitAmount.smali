.class public Landroid/icu/util/TimeUnitAmount;
.super Landroid/icu/util/Measure;
.source "TimeUnitAmount.java"


# direct methods
.method public constructor <init>(DLandroid/icu/util/TimeUnit;)V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {p0, v0, p3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Landroid/icu/util/TimeUnit;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    return-void
.end method


# virtual methods
.method public getTimeUnit()Landroid/icu/util/TimeUnit;
    .locals 0

    .line 40
    invoke-virtual {p0}, Landroid/icu/util/TimeUnitAmount;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object p0

    check-cast p0, Landroid/icu/util/TimeUnit;

    return-object p0
.end method
