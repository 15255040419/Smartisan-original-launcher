.class final enum Landroid/icu/text/BidiTransform$ReorderingScheme$4;
.super Landroid/icu/text/BidiTransform$ReorderingScheme;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BidiTransform$ReorderingScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/BidiTransform$ReorderingScheme;-><init>(Ljava/lang/String;ILandroid/icu/text/BidiTransform$1;)V

    return-void
.end method


# virtual methods
.method doTransform(Landroid/icu/text/BidiTransform;)V
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 414
    invoke-static {p1, v0, p0}, Landroid/icu/text/BidiTransform;->access$500(Landroid/icu/text/BidiTransform;BI)V

    .line 415
    invoke-static {p1}, Landroid/icu/text/BidiTransform;->access$600(Landroid/icu/text/BidiTransform;)V

    const/4 v0, 0x4

    .line 416
    invoke-static {p1, p0, v0}, Landroid/icu/text/BidiTransform;->access$400(Landroid/icu/text/BidiTransform;II)V

    .line 417
    invoke-static {p1}, Landroid/icu/text/BidiTransform;->access$800(Landroid/icu/text/BidiTransform;)V

    return-void
.end method

.method matches(BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;)Z
    .locals 0

    .line 409
    invoke-static {p1}, Landroid/icu/text/BidiTransform;->access$700(B)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/icu/text/BidiTransform;->access$200(Landroid/icu/text/BidiTransform$Order;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 410
    invoke-static {p3}, Landroid/icu/text/BidiTransform;->access$700(B)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p4}, Landroid/icu/text/BidiTransform;->access$300(Landroid/icu/text/BidiTransform$Order;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
