.class Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DistanceInfo"
.end annotation


# instance fields
.field extraFieldMask:I

.field missingFieldMask:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/DateTimePatternGenerator$1;)V
    .locals 0

    .line 2575
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>()V

    return-void
.end method


# virtual methods
.method addExtra(I)V
    .locals 2

    .line 2589
    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    return-void
.end method

.method addMissing(I)V
    .locals 2

    .line 2586
    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    return-void
.end method

.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 2579
    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    return-void
.end method

.method setTo(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V
    .locals 1

    .line 2582
    iget v0, p1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    .line 2583
    iget p1, p1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    iput p1, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missingFieldMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    invoke-static {v1}, Landroid/icu/text/DateTimePatternGenerator;->access$1700(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraFieldMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    .line 2594
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->access$1700(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
