.class public final Landroid/support/mediacompat/a;
.super Ljava/lang/Object;
.source "Rating2.java"


# instance fields
.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method private constructor <init>(IF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/mediacompat/a;->mRatingStyle:I

    .line 3
    iput p2, p0, Landroid/support/mediacompat/a;->mRatingValue:F

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/mediacompat/a;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Landroid/support/mediacompat/a;

    const-string v1, "android.media.rating2.style"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.media.rating2.value"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/support/mediacompat/a;-><init>(IF)V

    return-object v0
.end method

.method public static newHeartRating(Z)Landroid/support/mediacompat/a;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/mediacompat/a;

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/support/mediacompat/a;-><init>(IF)V

    return-object v0
.end method

.method public static newPercentageRating(F)Landroid/support/mediacompat/a;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Landroid/support/mediacompat/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/support/mediacompat/a;-><init>(IF)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, "Rating2"

    const-string v0, "Invalid percentage-based rating value"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static newStarRating(IF)Landroid/support/mediacompat/a;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "Rating2"

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid rating style ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") for a star rating"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    :goto_0
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    goto :goto_1

    .line 2
    :cond_3
    new-instance v0, Landroid/support/mediacompat/a;

    invoke-direct {v0, p0, p1}, Landroid/support/mediacompat/a;-><init>(IF)V

    return-object v0

    :cond_4
    :goto_1
    const-string p0, "Trying to set out of range star-based rating"

    .line 3
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static newThumbRating(Z)Landroid/support/mediacompat/a;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/mediacompat/a;

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/support/mediacompat/a;-><init>(IF)V

    return-object v0
.end method

.method public static newUnratedRating(I)Landroid/support/mediacompat/a;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    new-instance v0, Landroid/support/mediacompat/a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/support/mediacompat/a;-><init>(IF)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/support/mediacompat/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/support/mediacompat/a;

    .line 3
    iget v0, p0, Landroid/support/mediacompat/a;->mRatingStyle:I

    iget v2, p1, Landroid/support/mediacompat/a;->mRatingStyle:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroid/support/mediacompat/a;->mRatingValue:F

    iget p1, p1, Landroid/support/mediacompat/a;->mRatingValue:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getPercentRating()F
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/mediacompat/a;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/mediacompat/a;->isRated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p0, p0, Landroid/support/mediacompat/a;->mRatingValue:F

    return p0

    :cond_1
    :goto_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getRatingStyle()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/mediacompat/a;->mRatingStyle:I

    return p0
.end method

.method public getStarRating()F
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/mediacompat/a;->mRatingStyle:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/mediacompat/a;->isRated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget p0, p0, Landroid/support/mediacompat/a;->mRatingValue:F

    return p0

    :cond_1
    :goto_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public hasHeart()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/mediacompat/a;->mRatingStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/support/mediacompat/a;->mRatingValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Landroid/support/mediacompat/a;->mRatingStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Landroid/support/mediacompat/a;->mRatingValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Landroid/support/v4/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isRated()Z
    .locals 1

    .line 1
    iget p0, p0, Landroid/support/mediacompat/a;->mRatingValue:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThumbUp()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/mediacompat/a;->mRatingStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/support/mediacompat/a;->mRatingValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Landroid/support/mediacompat/a;->mRatingStyle:I

    const-string v2, "android.media.rating2.style"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget p0, p0, Landroid/support/mediacompat/a;->mRatingValue:F

    const-string v1, "android.media.rating2.value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating2:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/mediacompat/a;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/support/mediacompat/a;->mRatingValue:F

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    const-string p0, "unrated"

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
