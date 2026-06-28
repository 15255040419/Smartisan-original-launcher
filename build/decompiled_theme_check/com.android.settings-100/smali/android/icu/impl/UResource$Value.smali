.class public abstract Landroid/icu/impl/UResource$Value;
.super Ljava/lang/Object;
.source "UResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Value"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAliasString()Ljava/lang/String;
.end method

.method public abstract getArray()Landroid/icu/impl/UResource$Array;
.end method

.method public abstract getBinary()Ljava/nio/ByteBuffer;
.end method

.method public abstract getInt()I
.end method

.method public abstract getIntVector()[I
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public abstract getStringArray()[Ljava/lang/String;
.end method

.method public abstract getStringArrayOrStringAsArray()[Ljava/lang/String;
.end method

.method public abstract getStringOrFirstOfArray()Ljava/lang/String;
.end method

.method public abstract getTable()Landroid/icu/impl/UResource$Table;
.end method

.method public abstract getType()I
.end method

.method public abstract getUInt()I
.end method

.method public abstract isNoInheritanceMarker()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 422
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const-string p0, "???"

    return-object p0

    .line 428
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getIntVector()[I

    move-result-object p0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    array-length v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    array-length v2, p0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 432
    aget v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    .line 437
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "(array)"

    return-object p0

    .line 426
    :cond_3
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "(table)"

    return-object p0

    :cond_5
    const-string p0, "(binary blob)"

    return-object p0

    .line 424
    :cond_6
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
