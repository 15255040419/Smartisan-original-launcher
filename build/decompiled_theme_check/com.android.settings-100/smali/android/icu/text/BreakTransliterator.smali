.class final Landroid/icu/text/BreakTransliterator;
.super Landroid/icu/text/Transliterator;
.source "BreakTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    }
.end annotation


# static fields
.field static final LETTER_OR_MARK_MASK:I = 0x1fe


# instance fields
.field private bi:Landroid/icu/text/BreakIterator;

.field private boundaries:[I

.field private boundaryCount:I

.field private insertion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, " "

    .line 36
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/BreakTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Landroid/icu/text/BreakIterator;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Landroid/icu/text/BreakIterator;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    const/16 p1, 0x32

    new-array p1, p1, [I

    .line 26
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    .line 31
    iput-object p3, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    .line 32
    iput-object p4, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    return-void
.end method

.method static register()V
    .locals 3

    .line 146
    new-instance v0, Landroid/icu/text/BreakTransliterator;

    const-string v1, "Any-BreakInternal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/BreakTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    const/4 v1, 0x0

    .line 147
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerInstance(Landroid/icu/text/Transliterator;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 0

    .line 412
    invoke-virtual {p0, p1}, Landroid/icu/text/BreakTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p1

    .line 415
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 416
    iget-object p0, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-virtual {p3, p0}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method

.method public getBreakIterator()Landroid/icu/text/BreakIterator;
    .locals 2

    .line 56
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/util/ULocale;

    const-string/jumbo v1, "th_TH"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    .line 57
    :cond_0
    iget-object p0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    return-object p0
.end method

.method public getInsertion()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    return-object p0
.end method

.method protected declared-synchronized handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 79
    :try_start_0
    iput v0, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    .line 81
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator;->getBreakIterator()Landroid/icu/text/BreakIterator;

    .line 82
    iget-object v1, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    new-instance v2, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v5, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-direct {v2, p1, v3, v4, v5}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;-><init>(Landroid/icu/text/Replaceable;III)V

    invoke-virtual {v1, v2}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 94
    iget-object v1, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1}, Landroid/icu/text/BreakIterator;->first()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ge v1, v2, :cond_4

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 98
    invoke-static {p1, v2}, Landroid/icu/text/UTF16;->charAt(Landroid/icu/text/Replaceable;I)I

    move-result v2

    .line 99
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v2

    shl-int v2, v3, v2

    and-int/lit16 v2, v2, 0x1fe

    if-nez v2, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Landroid/icu/text/Replaceable;I)I

    move-result v2

    .line 104
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v2

    shl-int v2, v3, v2

    and-int/lit16 v2, v2, 0x1fe

    if-nez v2, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    iget v2, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    iget-object v3, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 109
    iget-object v2, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    .line 110
    iget-object v3, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget-object v4, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    array-length v4, v4

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput-object v2, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    .line 114
    :cond_3
    iget-object v2, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget v3, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    aput v1, v2, v3

    .line 94
    :goto_1
    iget-object v1, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1}, Landroid/icu/text/BreakIterator;->next()I

    move-result v1

    goto :goto_0

    .line 121
    :cond_4
    iget v1, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    if-eqz v1, :cond_5

    .line 122
    iget v0, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    iget-object v1, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/2addr v0, v1

    .line 123
    iget-object v1, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget v2, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    sub-int/2addr v2, v3

    aget v1, v1, v2

    .line 127
    :goto_2
    iget v2, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    if-lez v2, :cond_6

    .line 128
    iget-object v2, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget v4, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    sub-int/2addr v4, v3

    iput v4, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    aget v2, v2, v4

    .line 129
    iget-object v4, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-interface {p1, v2, v2, v4}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    goto :goto_2

    :cond_5
    move v1, v0

    .line 134
    :cond_6
    iget p1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr p1, v0

    iput p1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 135
    iget p1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr p1, v0

    iput p1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-eqz p3, :cond_7

    add-int/2addr v1, v0

    goto :goto_3

    .line 136
    :cond_7
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    :goto_3
    iput v1, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBreakIterator(Landroid/icu/text/BreakIterator;)V
    .locals 0

    .line 63
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    return-void
.end method

.method public setInsertion(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    return-void
.end method
