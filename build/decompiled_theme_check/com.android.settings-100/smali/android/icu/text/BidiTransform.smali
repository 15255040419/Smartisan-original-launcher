.class public Landroid/icu/text/BidiTransform;
.super Ljava/lang/Object;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BidiTransform$ReorderingScheme;,
        Landroid/icu/text/BidiTransform$Mirroring;,
        Landroid/icu/text/BidiTransform$Order;
    }
.end annotation


# instance fields
.field private bidi:Landroid/icu/text/Bidi;

.field private reorderingOptions:I

.field private shapingOptions:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsLTR(B)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static IsLogical(Landroid/icu/text/BidiTransform$Order;)Z
    .locals 1

    .line 634
    sget-object v0, Landroid/icu/text/BidiTransform$Order;->LOGICAL:Landroid/icu/text/BidiTransform$Order;

    invoke-virtual {v0, p0}, Landroid/icu/text/BidiTransform$Order;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static IsRTL(B)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static IsVisual(Landroid/icu/text/BidiTransform$Order;)Z
    .locals 1

    .line 643
    sget-object v0, Landroid/icu/text/BidiTransform$Order;->VISUAL:Landroid/icu/text/BidiTransform$Order;

    invoke-virtual {v0, p0}, Landroid/icu/text/BidiTransform$Order;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(B)Z
    .locals 0

    .line 16
    invoke-static {p0}, Landroid/icu/text/BidiTransform;->IsLTR(B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/icu/text/BidiTransform$Order;)Z
    .locals 0

    .line 16
    invoke-static {p0}, Landroid/icu/text/BidiTransform;->IsLogical(Landroid/icu/text/BidiTransform$Order;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/icu/text/BidiTransform$Order;)Z
    .locals 0

    .line 16
    invoke-static {p0}, Landroid/icu/text/BidiTransform;->IsVisual(Landroid/icu/text/BidiTransform$Order;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroid/icu/text/BidiTransform;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/icu/text/BidiTransform;->shapeArabic(II)V

    return-void
.end method

.method static synthetic access$500(Landroid/icu/text/BidiTransform;BI)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/icu/text/BidiTransform;->resolve(BI)V

    return-void
.end method

.method static synthetic access$600(Landroid/icu/text/BidiTransform;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/icu/text/BidiTransform;->reorder()V

    return-void
.end method

.method static synthetic access$700(B)Z
    .locals 0

    .line 16
    invoke-static {p0}, Landroid/icu/text/BidiTransform;->IsRTL(B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Landroid/icu/text/BidiTransform;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/icu/text/BidiTransform;->reverse()V

    return-void
.end method

.method static synthetic access$900(Landroid/icu/text/BidiTransform;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/icu/text/BidiTransform;->mirror()V

    return-void
.end method

.method private findMatchingScheme(BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;)Landroid/icu/text/BidiTransform$ReorderingScheme;
    .locals 4

    .line 270
    invoke-static {}, Landroid/icu/text/BidiTransform$ReorderingScheme;->values()[Landroid/icu/text/BidiTransform$ReorderingScheme;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 271
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/icu/text/BidiTransform$ReorderingScheme;->matches(BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private mirror()V
    .locals 6

    .line 311
    iget v0, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getLevels()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 316
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 317
    invoke-static {v0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/StringBuffer;I)I

    move-result v4

    .line 318
    aget-byte v5, v1, v2

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 319
    invoke-static {v4}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v5

    invoke-static {v0, v2, v5}, Landroid/icu/text/UTF16;->setCharAt(Ljava/lang/StringBuffer;II)V

    .line 321
    :cond_1
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    .line 324
    iget v0, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    return-void
.end method

.method private reorder()V
    .locals 2

    .line 295
    iget-object v0, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    iget v1, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->writeReordered(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 296
    iput v0, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    return-void
.end method

.method private resolve(BI)V
    .locals 2

    .line 285
    iget-object v0, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    and-int/lit8 v1, p2, 0x5

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->setInverse(Z)V

    .line 286
    iget-object v0, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    invoke-virtual {v0, p2}, Landroid/icu/text/Bidi;->setReorderingMode(I)V

    .line 287
    iget-object p2, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    iget-object p0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Landroid/icu/text/Bidi;->setPara(Ljava/lang/String;B[B)V

    return-void
.end method

.method private resolveBaseDirection([B)V
    .locals 3

    const/4 v0, 0x0

    .line 248
    aget-byte v1, p1, v0

    invoke-static {v1}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 249
    iget-object p0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/text/Bidi;->getBaseDirection(Ljava/lang/CharSequence;)B

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    aget-byte p0, p1, v0

    const/16 v1, 0x7f

    if-ne p0, v1, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    aput-byte p0, p1, v0

    goto :goto_1

    .line 253
    :cond_2
    aget-byte p0, p1, v0

    and-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    .line 255
    :goto_1
    aget-byte p0, p1, v2

    invoke-static {p0}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 256
    aget-byte p0, p1, v0

    aput-byte p0, p1, v2

    goto :goto_2

    .line 258
    :cond_3
    aget-byte p0, p1, v2

    and-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, p1, v2

    :goto_2
    return-void
.end method

.method private reverse()V
    .locals 2

    .line 303
    iget-object v0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/Bidi;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    return-void
.end method

.method private shapeArabic(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 357
    new-instance v0, Landroid/icu/text/ArabicShaping;

    invoke-direct {v0, p1}, Landroid/icu/text/ArabicShaping;-><init>(I)V

    .line 359
    :try_start_0
    iget-object p1, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/icu/text/ArabicShaping;->shape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;
    :try_end_0
    .catch Landroid/icu/text/ArabicShapingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private shapeArabic(II)V
    .locals 1

    if-ne p1, p2, :cond_0

    .line 338
    iget p2, p0, Landroid/icu/text/BidiTransform;->shapingOptions:I

    or-int/2addr p1, p2

    invoke-direct {p0, p1}, Landroid/icu/text/BidiTransform;->shapeArabic(I)V

    goto :goto_0

    .line 342
    :cond_0
    iget v0, p0, Landroid/icu/text/BidiTransform;->shapingOptions:I

    and-int/lit8 v0, v0, -0x19

    or-int/2addr p1, v0

    invoke-direct {p0, p1}, Landroid/icu/text/BidiTransform;->shapeArabic(I)V

    .line 346
    iget p1, p0, Landroid/icu/text/BidiTransform;->shapingOptions:I

    and-int/lit16 p1, p1, -0xe1

    or-int/2addr p1, p2

    invoke-direct {p0, p1}, Landroid/icu/text/BidiTransform;->shapeArabic(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/CharSequence;BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;Landroid/icu/text/BidiTransform$Mirroring;I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    .line 217
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    const/4 p1, 0x2

    new-array v0, p1, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x1

    aput-byte p4, v0, p2

    .line 220
    invoke-direct {p0, v0}, Landroid/icu/text/BidiTransform;->resolveBaseDirection([B)V

    .line 222
    aget-byte p4, v0, v1

    aget-byte p2, v0, p2

    invoke-direct {p0, p4, p3, p2, p5}, Landroid/icu/text/BidiTransform;->findMatchingScheme(BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;)Landroid/icu/text/BidiTransform$ReorderingScheme;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 225
    new-instance p3, Landroid/icu/text/Bidi;

    invoke-direct {p3}, Landroid/icu/text/Bidi;-><init>()V

    iput-object p3, p0, Landroid/icu/text/BidiTransform;->bidi:Landroid/icu/text/Bidi;

    .line 226
    sget-object p3, Landroid/icu/text/BidiTransform$Mirroring;->ON:Landroid/icu/text/BidiTransform$Mirroring;

    invoke-virtual {p3, p6}, Landroid/icu/text/BidiTransform$Mirroring;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 227
    :goto_0
    iput p1, p0, Landroid/icu/text/BidiTransform;->reorderingOptions:I

    and-int/lit8 p1, p7, -0x5

    .line 231
    iput p1, p0, Landroid/icu/text/BidiTransform;->shapingOptions:I

    .line 232
    invoke-virtual {p2, p0}, Landroid/icu/text/BidiTransform$ReorderingScheme;->doTransform(Landroid/icu/text/BidiTransform;)V

    .line 234
    :cond_1
    iget-object p0, p0, Landroid/icu/text/BidiTransform;->text:Ljava/lang/String;

    return-object p0

    .line 215
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
