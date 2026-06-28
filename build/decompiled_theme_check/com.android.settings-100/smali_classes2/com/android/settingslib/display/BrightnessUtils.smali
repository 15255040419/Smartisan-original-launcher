.class public Lcom/android/settingslib/display/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# static fields
.field private static final A:F = 0.17883277f

.field private static final B:F = 0.28466892f

.field private static final C:F = 0.5599107f

.field public static final GAMMA_SPACE_MAX:I = 0x3ff

.field private static final R:F = 0.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertGammaToLinear(III)I
    .locals 2

    int-to-float p0, p0

    const/4 v0, 0x0

    const v1, 0x447fc000    # 1023.0f

    .line 54
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    div-float/2addr p0, v0

    .line 57
    invoke-static {p0}, Landroid/util/MathUtils;->sq(F)F

    move-result p0

    goto :goto_0

    :cond_0
    const v0, 0x3f0f564f

    sub-float/2addr p0, v0

    const v0, 0x3e371ff0

    div-float/2addr p0, v0

    .line 59
    invoke-static {p0}, Landroid/util/MathUtils;->exp(F)F

    move-result p0

    const v0, 0x3e91c020

    add-float/2addr p0, v0

    :goto_0
    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 v0, 0x41400000    # 12.0f

    div-float/2addr p0, v0

    .line 64
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static final convertLinearToGamma(III)I
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p0, p0

    .line 91
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    const/high16 p1, 0x41400000    # 12.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_0

    .line 94
    invoke-static {p0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const p1, 0x3e371ff0

    const p2, 0x3e91c020

    sub-float/2addr p0, p2

    .line 96
    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result p0

    mul-float/2addr p0, p1

    const p1, 0x3f0f564f

    add-float/2addr p0, p1

    :goto_0
    const/4 p1, 0x0

    const p2, 0x447fc000    # 1023.0f

    .line 99
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
