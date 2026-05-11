.class public Lcom/smartisanos/launcher/animations/a/s;
.super Laurelienribon/tweenengine/a/d;
.source "PageScrollAnimationLouver.java"


# instance fields
.field protected Mf:F

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/a/t;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/animations/a/t;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/s;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    invoke-direct {p0}, Laurelienribon/tweenengine/a/d;-><init>()V

    .line 2
    iput p2, p0, Lcom/smartisanos/launcher/animations/a/s;->Mf:F

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 3

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/a/s;->Mf:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    add-float v2, p0, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, p0

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Back.OUT"

    return-object p0
.end method
