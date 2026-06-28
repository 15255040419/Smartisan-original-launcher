.class Landroid/icu/text/DictionaryBreakEngine$DequeI;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DictionaryBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DequeI"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private data:[I

.field private firstIdx:I

.field private lastIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-class v0, Landroid/icu/text/DictionaryBreakEngine;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v0, v0, [I

    .line 94
    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    const/4 v0, 0x4

    .line 95
    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    .line 96
    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    return-void
.end method

.method private grow()V
    .locals 4

    .line 114
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 115
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iput-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 100
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DictionaryBreakEngine$DequeI;

    .line 101
    iget-object p0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    return-object v0
.end method

.method contains(I)Z
    .locals 2

    .line 154
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    :goto_0
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method elementAt(I)I
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget p0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method isEmpty()Z
    .locals 0

    .line 110
    invoke-virtual {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method offer(I)V
    .locals 2

    .line 123
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aput p1, v0, v1

    return-void
.end method

.method peek()I
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget p0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0
.end method

.method peekLast()I
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget p0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget p0, v0, p0

    return p0
.end method

.method pollLast()I
    .locals 3

    .line 150
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    aget p0, v0, v1

    return p0
.end method

.method pop()I
    .locals 2

    .line 135
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    aget p0, v0, v1

    return p0
.end method

.method push(I)V
    .locals 3

    .line 127
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 128
    invoke-direct {p0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->grow()V

    .line 130
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->data:[I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    aput p1, v0, v1

    return-void
.end method

.method removeAllElements()V
    .locals 1

    const/4 v0, 0x4

    .line 168
    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    return-void
.end method

.method size()I
    .locals 1

    .line 106
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->firstIdx:I

    iget p0, p0, Landroid/icu/text/DictionaryBreakEngine$DequeI;->lastIdx:I

    sub-int/2addr v0, p0

    return v0
.end method
