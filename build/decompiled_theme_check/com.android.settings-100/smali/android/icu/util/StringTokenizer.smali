.class public final Landroid/icu/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

.field private static final EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

.field private static final TOKEN_SIZE_:I = 0x64


# instance fields
.field private delims:[Z

.field private m_coalesceDelimiters_:Z

.field private m_delimiters_:Landroid/icu/text/UnicodeSet;

.field private m_length_:I

.field private m_nextOffset_:I

.field private m_returnDelimiters_:Z

.field private m_source_:Ljava/lang/String;

.field private m_tokenLimit_:[I

.field private m_tokenOffset_:I

.field private m_tokenSize_:I

.field private m_tokenStart_:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 576
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    sput-object v0, Landroid/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

    .line 585
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    sput-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    return-void

    :array_0
    .array-data 4
        0x9
        0xa
        0xc
        0xd
        0x20
        0x20
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 281
    sget-object v0, Landroid/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-nez p2, :cond_0

    .line 150
    sget-object p1, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 153
    :cond_0
    iput-object p2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    .line 155
    :goto_0
    iput-boolean p3, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    .line 156
    iput-boolean p4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    const/4 p1, -0x1

    .line 157
    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    .line 158
    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    .line 159
    iget p2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-nez p2, :cond_1

    .line 161
    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 164
    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-nez p3, :cond_2

    .line 166
    invoke-direct {p0, p1}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    if-eqz p2, :cond_0

    .line 231
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    .line 233
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 234
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->checkDelimiters()V

    .line 236
    :cond_0
    iput-boolean p4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    .line 237
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    .line 239
    iput-boolean p3, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    const/4 p1, -0x1

    .line 240
    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    .line 241
    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    .line 242
    iget p2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-nez p2, :cond_1

    .line 244
    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 247
    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-nez p3, :cond_2

    .line 249
    invoke-direct {p0, p1}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :cond_2
    :goto_0
    return-void
.end method

.method private getNextDelimiter(I)I
    .locals 3

    if-ltz p1, :cond_4

    .line 601
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    if-nez v0, :cond_2

    .line 603
    :cond_0
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 604
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 608
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 611
    :cond_2
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 612
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 616
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-lt p1, v0, :cond_2

    .line 618
    :goto_0
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ge p1, v0, :cond_4

    return p1

    .line 622
    :cond_4
    iget p0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    rsub-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private getNextNonDelimiter(I)I
    .locals 3

    if-ltz p1, :cond_5

    .line 637
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    if-nez v0, :cond_2

    .line 639
    :cond_0
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 640
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 644
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 647
    :cond_2
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 648
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-boolean v0, v1, v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 652
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-lt p1, v0, :cond_2

    .line 654
    :cond_4
    :goto_0
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ge p1, v0, :cond_5

    return p1

    .line 658
    :cond_5
    iget p0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    rsub-int/lit8 p0, p0, -0x1

    return p0
.end method


# virtual methods
.method checkDelimiters()V
    .locals 4

    .line 662
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 665
    :cond_0
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v0

    const/16 v2, 0x7f

    if-ge v0, v2, :cond_1

    add-int/2addr v0, v3

    .line 667
    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    :goto_0
    const/4 v0, -0x1

    .line 668
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->charAt(I)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 669
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    aput-boolean v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    goto :goto_2

    :cond_2
    :goto_1
    new-array v0, v1, [Z

    .line 663
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    :cond_3
    :goto_2
    return-void
.end method

.method public countTokens()I
    .locals 7

    .line 464
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 465
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    if-ltz v0, :cond_0

    .line 466
    iget p0, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    sub-int/2addr p0, v0

    return p0

    .line 468
    :cond_0
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    if-nez v0, :cond_1

    const/16 v0, 0x64

    new-array v2, v0, [I

    .line 469
    iput-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    new-array v0, v0, [I

    .line 470
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    :cond_1
    move v0, v1

    .line 473
    :cond_2
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    array-length v3, v2

    if-ne v3, v0, :cond_3

    .line 475
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    .line 476
    array-length v4, v2

    add-int/lit8 v5, v4, 0x64

    .line 478
    new-array v6, v5, [I

    iput-object v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    .line 479
    new-array v5, v5, [I

    iput-object v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    .line 480
    iget-object v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    :cond_3
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    aput v3, v2, v0

    .line 486
    iget-boolean v2, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    if-eqz v2, :cond_9

    .line 487
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 488
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 489
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    goto :goto_0

    .line 490
    :cond_4
    array-length v5, v3

    if-ge v2, v5, :cond_5

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    if-eqz v2, :cond_8

    .line 492
    iget-boolean v2, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    if-eqz v2, :cond_6

    .line 493
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v3}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v3

    aput v3, v2, v0

    goto :goto_1

    .line 496
    :cond_6
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    add-int/2addr v2, v4

    .line 497
    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ne v2, v3, :cond_7

    const/4 v2, -0x1

    .line 500
    :cond_7
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    aput v2, v3, v0

    goto :goto_1

    .line 505
    :cond_8
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v3}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v3

    aput v3, v2, v0

    .line 507
    :goto_1
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    aget v2, v2, v0

    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_2

    .line 510
    :cond_9
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    invoke-direct {p0, v3}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v3

    aput v3, v2, v0

    .line 511
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v2

    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 514
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-gez v2, :cond_2

    .line 515
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    .line 516
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    .line 517
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_3

    :cond_a
    move v0, v1

    :goto_3
    return v0
.end method

.method public hasMoreElements()Z
    .locals 0

    .line 435
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    return p0
.end method

.method public hasMoreTokens()Z
    .locals 0

    .line 297
    iget p0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 0

    .line 450
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 6

    .line 308
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-string v3, "No more tokens in String"

    if-gez v0, :cond_9

    .line 309
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-ltz v0, :cond_8

    .line 313
    iget-boolean v3, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    if-eqz v3, :cond_6

    .line 315
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 316
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    if-nez v3, :cond_0

    .line 317
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    goto :goto_0

    .line 318
    :cond_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 320
    iget-boolean v2, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    if-eqz v2, :cond_2

    .line 321
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v1

    goto :goto_1

    .line 323
    :cond_2
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 324
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1

    .line 330
    :cond_4
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v1

    :goto_1
    if-gez v1, :cond_5

    .line 334
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 337
    :cond_5
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_2
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    return-object v0

    .line 343
    :cond_6
    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v0

    if-gez v0, :cond_7

    .line 346
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_3

    .line 350
    :cond_7
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :goto_3
    return-object v1

    .line 310
    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 358
    :cond_9
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    if-ge v0, v4, :cond_c

    .line 362
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    aget v4, v3, v0

    if-ltz v4, :cond_a

    .line 363
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    aget v5, v5, v0

    aget v0, v3, v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 367
    :cond_a
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    aget v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_4
    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    .line 370
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 371
    iget v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    if-ge v1, v2, :cond_b

    .line 372
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :cond_b
    return-object v0

    .line 359
    :cond_c
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextToken(Landroid/icu/text/UnicodeSet;)Ljava/lang/String;
    .locals 0

    .line 415
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    .line 416
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->checkDelimiters()V

    const/4 p1, -0x1

    .line 417
    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    .line 418
    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    .line 419
    iget-boolean p1, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    if-nez p1, :cond_0

    .line 420
    iget p1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, p1}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 422
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 392
    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 394
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    .line 395
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 397
    :cond_0
    iget-object p1, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/util/StringTokenizer;->nextToken(Landroid/icu/text/UnicodeSet;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
