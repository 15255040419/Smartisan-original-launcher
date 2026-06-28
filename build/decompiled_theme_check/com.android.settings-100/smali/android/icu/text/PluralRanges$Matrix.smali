.class final Landroid/icu/text/PluralRanges$Matrix;
.super Ljava/lang/Object;
.source "PluralRanges.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Matrix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/text/PluralRanges$Matrix;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private data:[B


# direct methods
.method constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    sget v1, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    .line 52
    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Landroid/icu/text/PluralRanges$Matrix;
    .locals 1

    .line 170
    new-instance v0, Landroid/icu/text/PluralRanges$Matrix;

    invoke-direct {v0}, Landroid/icu/text/PluralRanges$Matrix;-><init>()V

    .line 171
    iget-object p0, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    iput-object p0, v0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Landroid/icu/text/PluralRanges$Matrix;->clone()Landroid/icu/text/PluralRanges$Matrix;

    move-result-object p0

    return-object p0
.end method

.method public compareTo(Landroid/icu/text/PluralRanges$Matrix;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 159
    :goto_0
    iget-object v2, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 160
    aget-byte v2, v2, v1

    iget-object v3, p1, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    aget-byte v3, v3, v1

    sub-int/2addr v2, v3

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 48
    check-cast p1, Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRanges$Matrix;->compareTo(Landroid/icu/text/PluralRanges$Matrix;)I

    move-result p0

    return p0
.end method

.method endSame(Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;
    .locals 4

    .line 96
    sget-object v0, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/StandardPlural;

    .line 97
    invoke-virtual {p0, v3, p1}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-eq v2, v3, :cond_0

    return-object v1

    :cond_3
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 151
    instance-of v0, p1, Landroid/icu/text/PluralRanges$Matrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    check-cast p1, Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRanges$Matrix;->compareTo(Landroid/icu/text/PluralRanges$Matrix;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;
    .locals 1

    .line 86
    iget-object p0, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    add-int/2addr p1, p2

    aget-byte p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 87
    :cond_0
    sget-object p1, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/StandardPlural;

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 143
    :goto_0
    iget-object v2, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    mul-int/lit8 v1, v1, 0x25

    .line 144
    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method set(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V
    .locals 1

    .line 64
    iget-object p0, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    add-int/2addr p1, p2

    if-nez p3, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p3}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    int-to-byte p2, p2

    :goto_0
    aput-byte p2, p0, p1

    return-void
.end method

.method setIfNew(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V
    .locals 3

    .line 73
    iget-object v0, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    sget v2, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    if-gez v0, :cond_1

    .line 78
    iget-object p0, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    add-int/2addr p1, p2

    if-nez p3, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p3}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    int-to-byte p2, p2

    :goto_0
    aput-byte p2, p0, p1

    return-void

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Previously set value for <"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    .line 76
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method startSame(Landroid/icu/impl/StandardPlural;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/impl/StandardPlural;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/StandardPlural;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/StandardPlural;",
            ">;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/icu/impl/StandardPlural;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 120
    sget-object v0, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/StandardPlural;

    .line 121
    invoke-virtual {p0, p1, v3}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    move-object v2, v4

    goto :goto_0

    :cond_2
    if-eq v2, v4, :cond_3

    return-object v1

    .line 133
    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 134
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 179
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 180
    invoke-virtual {p0, v5, v9}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 182
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " & "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " \u2192 "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ";\n"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
