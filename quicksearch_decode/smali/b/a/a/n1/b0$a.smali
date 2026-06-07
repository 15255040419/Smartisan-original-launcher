.class public Lb/a/a/n1/b0$a;
.super Landroid/util/DisplayMetrics;
.source "ScreenUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/n1/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3
    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    const/16 v1, 0x78

    .line 5
    iput v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 6
    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 7
    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 8
    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    return-void
.end method
