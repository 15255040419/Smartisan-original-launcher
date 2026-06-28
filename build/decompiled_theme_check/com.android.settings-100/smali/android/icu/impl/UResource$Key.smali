.class public final Landroid/icu/impl/UResource$Key;
.super Ljava/lang/Object;
.source "UResource.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/impl/UResource$Key;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bytes:[B

.field private length:I

.field private offset:I

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Landroid/icu/impl/UResource;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Landroid/icu/impl/UResource$Key;->setString(Ljava/lang/String;)Landroid/icu/impl/UResource$Key;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    .line 58
    iput p2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    .line 59
    iput p3, p0, Landroid/icu/impl/UResource$Key;->length:I

    return-void
.end method

.method private internalSubString(II)Ljava/lang/String;
    .locals 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-ge p1, p2, :cond_0

    .line 158
    iget-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v2, p1

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private regionMatches(ILjava/lang/CharSequence;I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 191
    iget-object v2, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v3, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v3, p1

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private regionMatches([BII)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 182
    iget-object v2, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v3, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget p0, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    int-to-char p0, p0

    return p0
.end method

.method public clone()Landroid/icu/impl/UResource$Key;
    .locals 0

    .line 120
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/UResource$Key;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    move-result-object p0

    return-object p0
.end method

.method public compareTo(Landroid/icu/impl/UResource$Key;)I
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Landroid/icu/impl/UResource$Key;->compareTo(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public compareTo(Ljava/lang/CharSequence;)I
    .locals 5

    .line 260
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 261
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 263
    invoke-virtual {p0, v2}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    sub-int/2addr v3, v4

    if-eqz v3, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    :cond_2
    iget p0, p0, Landroid/icu/impl/UResource$Key;->length:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Landroid/icu/impl/UResource$Key;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UResource$Key;->compareTo(Landroid/icu/impl/UResource$Key;)I

    move-result p0

    return p0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eq p0, p1, :cond_1

    .line 217
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v0, p1, v2}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public endsWith(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 226
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 227
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-gt v0, v1, :cond_0

    sub-int/2addr v1, v0

    invoke-direct {p0, v1, p1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 204
    :cond_1
    instance-of v2, p1, Landroid/icu/impl/UResource$Key;

    if-eqz v2, :cond_2

    .line 205
    check-cast p1, Landroid/icu/impl/UResource$Key;

    .line 206
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    iget v3, p1, Landroid/icu/impl/UResource$Key;->length:I

    if-ne v2, v3, :cond_2

    iget-object v3, p1, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget p1, p1, Landroid/icu/impl/UResource$Key;->offset:I

    .line 207
    invoke-direct {p0, v3, p1, v2}, Landroid/icu/impl/UResource$Key;->regionMatches([BII)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 243
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v1, p0, Landroid/icu/impl/UResource$Key;->offset:I

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    .line 248
    :goto_0
    iget v2, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ge v1, v2, :cond_1

    mul-int/lit8 v0, v0, 0x25

    .line 249
    iget-object v2, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget v3, p0, Landroid/icu/impl/UResource$Key;->offset:I

    aget-byte v2, v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public length()I
    .locals 0

    .line 134
    iget p0, p0, Landroid/icu/impl/UResource$Key;->length:I

    return p0
.end method

.method public regionMatches(ILjava/lang/CharSequence;)Z
    .locals 2

    .line 235
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 236
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    sub-int/2addr v1, p1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBytes([BI)Landroid/icu/impl/UResource$Key;
    .locals 2

    .line 73
    iput-object p1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    .line 74
    iput p2, p0, Landroid/icu/impl/UResource$Key;->offset:I

    const/4 v0, 0x0

    .line 75
    :goto_0
    iput v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    return-object p0
.end method

.method public setString(Ljava/lang/String;)Landroid/icu/impl/UResource$Key;
    .locals 3

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->setToEmpty()Landroid/icu/impl/UResource$Key;

    goto :goto_1

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Landroid/icu/impl/UResource$Key;->offset:I

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    .line 100
    :goto_0
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    if-ge v0, v1, :cond_2

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_1

    .line 103
    iget-object v2, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not an ASCII string"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_2
    iput-object p1, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setToEmpty()Landroid/icu/impl/UResource$Key;
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    iput v0, p0, Landroid/icu/impl/UResource$Key;->offset:I

    const-string v0, ""

    .line 86
    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    return-object p0
.end method

.method public startsWith(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 221
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 222
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    invoke-direct {p0, v2, p1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public subSequence(II)Landroid/icu/impl/UResource$Key;
    .locals 2

    .line 141
    new-instance v0, Landroid/icu/impl/UResource$Key;

    iget-object v1, p0, Landroid/icu/impl/UResource$Key;->bytes:[B

    iget p0, p0, Landroid/icu/impl/UResource$Key;->offset:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p0, p2}, Landroid/icu/impl/UResource$Key;-><init>([BII)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/UResource$Key;->subSequence(II)Landroid/icu/impl/UResource$Key;

    move-result-object p0

    return-object p0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    .line 168
    iget v0, p0, Landroid/icu/impl/UResource$Key;->length:I

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 150
    iget v1, p0, Landroid/icu/impl/UResource$Key;->length:I

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/UResource$Key;->internalSubString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    .line 152
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/UResource$Key;->s:Ljava/lang/String;

    return-object p0
.end method
