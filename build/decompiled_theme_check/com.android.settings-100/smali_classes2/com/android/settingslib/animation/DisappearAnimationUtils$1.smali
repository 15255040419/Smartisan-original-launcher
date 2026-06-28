.class final Lcom/android/settingslib/animation/DisappearAnimationUtils$1;
.super Ljava/lang/Object;
.source "DisappearAnimationUtils.java"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/animation/DisappearAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRowTranslationScale(II)F
    .locals 2

    sub-int p0, p2, p1

    int-to-double p0, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 55
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    int-to-double v0, p2

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method
