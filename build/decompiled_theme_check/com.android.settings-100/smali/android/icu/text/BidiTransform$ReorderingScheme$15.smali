.class final enum Landroid/icu/text/BidiTransform$ReorderingScheme$15;
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

    .line 558
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/BidiTransform$ReorderingScheme;-><init>(Ljava/lang/String;ILandroid/icu/text/BidiTransform$1;)V

    return-void
.end method


# virtual methods
.method doTransform(Landroid/icu/text/BidiTransform;)V
    .locals 1

    const/4 p0, 0x0

    .line 566
    invoke-static {p1, p0, p0}, Landroid/icu/text/BidiTransform;->access$500(Landroid/icu/text/BidiTransform;BI)V

    .line 567
    invoke-static {p1}, Landroid/icu/text/BidiTransform;->access$900(Landroid/icu/text/BidiTransform;)V

    const/4 v0, 0x4

    .line 568
    invoke-static {p1, p0, v0}, Landroid/icu/text/BidiTransform;->access$400(Landroid/icu/text/BidiTransform;II)V

    return-void
.end method

.method matches(BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;)Z
    .locals 0

    .line 561
    invoke-static {p1}, Landroid/icu/text/BidiTransform;->access$100(B)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/icu/text/BidiTransform;->access$300(Landroid/icu/text/BidiTransform$Order;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 562
    invoke-static {p3}, Landroid/icu/text/BidiTransform;->access$100(B)Z

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
