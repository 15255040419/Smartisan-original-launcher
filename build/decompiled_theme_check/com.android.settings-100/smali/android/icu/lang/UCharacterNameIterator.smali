.class Landroid/icu/lang/UCharacterNameIterator;
.super Ljava/lang/Object;
.source "UCharacterNameIterator.java"

# interfaces
.implements Landroid/icu/util/ValueIterator;


# static fields
.field private static GROUP_LENGTHS_:[C

.field private static GROUP_OFFSETS_:[C


# instance fields
.field private m_algorithmIndex_:I

.field private m_choice_:I

.field private m_current_:I

.field private m_groupIndex_:I

.field private m_limit_:I

.field private m_name_:Landroid/icu/impl/UCharacterName;

.field private m_start_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x21

    new-array v1, v0, [C

    .line 220
    sput-object v1, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    new-array v0, v0, [C

    .line 222
    sput-object v0, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/UCharacterName;I)V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 212
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    .line 216
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-eqz p1, :cond_0

    .line 179
    iput-object p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    .line 181
    iput p2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 p1, 0x0

    .line 182
    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    const/high16 p1, 0x110000

    .line 183
    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    .line 184
    iget p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return-void

    .line 177
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UCharacterName name argument cannot be null. Missing unames.icu?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z
    .locals 3

    .line 330
    :goto_0
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    const/4 v1, 0x1

    if-ge v0, p2, :cond_1

    .line 331
    iget-object v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    invoke-virtual {v2, v0}, Landroid/icu/impl/UCharacterName;->getExtendedOr10Name(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 333
    iget p0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iput p0, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    .line 334
    iput-object v0, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    const/4 p0, 0x0

    return p0

    .line 337
    :cond_0
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    goto :goto_0

    :cond_1
    return v1
.end method

.method private iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z
    .locals 5

    .line 274
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    if-gez v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/UCharacterName;->getGroup(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    .line 278
    :cond_0
    :goto_0
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    iget-object v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v1, v1, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_7

    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v0, p2, :cond_7

    .line 281
    invoke-static {v0}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v0

    .line 282
    iget-object v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    invoke-virtual {v1, v3}, Landroid/icu/impl/UCharacterName;->getGroupMSB(I)I

    move-result v1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    add-int/lit8 v4, p2, -0x1

    .line 284
    invoke-static {v4}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 287
    invoke-direct {p0, p1, p2}, Landroid/icu/lang/UCharacterNameIterator;->iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result p0

    return p0

    .line 292
    :cond_1
    invoke-static {v1}, Landroid/icu/impl/UCharacterName;->getGroupLimit(I)I

    move-result v0

    .line 291
    invoke-direct {p0, p1, v0}, Landroid/icu/lang/UCharacterNameIterator;->iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 295
    :cond_2
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    goto :goto_0

    :cond_3
    if-le v0, v1, :cond_4

    .line 300
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    goto :goto_0

    .line 303
    :cond_4
    invoke-static {v1}, Landroid/icu/impl/UCharacterName;->getGroupMin(I)I

    move-result v0

    if-le v0, p2, :cond_5

    move v0, p2

    .line 307
    :cond_5
    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 308
    invoke-direct {p0, p1, v0}, Landroid/icu/lang/UCharacterNameIterator;->iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 312
    :cond_6
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    goto :goto_0

    :cond_7
    return v2
.end method

.method private iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z
    .locals 8

    .line 238
    sget-object v0, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    monitor-enter v0

    .line 239
    :try_start_0
    sget-object v1, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 240
    :try_start_1
    iget-object v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    sget-object v4, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    sget-object v5, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    invoke-virtual {v2, v3, v4, v5}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v2

    .line 242
    :goto_0
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    const/4 v4, 0x1

    if-ge v3, p2, :cond_3

    .line 243
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-static {v3}, Landroid/icu/impl/UCharacterName;->getGroupOffset(I)I

    move-result v3

    .line 244
    iget-object v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    sget-object v6, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    aget-char v6, v6, v3

    add-int/2addr v6, v2

    sget-object v7, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    aget-char v3, v7, v3

    iget v7, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    invoke-virtual {v5, v6, v3, v7}, Landroid/icu/impl/UCharacterName;->getGroupName(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 249
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v3, v5}, Landroid/icu/impl/UCharacterName;->getExtendedName(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    .line 251
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 252
    iget p0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iput p0, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    .line 253
    iput-object v3, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    const/4 p0, 0x0

    .line 254
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p0

    .line 256
    :cond_2
    :try_start_3
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    goto :goto_0

    .line 258
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v4

    :catchall_0
    move-exception p0

    .line 258
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :catchall_1
    move-exception p0

    .line 259
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method


# virtual methods
.method public next(Landroid/icu/util/ValueIterator$Element;)Z
    .locals 6

    .line 40
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 44
    :cond_0
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_7

    .line 47
    :cond_1
    iget-object v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    invoke-virtual {v0}, Landroid/icu/impl/UCharacterName;->getAlgorithmLength()I

    move-result v0

    .line 48
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v4, v0, :cond_7

    .line 49
    :goto_0
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v4, v0, :cond_3

    if-ltz v4, :cond_2

    .line 51
    iget-object v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    .line 52
    invoke-virtual {v5, v4}, Landroid/icu/impl/UCharacterName;->getAlgorithmEnd(I)I

    move-result v4

    iget v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v4, v5, :cond_3

    .line 54
    :cond_2
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    goto :goto_0

    .line 61
    :cond_3
    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v4, v0, :cond_7

    .line 65
    iget-object v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    invoke-virtual {v0, v4}, Landroid/icu/impl/UCharacterName;->getAlgorithmStart(I)I

    move-result v0

    .line 66
    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v1, v0, :cond_5

    .line 70
    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    if-gt v1, v0, :cond_4

    move v0, v1

    .line 73
    :cond_4
    invoke-direct {p0, p1, v0}, Landroid/icu/lang/UCharacterNameIterator;->iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 74
    iget p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return v3

    .line 84
    :cond_5
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    if-lt v0, v1, :cond_6

    return v2

    .line 90
    :cond_6
    iput v0, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    .line 91
    iget-object v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/UCharacterName;->getAlgorithmName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 94
    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    .line 95
    iget p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return v3

    .line 101
    :cond_7
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    invoke-direct {p0, p1, v0}, Landroid/icu/lang/UCharacterNameIterator;->iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 102
    iget p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return v3

    .line 105
    :cond_8
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    if-ne v0, v1, :cond_9

    .line 106
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    invoke-direct {p0, p1, v0}, Landroid/icu/lang/UCharacterNameIterator;->iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 107
    iget p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return v3

    :cond_9
    return v2
.end method

.method public reset()V
    .locals 1

    .line 123
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    .line 125
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    return-void
.end method

.method public setRange(II)V
    .locals 0

    if-ge p1, p2, :cond_2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 151
    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    goto :goto_0

    .line 154
    :cond_0
    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    :goto_0
    const/high16 p1, 0x110000

    if-le p2, p1, :cond_1

    .line 158
    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    goto :goto_1

    .line 161
    :cond_1
    iput p2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    .line 163
    :goto_1
    iget p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return-void

    .line 147
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "start or limit has to be valid Unicode codepoints and start < limit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
