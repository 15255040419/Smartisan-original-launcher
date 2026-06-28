.class public Landroid/icu/impl/number/AffixUtils;
.super Ljava/lang/Object;
.source "AffixUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/AffixUtils$SymbolProvider;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final STATE_AFTER_QUOTE:I = 0x3

.field private static final STATE_BASE:I = 0x0

.field private static final STATE_FIFTH_CURR:I = 0x8

.field private static final STATE_FIRST_CURR:I = 0x4

.field private static final STATE_FIRST_QUOTE:I = 0x1

.field private static final STATE_FOURTH_CURR:I = 0x7

.field private static final STATE_INSIDE_QUOTE:I = 0x2

.field private static final STATE_OVERFLOW_CURR:I = 0x9

.field private static final STATE_SECOND_CURR:I = 0x5

.field private static final STATE_THIRD_CURR:I = 0x6

.field private static final TYPE_CODEPOINT:I = 0x0

.field public static final TYPE_CURRENCY_DOUBLE:I = -0x6

.field public static final TYPE_CURRENCY_OVERFLOW:I = -0xf

.field public static final TYPE_CURRENCY_QUAD:I = -0x8

.field public static final TYPE_CURRENCY_QUINT:I = -0x9

.field public static final TYPE_CURRENCY_SINGLE:I = -0x5

.field public static final TYPE_CURRENCY_TRIPLE:I = -0x7

.field public static final TYPE_MINUS_SIGN:I = -0x1

.field public static final TYPE_PERCENT:I = -0x3

.field public static final TYPE_PERMILLE:I = -0x4

.field public static final TYPE_PLUS_SIGN:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsType(Ljava/lang/CharSequence;I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 336
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 340
    :cond_1
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 342
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    move v2, v0

    move v3, v2

    .line 188
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x27

    if-ge v2, v4, :cond_5

    .line 189
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const/16 v7, 0x25

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_3

    const/16 v7, 0x2d

    if-eq v4, v7, :cond_3

    const/16 v7, 0xa4

    if-eq v4, v7, :cond_3

    const/16 v7, 0x2030

    if-eq v4, v7, :cond_3

    if-ne v3, v5, :cond_1

    .line 212
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move v3, v0

    goto :goto_1

    .line 216
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v5, "\'\'"

    .line 193
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 202
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_1

    .line 206
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 220
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_5
    if-ne v3, v5, :cond_6

    .line 224
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    return p0
.end method

.method public static escape(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    invoke-static {p0, v0}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static estimateLength(Ljava/lang/CharSequence;)I
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    move v2, v1

    move v3, v2

    .line 112
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v1, v4, :cond_7

    .line 113
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const/4 v7, 0x3

    const/16 v8, 0x27

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v7, :cond_1

    if-ne v4, v8, :cond_6

    goto :goto_1

    .line 156
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    if-ne v4, v8, :cond_6

    move v2, v7

    goto :goto_2

    :cond_3
    if-ne v4, v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_2

    :cond_5
    if-ne v4, v8, :cond_6

    move v2, v6

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 159
    :goto_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_7
    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_8

    return v3

    .line 165
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unterminated quote: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getCodePoint(J)I
    .locals 1

    const/16 v0, 0x28

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final getFieldForType(I)Landroid/icu/text/NumberFormat$Field;
    .locals 1

    const/16 v0, -0xf

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 261
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 241
    :pswitch_0
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 243
    :pswitch_1
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 245
    :pswitch_2
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 247
    :pswitch_3
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 249
    :pswitch_4
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 251
    :pswitch_5
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 253
    :pswitch_6
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 255
    :pswitch_7
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 257
    :pswitch_8
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 259
    :cond_0
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getOffset(J)I
    .locals 2

    const-wide/16 v0, -0x1

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method static getState(J)I
    .locals 2

    const/16 v0, 0x24

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0xf

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method static getType(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0xf

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getTypeOrCp(J)I
    .locals 1

    .line 578
    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->getType(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 579
    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->getCodePoint(J)I

    move-result p0

    goto :goto_0

    :cond_0
    neg-int p0, v0

    :goto_0
    return p0
.end method

.method public static hasCurrencySymbols(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 356
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 358
    :cond_1
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 359
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 360
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    if-gez v3, :cond_1

    .line 361
    invoke-static {v3}, Landroid/icu/impl/number/AffixUtils;->getFieldForType(I)Landroid/icu/text/NumberFormat$Field;

    move-result-object v3

    sget-object v4, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    if-ne v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static hasNext(JLjava/lang/CharSequence;)Z
    .locals 4

    .line 552
    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->getState(J)I

    move-result v0

    .line 553
    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->getOffset(J)I

    move-result p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    .line 556
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v2

    if-ne p0, p1, :cond_0

    .line 557
    invoke-interface {p2, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v3, 0x27

    if-ne p1, v3, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    return v2

    .line 562
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge p0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private static makeTag(IIII)J
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    int-to-long p0, p1

    neg-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    int-to-long v0, p2

    const/16 p2, 0x24

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    int-to-long p2, p3

    const/16 v0, 0x28

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static nextToken(JLjava/lang/CharSequence;)J
    .locals 12

    .line 401
    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->getOffset(J)I

    move-result v0

    .line 402
    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->getState(J)I

    move-result p0

    .line 403
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v1, -0xf

    const/16 v2, -0x9

    const/4 v3, -0x8

    const/4 v4, -0x7

    const/4 v5, -0x6

    const/4 v6, -0x5

    const/4 v7, 0x0

    if-ge v0, p1, :cond_f

    .line 404
    invoke-static {p2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 405
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    const/4 v9, 0x2

    const/16 v10, 0x27

    const/16 v11, 0xa4

    packed-switch p0, :pswitch_data_0

    .line 509
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    if-ne p1, v11, :cond_0

    goto/16 :goto_1

    .line 506
    :cond_0
    invoke-static {v0, v1, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_1
    if-ne p1, v11, :cond_1

    const/16 p0, 0x9

    goto/16 :goto_1

    .line 498
    :cond_1
    invoke-static {v0, v2, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_2
    if-ne p1, v11, :cond_2

    const/16 p0, 0x8

    goto/16 :goto_1

    .line 489
    :cond_2
    invoke-static {v0, v3, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_3
    if-ne p1, v11, :cond_3

    const/4 p0, 0x7

    goto/16 :goto_1

    .line 480
    :cond_3
    invoke-static {v0, v4, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_4
    if-ne p1, v11, :cond_4

    const/4 p0, 0x6

    goto :goto_1

    .line 471
    :cond_4
    invoke-static {v0, v5, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_5
    if-ne p1, v11, :cond_5

    const/4 p0, 0x5

    goto :goto_1

    .line 462
    :cond_5
    invoke-static {v0, v6, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_6
    if-ne p1, v10, :cond_6

    add-int/2addr v0, v8

    .line 449
    invoke-static {v0, v7, v9, p1}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_6
    move p0, v7

    goto :goto_0

    :pswitch_7
    if-ne p1, v10, :cond_7

    const/4 p0, 0x3

    goto :goto_1

    :cond_7
    add-int/2addr v0, v8

    .line 445
    invoke-static {v0, v7, v9, p1}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_8
    if-ne p1, v10, :cond_8

    add-int/2addr v0, v8

    .line 434
    invoke-static {v0, v7, v7, p1}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_8
    add-int/2addr v0, v8

    .line 436
    invoke-static {v0, v7, v9, p1}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_9
    const/16 p0, 0x25

    if-eq p1, p0, :cond_e

    if-eq p1, v10, :cond_d

    const/16 p0, 0x2b

    if-eq p1, p0, :cond_c

    const/16 p0, 0x2d

    if-eq p1, p0, :cond_b

    if-eq p1, v11, :cond_a

    const/16 p0, 0x2030

    if-eq p1, p0, :cond_9

    add-int/2addr v0, v8

    .line 429
    invoke-static {v0, v7, v7, p1}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_9
    add-int/2addr v0, v8

    const/4 p0, -0x4

    .line 422
    invoke-static {v0, p0, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_a
    const/4 p0, 0x4

    goto :goto_1

    :cond_b
    add-int/2addr v0, v8

    const/4 p0, -0x1

    .line 416
    invoke-static {v0, p0, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_c
    add-int/2addr v0, v8

    const/4 p0, -0x2

    .line 418
    invoke-static {v0, p0, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_d
    const/4 p0, 0x1

    :goto_1
    add-int/2addr v0, v8

    goto/16 :goto_0

    :cond_e
    add-int/2addr v0, v8

    const/4 p0, -0x3

    .line 420
    invoke-static {v0, p0, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_f
    const-wide/16 v8, -0x1

    packed-switch p0, :pswitch_data_1

    .line 538
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 536
    :pswitch_a
    invoke-static {v0, v1, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 534
    :pswitch_b
    invoke-static {v0, v2, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 532
    :pswitch_c
    invoke-static {v0, v3, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 530
    :pswitch_d
    invoke-static {v0, v4, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 528
    :pswitch_e
    invoke-static {v0, v5, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    .line 526
    :pswitch_f
    invoke-static {v0, v6, v7, v7}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide p0

    return-wide p0

    :pswitch_10
    return-wide v8

    .line 520
    :pswitch_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unterminated quote in pattern affix: \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_12
    return-wide v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static replaceType(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_3

    .line 377
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 380
    :cond_1
    :goto_0
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 382
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 383
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getOffset(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 384
    aput-char p2, v0, v3

    goto :goto_0

    .line 387
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static unescape(Ljava/lang/CharSequence;Landroid/icu/impl/number/NumberStringBuilder;ILandroid/icu/impl/number/AffixUtils$SymbolProvider;)I
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 286
    :goto_0
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 288
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    const/16 v4, -0xf

    if-ne v3, v4, :cond_0

    add-int v3, p2, v0

    const v4, 0xfffd

    .line 291
    sget-object v5, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p1, v3, v4, v5}, Landroid/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILandroid/icu/text/NumberFormat$Field;)I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    if-gez v3, :cond_1

    add-int v4, p2, v0

    .line 293
    invoke-interface {p3, v3}, Landroid/icu/impl/number/AffixUtils$SymbolProvider;->getSymbol(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3}, Landroid/icu/impl/number/AffixUtils;->getFieldForType(I)Landroid/icu/text/NumberFormat$Field;

    move-result-object v3

    invoke-virtual {p1, v4, v5, v3}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result v3

    goto :goto_1

    :cond_1
    add-int v4, p2, v0

    const/4 v5, 0x0

    .line 295
    invoke-virtual {p1, v4, v3, v5}, Landroid/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILandroid/icu/text/NumberFormat$Field;)I

    move-result v3

    goto :goto_1

    :cond_2
    return v0
.end method

.method public static unescapedCodePointCount(Ljava/lang/CharSequence;Landroid/icu/impl/number/AffixUtils$SymbolProvider;)I
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    .line 312
    :goto_0
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 314
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v4

    const/16 v5, -0xf

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-gez v4, :cond_0

    .line 318
    invoke-interface {p1, v4}, Landroid/icu/impl/number/AffixUtils$SymbolProvider;->getSymbol(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 319
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v0, v5}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_2
    return v3
.end method
