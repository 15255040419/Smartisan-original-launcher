.class public Lcom/smartisanos/launcher/view/Sa;
.super Ljava/lang/Object;
.source "FlagDismissAnimationNode.java"


# static fields
.field public static pv:F

.field public static qv:F

.field public static rv:F

.field public static sv:F

.field public static tv:F

.field public static uv:F

.field public static vv:F

.field public static wv:I

.field public static xv:F


# direct methods
.method public static reset()V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    .line 1
    sput v0, Lcom/smartisanos/launcher/view/Sa;->pv:F

    const/high16 v1, 0x41a00000    # 20.0f

    .line 2
    sput v1, Lcom/smartisanos/launcher/view/Sa;->qv:F

    const/high16 v1, 0x43480000    # 200.0f

    .line 3
    sput v1, Lcom/smartisanos/launcher/view/Sa;->rv:F

    .line 4
    sput v0, Lcom/smartisanos/launcher/view/Sa;->sv:F

    const v0, 0x3f19999a    # 0.6f

    .line 5
    sput v0, Lcom/smartisanos/launcher/view/Sa;->tv:F

    const v1, 0x3d75c28f    # 0.06f

    .line 6
    sput v1, Lcom/smartisanos/launcher/view/Sa;->uv:F

    .line 7
    sput v0, Lcom/smartisanos/launcher/view/Sa;->vv:F

    const/16 v0, 0x14

    .line 8
    sput v0, Lcom/smartisanos/launcher/view/Sa;->wv:I

    const v0, 0x3aa3d70a    # 0.00125f

    .line 9
    sput v0, Lcom/smartisanos/launcher/view/Sa;->xv:F

    return-void
.end method
