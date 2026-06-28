.class public final Landroid/icu/impl/Normalizer2Impl$UTF16Plus;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UTF16Plus"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z
    .locals 3

    sub-int v0, p2, p1

    sub-int/2addr p5, p4

    const/4 v1, 0x0

    if-eq v0, p5, :cond_0

    return v1

    :cond_0
    const/4 p5, 0x1

    if-ne p0, p3, :cond_1

    if-ne p1, p4, :cond_1

    return p5

    :cond_1
    :goto_0
    if-ge p1, p2, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 412
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    add-int/lit8 v2, p4, 0x1

    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    if-eq p1, p4, :cond_2

    return v1

    :cond_2
    move p1, v0

    move p4, v2

    goto :goto_0

    :cond_3
    return p5
.end method

.method public static equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 381
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 382
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    .line 386
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static isSurrogateLead(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x400

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
