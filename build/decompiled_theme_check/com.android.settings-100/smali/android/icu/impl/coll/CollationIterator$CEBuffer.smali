.class final Landroid/icu/impl/coll/CollationIterator$CEBuffer;
.super Ljava/lang/Object;
.source "CollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CEBuffer"
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x28


# instance fields
.field private buffer:[J

.field length:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/16 v0, 0x28

    new-array v0, v0, [J

    .line 81
    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    return-void
.end method


# virtual methods
.method append(J)V
    .locals 3

    .line 38
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 41
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    aput-wide p1, v0, v1

    return-void
.end method

.method appendUnsafe(J)V
    .locals 3

    .line 45
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    aput-wide p1, v0, v1

    return-void
.end method

.method ensureAppendCapacity(I)V
    .locals 3

    .line 49
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    array-length v0, v0

    .line 50
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    .line 57
    :goto_0
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int v2, v1, p1

    if-lt v0, v2, :cond_0

    .line 58
    new-array p1, v0, [J

    .line 59
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iput-object p1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    return-void
.end method

.method get(I)J
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method getCEs()[J
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    return-object p0
.end method

.method incLength()V
    .locals 3

    .line 66
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/4 v1, 0x1

    const/16 v2, 0x28

    if-lt v0, v2, :cond_0

    .line 67
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 69
    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return-void
.end method

.method set(IJ)J
    .locals 0

    .line 73
    iget-object p0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    aput-wide p2, p0, p1

    return-wide p2
.end method
