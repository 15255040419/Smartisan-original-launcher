.class public Lsmartisan/widget/tabswitcher/AnimationPanel$c;
.super Ljava/lang/Object;
.source "AnimationPanel.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/tabswitcher/AnimationPanel;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lsmartisan/widget/tabswitcher/AnimationPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2
    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 3
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    iput p3, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Landroid/graphics/PointF;

    check-cast p3, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2, p3}, Lsmartisan/widget/tabswitcher/AnimationPanel$c;->a(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
