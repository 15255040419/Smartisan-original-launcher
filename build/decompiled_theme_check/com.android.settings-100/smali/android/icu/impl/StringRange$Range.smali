.class final Landroid/icu/impl/StringRange$Range;
.super Ljava/lang/Object;
.source "StringRange.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/StringRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/impl/StringRange$Range;",
        ">;"
    }
.end annotation


# instance fields
.field max:I

.field min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    .line 142
    iput p2, p0, Landroid/icu/impl/StringRange$Range;->max:I

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/impl/StringRange$Range;)I
    .locals 2

    .line 150
    iget v0, p0, Landroid/icu/impl/StringRange$Range;->min:I

    iget v1, p1, Landroid/icu/impl/StringRange$Range;->min:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 154
    :cond_0
    iget p0, p0, Landroid/icu/impl/StringRange$Range;->max:I

    iget p1, p1, Landroid/icu/impl/StringRange$Range;->max:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 137
    check-cast p1, Landroid/icu/impl/StringRange$Range;

    invoke-virtual {p0, p1}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 146
    instance-of v0, p1, Landroid/icu/impl/StringRange$Range;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/icu/impl/StringRange$Range;

    invoke-virtual {p0, p1}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 158
    iget v0, p0, Landroid/icu/impl/StringRange$Range;->min:I

    mul-int/lit8 v0, v0, 0x25

    iget p0, p0, Landroid/icu/impl/StringRange$Range;->max:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    iget v1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    iget v2, p0, Landroid/icu/impl/StringRange$Range;->max:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/impl/StringRange$Range;->max:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
