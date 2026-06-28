.class public final Landroid/icu/impl/coll/UVector64;
.super Ljava/lang/Object;
.source "UVector64.java"


# instance fields
.field private buffer:[J

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [J

    .line 50
    iput-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroid/icu/impl/coll/UVector64;->length:I

    return-void
.end method

.method private ensureAppendCapacity()V
    .locals 4

    .line 43
    iget v0, p0, Landroid/icu/impl/coll/UVector64;->length:I

    iget-object v1, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 44
    array-length v0, v1

    const v2, 0xffff

    if-gt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 45
    :goto_0
    new-array v0, v0, [J

    .line 46
    iget-object v1, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    iget v2, p0, Landroid/icu/impl/coll/UVector64;->length:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iput-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    :cond_1
    return-void
.end method


# virtual methods
.method public addElement(J)V
    .locals 3

    .line 28
    invoke-direct {p0}, Landroid/icu/impl/coll/UVector64;->ensureAppendCapacity()V

    .line 29
    iget-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    iget v1, p0, Landroid/icu/impl/coll/UVector64;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UVector64;->length:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public elementAti(I)J
    .locals 0

    .line 25
    iget-object p0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getBuffer()[J
    .locals 0

    .line 26
    iget-object p0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    return-object p0
.end method

.method public insertElementAt(JI)V
    .locals 3

    .line 33
    invoke-direct {p0}, Landroid/icu/impl/coll/UVector64;->ensureAppendCapacity()V

    .line 34
    iget-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    add-int/lit8 v1, p3, 0x1

    iget v2, p0, Landroid/icu/impl/coll/UVector64;->length:I

    sub-int/2addr v2, p3

    invoke-static {v0, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    aput-wide p1, v0, p3

    .line 36
    iget p1, p0, Landroid/icu/impl/coll/UVector64;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/icu/impl/coll/UVector64;->length:I

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    .line 23
    iget p0, p0, Landroid/icu/impl/coll/UVector64;->length:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeAllElements()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Landroid/icu/impl/coll/UVector64;->length:I

    return-void
.end method

.method public setElementAt(JI)V
    .locals 0

    .line 31
    iget-object p0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    aput-wide p1, p0, p3

    return-void
.end method

.method public size()I
    .locals 0

    .line 24
    iget p0, p0, Landroid/icu/impl/coll/UVector64;->length:I

    return p0
.end method
