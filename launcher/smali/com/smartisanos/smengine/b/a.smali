.class public Lcom/smartisanos/smengine/b/a;
.super Ljava/lang/Object;
.source "CustomShape.java"

# interfaces
.implements Lcom/smartisanos/smengine/b/d;


# instance fields
.field private height:F

.field private process:F

.field private width:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/b/a;->process:F

    .line 3
    iput p1, p0, Lcom/smartisanos/smengine/b/a;->width:F

    .line 4
    iput p2, p0, Lcom/smartisanos/smengine/b/a;->height:F

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/a/j;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/b/a;->process:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/smartisanos/smengine/b/a;->width:F

    mul-float/2addr v0, v2

    iput v0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iget p0, p0, Lcom/smartisanos/smengine/b/a;->height:F

    const/high16 v0, -0x41000000    # -0.5f

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/a/a;->x(FF)F

    move-result v0

    mul-float/2addr p0, v0

    iput p0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 p0, 0x0

    .line 3
    iput p0, p1, Lcom/smartisanos/smengine/a/j;->z:F

    return-void
.end method

.method public da(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/b/a;->process:F

    return-void
.end method
