.class final Landroid/icu/impl/StringRange$Ranges;
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
    name = "Ranges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/impl/StringRange$Ranges;",
        ">;"
    }
.end annotation


# instance fields
.field private final ranges:[Landroid/icu/impl/StringRange$Range;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {p1}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object p1

    .line 171
    array-length v0, p1

    new-array v0, v0, [Landroid/icu/impl/StringRange$Range;

    iput-object v0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    const/4 v0, 0x0

    .line 172
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    new-instance v2, Landroid/icu/impl/StringRange$Range;

    aget v3, p1, v0

    aget v4, p1, v0

    invoke-direct {v2, v3, v4}, Landroid/icu/impl/StringRange$Range;-><init>(II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/impl/StringRange$Ranges;)I
    .locals 4

    .line 226
    iget-object v0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v0, v0

    iget-object v1, p1, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v1, v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 230
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 231
    aget-object v2, v2, v1

    iget-object v3, p1, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    move-result v2

    if-eqz v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 167
    check-cast p1, Landroid/icu/impl/StringRange$Ranges;

    invoke-virtual {p0, p1}, Landroid/icu/impl/StringRange$Ranges;->compareTo(Landroid/icu/impl/StringRange$Ranges;)I

    move-result p0

    return p0
.end method

.method public end(Z)Ljava/lang/String;
    .locals 3

    .line 203
    invoke-virtual {p0}, Landroid/icu/impl/StringRange$Ranges;->firstDifference()I

    move-result v0

    .line 204
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 207
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 208
    :goto_0
    iget-object p1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 209
    aget-object p1, p1, v0

    iget p1, p1, Landroid/icu/impl/StringRange$Range;->max:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public firstDifference()I
    .locals 3

    const/4 v0, 0x0

    .line 214
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 215
    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/StringRange$Range;->min:I

    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/icu/impl/StringRange$Range;->max:I

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    array-length p0, v1

    return p0
.end method

.method public merge(ILandroid/icu/impl/StringRange$Ranges;)Z
    .locals 5

    .line 178
    iget-object v0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    .line 180
    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/icu/impl/StringRange$Range;->max:I

    iget-object v4, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/icu/impl/StringRange$Range;->min:I

    sub-int/2addr v4, v1

    if-eq v3, v4, :cond_1

    return v2

    .line 184
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v3, v3, v0

    iget-object v4, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/icu/impl/StringRange$Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    :cond_2
    iget-object p0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object p0, p0, p1

    iget-object p2, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object p1, p2, p1

    iget p1, p1, Landroid/icu/impl/StringRange$Range;->max:I

    iput p1, p0, Landroid/icu/impl/StringRange$Range;->max:I

    return v1
.end method

.method public size()Ljava/lang/Integer;
    .locals 0

    .line 222
    iget-object p0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public start()Ljava/lang/String;
    .locals 4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 197
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 198
    aget-object v2, v2, v1

    iget v2, v2, Landroid/icu/impl/StringRange$Range;->min:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 240
    invoke-virtual {p0}, Landroid/icu/impl/StringRange$Ranges;->start()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, v1}, Landroid/icu/impl/StringRange$Ranges;->end(Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "~"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
