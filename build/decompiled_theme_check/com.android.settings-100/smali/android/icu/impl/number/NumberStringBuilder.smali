.class public Landroid/icu/impl/number/NumberStringBuilder;
.super Ljava/lang/Object;
.source "NumberStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY:Landroid/icu/impl/number/NumberStringBuilder;

.field private static final fieldToDebugChar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/text/NumberFormat$Field;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chars:[C

.field private fields:[Landroid/icu/text/NumberFormat$Field;

.field private length:I

.field private zero:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Landroid/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/number/NumberStringBuilder;-><init>()V

    sput-object v0, Landroid/icu/impl/number/NumberStringBuilder;->EMPTY:Landroid/icu/impl/number/NumberStringBuilder;

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    .line 330
    sget-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x2030

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x28

    .line 38
    invoke-direct {p0, v0}, Landroid/icu/impl/number/NumberStringBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, p1, [C

    iput-object v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    .line 43
    new-array v0, p1, [Landroid/icu/text/NumberFormat$Field;

    iput-object v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    .line 44
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/number/NumberStringBuilder;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/NumberStringBuilder;->copyFrom(Landroid/icu/impl/number/NumberStringBuilder;)V

    return-void
.end method

.method private getCapacity()I
    .locals 0

    .line 302
    iget-object p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length p0, p0

    return p0
.end method

.method private prepareForInsert(II)I
    .locals 2

    if-nez p1, :cond_0

    .line 246
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int v1, v0, p2

    if-ltz v1, :cond_0

    sub-int/2addr v0, p2

    .line 248
    iput v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    .line 249
    iget p1, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    .line 250
    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    return p0

    .line 251
    :cond_0
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    if-ne p1, v0, :cond_1

    iget v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    invoke-direct {p0}, Landroid/icu/impl/number/NumberStringBuilder;->getCapacity()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 253
    iget p1, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    .line 254
    iget p1, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr p1, p0

    sub-int/2addr p1, p2

    return p1

    .line 257
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/number/NumberStringBuilder;->prepareForInsertHelper(II)I

    move-result p0

    return p0
.end method

.method private prepareForInsertHelper(II)I
    .locals 9

    .line 263
    invoke-direct {p0}, Landroid/icu/impl/number/NumberStringBuilder;->getCapacity()I

    move-result v0

    .line 264
    iget v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    .line 265
    iget-object v2, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    .line 266
    iget-object v3, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    .line 267
    iget v4, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    add-int v5, v4, p2

    if-le v5, v0, :cond_0

    add-int v0, v4, p2

    mul-int/lit8 v0, v0, 0x2

    .line 269
    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    .line 271
    new-array v4, v0, [C

    .line 272
    new-array v0, v0, [Landroid/icu/text/NumberFormat$Field;

    .line 276
    invoke-static {v2, v1, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, v1, p1

    add-int v7, v5, p1

    add-int/2addr v7, p2

    .line 277
    iget v8, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v8, p1

    invoke-static {v2, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    invoke-static {v3, v1, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iget v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v1, p1

    invoke-static {v3, v6, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iput-object v4, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    .line 282
    iput-object v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    .line 283
    iput v5, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    .line 284
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    goto :goto_0

    .line 286
    :cond_0
    div-int/lit8 v0, v0, 0x2

    add-int v5, v4, p2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    .line 290
    invoke-static {v2, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v4, v0, p1

    add-int v5, v4, p2

    .line 291
    iget v6, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iget v2, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    invoke-static {v3, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iget v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    sub-int/2addr v1, p1

    invoke-static {v3, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iput v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    .line 296
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    .line 298
    :goto_0
    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public append(Landroid/icu/impl/number/NumberStringBuilder;)I
    .locals 1

    .line 211
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILandroid/icu/impl/number/NumberStringBuilder;)I

    move-result p0

    return p0
.end method

.method public append(Ljava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I
    .locals 1

    .line 139
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result p0

    return p0
.end method

.method public append([C[Landroid/icu/text/NumberFormat$Field;)I
    .locals 1

    .line 183
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/impl/number/NumberStringBuilder;->insert(I[C[Landroid/icu/text/NumberFormat$Field;)I

    move-result p0

    return p0
.end method

.method public appendCodePoint(ILandroid/icu/text/NumberFormat$Field;)I
    .locals 1

    .line 115
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILandroid/icu/text/NumberFormat$Field;)I

    move-result p0

    return p0
.end method

.method public charAt(I)C
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr p0, p1

    aget-char p0, v0, p0

    return p0
.end method

.method public clear()Landroid/icu/impl/number/NumberStringBuilder;
    .locals 1

    .line 104
    invoke-direct {p0}, Landroid/icu/impl/number/NumberStringBuilder;->getCapacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    return-object p0
.end method

.method public codePointAt(I)I
    .locals 2

    .line 96
    iget-object v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v1, p0

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result p0

    return p0
.end method

.method public codePointBefore(I)I
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr p1, p0

    invoke-static {v0, p1, p0}, Ljava/lang/Character;->codePointBefore([CII)I

    move-result p0

    return p0
.end method

.method public codePointCount()I
    .locals 2

    .line 65
    invoke-virtual {p0}, Landroid/icu/impl/number/NumberStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public contentEquals(Landroid/icu/impl/number/NumberStringBuilder;)Z
    .locals 4

    .line 403
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    iget v1, p1, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 405
    :goto_0
    iget v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    if-ge v0, v1, :cond_3

    .line 406
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/NumberStringBuilder;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/NumberStringBuilder;->charAt(I)C

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/NumberStringBuilder;->fieldAt(I)Landroid/icu/text/NumberFormat$Field;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/NumberStringBuilder;->fieldAt(I)Landroid/icu/text/NumberFormat$Field;

    move-result-object v3

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public contentEquals([C[Landroid/icu/text/NumberFormat$Field;)Z
    .locals 5

    .line 384
    array-length v0, p1

    iget v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 386
    :cond_0
    array-length v0, p2

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    move v0, v2

    .line 388
    :goto_0
    iget v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    if-ge v0, v1, :cond_4

    .line 389
    iget-object v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v3, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    add-int v4, v3, v0

    aget-char v1, v1, v4

    aget-char v4, p1, v0

    if-eq v1, v4, :cond_2

    return v2

    .line 391
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    add-int/2addr v3, v0

    aget-object v1, v1, v3

    aget-object v3, p2, v0

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public copyFrom(Landroid/icu/impl/number/NumberStringBuilder;)V
    .locals 2

    .line 53
    iget-object v0, p1, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    .line 54
    iget-object v0, p1, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/NumberFormat$Field;

    iput-object v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    .line 55
    iget v0, p1, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    iput v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    .line 56
    iget p1, p1, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    iput p1, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 420
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Don\'t call #hashCode() or #equals() on a mutable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fieldAt(I)Landroid/icu/text/NumberFormat$Field;
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getFirstCodePoint()I
    .locals 2

    .line 82
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 85
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v0, p0

    invoke-static {v1, p0, v0}, Ljava/lang/Character;->codePointAt([CII)I

    move-result p0

    return p0
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .locals 7

    .line 482
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {p0}, Landroid/icu/impl/number/NumberStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 485
    :goto_0
    iget v4, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    if-ge v3, v4, :cond_3

    .line 486
    iget-object v4, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    iget v5, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    .line 487
    sget-object v5, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v1, v5, :cond_0

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_0

    .line 489
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v4, v5, v3, v6}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_1

    :cond_0
    if-eq v1, v4, :cond_2

    if-eqz v1, :cond_1

    .line 492
    invoke-virtual {v0, v1, v1, v2, v3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_1
    move v2, v3

    move-object v1, v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 499
    invoke-virtual {v0, v1, v1, v2, v4}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 502
    :cond_4
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public getLastCodePoint()I
    .locals 2

    .line 89
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 92
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr v0, p0

    invoke-static {v1, v0, p0}, Ljava/lang/Character;->codePointBefore([CII)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 415
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Don\'t call #hashCode() or #equals() on a mutable."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(ILandroid/icu/impl/number/NumberStringBuilder;)I
    .locals 5

    if-eq p0, p2, :cond_2

    .line 223
    iget v0, p2, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 228
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result p1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 230
    iget-object v2, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v3, p1, v1

    invoke-virtual {p2, v1}, Landroid/icu/impl/number/NumberStringBuilder;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 231
    iget-object v2, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v1}, Landroid/icu/impl/number/NumberStringBuilder;->fieldAt(I)Landroid/icu/text/NumberFormat$Field;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 221
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot call insert/append on myself"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(ILjava/lang/CharSequence;IILandroid/icu/text/NumberFormat$Field;)I
    .locals 4

    sub-int/2addr p4, p3

    .line 168
    invoke-direct {p0, p1, p4}, Landroid/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 170
    iget-object v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v2, p1, v0

    add-int v3, p3, v0

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 171
    iget-object v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    aput-object p5, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p4
.end method

.method public insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I
    .locals 6

    .line 148
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 151
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 154
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILandroid/icu/text/NumberFormat$Field;)I

    move-result p0

    return p0

    :cond_1
    const/4 v3, 0x0

    .line 156
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;IILandroid/icu/text/NumberFormat$Field;)I

    move-result p0

    return p0
.end method

.method public insert(I[C[Landroid/icu/text/NumberFormat$Field;)I
    .locals 5

    .line 194
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 197
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result p1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 199
    iget-object v2, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    add-int v3, p1, v1

    aget-char v4, p2, v1

    aput-char v4, v2, v3

    .line 200
    iget-object v2, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    if-nez p3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    aget-object v4, p3, v1

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public insertCodePoint(IILandroid/icu/text/NumberFormat$Field;)I
    .locals 2

    .line 124
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 125
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/number/NumberStringBuilder;->prepareForInsert(II)I

    move-result p1

    .line 126
    iget-object v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    invoke-static {p2, v1, p1}, Ljava/lang/Character;->toChars(I[CI)I

    .line 127
    iget-object p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    aput-object p3, p0, p1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 129
    aput-object p3, p0, p1

    :cond_0
    return v0
.end method

.method public length()I
    .locals 0

    .line 61
    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    return p0
.end method

.method public populateFieldPosition(Ljava/text/FieldPosition;I)V
    .locals 8

    .line 432
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 436
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    if-nez v0, :cond_0

    .line 437
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 439
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    goto :goto_0

    :cond_1
    return-void

    .line 446
    :cond_2
    :goto_0
    instance-of v2, v0, Landroid/icu/text/NumberFormat$Field;

    if-eqz v2, :cond_b

    .line 452
    check-cast v0, Landroid/icu/text/NumberFormat$Field;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 456
    iget v4, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    :goto_1
    iget v5, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    iget v6, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    add-int v7, v5, v6

    if-gt v4, v7, :cond_9

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_3

    .line 457
    iget-object v5, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    aget-object v5, v5, v4

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v2, :cond_5

    if-eq v0, v5, :cond_5

    .line 460
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v0, v6, :cond_4

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_4

    goto :goto_3

    .line 463
    :cond_4
    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int/2addr v4, p0

    add-int/2addr v4, p2

    invoke-virtual {p1, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_4

    :cond_5
    if-nez v2, :cond_6

    if-ne v0, v5, :cond_6

    .line 466
    iget v2, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int v2, v4, v2

    add-int/2addr v2, p2

    invoke-virtual {p1, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    move v2, v1

    .line 469
    :cond_6
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-eq v5, v6, :cond_7

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_8

    .line 470
    :cond_7
    iget v3, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int v3, v4, v3

    add-int/2addr v3, v1

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 475
    :cond_9
    :goto_4
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    if-ne v0, p0, :cond_a

    if-nez v2, :cond_a

    add-int/2addr v3, p2

    .line 476
    invoke-virtual {p1, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 477
    invoke-virtual {p1, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_a
    return-void

    .line 447
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "You must pass an instance of android.icu.text.NumberFormat.Field as your FieldPosition attribute.  You passed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    if-ltz p1, :cond_0

    .line 307
    iget v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    if-gt p2, v0, :cond_0

    if-lt p2, p1, :cond_0

    .line 310
    new-instance v0, Landroid/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/NumberStringBuilder;-><init>(Landroid/icu/impl/number/NumberStringBuilder;)V

    .line 311
    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    sub-int/2addr p2, p1

    .line 312
    iput p2, v0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    return-object v0

    .line 308
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public toCharArray()[C
    .locals 2

    .line 370
    iget-object v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr p0, v1

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p0

    return-object p0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<NumberStringBuilder ["

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {p0}, Landroid/icu/impl/number/NumberStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    :goto_0
    iget v2, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    iget v3, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 358
    iget-object v2, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    const/16 v2, 0x6e

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 361
    :cond_0
    sget-object v3, Landroid/icu/impl/number/NumberStringBuilder;->fieldToDebugChar:Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]>"

    .line 364
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toFieldArray()[Landroid/icu/text/NumberFormat$Field;
    .locals 2

    .line 375
    iget-object v0, p0, Landroid/icu/impl/number/NumberStringBuilder;->fields:[Landroid/icu/text/NumberFormat$Field;

    iget v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    add-int/2addr p0, v1

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/icu/text/NumberFormat$Field;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 324
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/number/NumberStringBuilder;->chars:[C

    iget v2, p0, Landroid/icu/impl/number/NumberStringBuilder;->zero:I

    iget p0, p0, Landroid/icu/impl/number/NumberStringBuilder;->length:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
