.class Landroid/icu/text/Quantifier;
.super Ljava/lang/Object;
.source "Quantifier.java"

# interfaces
.implements Landroid/icu/text/UnicodeMatcher;


# static fields
.field public static final MAX:I = 0x7fffffff


# instance fields
.field private matcher:Landroid/icu/text/UnicodeMatcher;

.field private maxCount:I

.field private minCount:I


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeMatcher;II)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gt p2, p3, :cond_0

    .line 31
    iput-object p1, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    .line 32
    iput p2, p0, Landroid/icu/text/Quantifier;->minCount:I

    .line 33
    iput p3, p0, Landroid/icu/text/Quantifier;->maxCount:I

    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    .line 112
    iget v0, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-lez v0, :cond_0

    .line 113
    iget-object p0, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {p0, p1}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    :cond_0
    return-void
.end method

.method public matches(Landroid/icu/text/Replaceable;[IIZ)I
    .locals 7

    const/4 v0, 0x0

    .line 43
    aget v1, p2, v0

    move v2, v0

    .line 45
    :cond_0
    iget v3, p0, Landroid/icu/text/Quantifier;->maxCount:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 46
    aget v3, p2, v0

    .line 47
    iget-object v6, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {v6, p1, p2, p3, p4}, Landroid/icu/text/UnicodeMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v6

    if-ne v6, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 50
    aget v6, p2, v0

    if-ne v3, v6, :cond_0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    if-ne v6, v5, :cond_2

    return v5

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 61
    aget p1, p2, v0

    if-ne p1, p3, :cond_3

    return v5

    .line 64
    :cond_3
    iget p0, p0, Landroid/icu/text/Quantifier;->minCount:I

    if-lt v2, p0, :cond_4

    return v4

    .line 67
    :cond_4
    aput v1, p2, v0

    return v0
.end method

.method public matchesIndexValue(I)Z
    .locals 1

    .line 101
    iget v0, p0, Landroid/icu/text/Quantifier;->minCount:I

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {p0, p1}, Landroid/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 5

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-object v1, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {v1, p1}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget p1, p0, Landroid/icu/text/Quantifier;->minCount:I

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 78
    iget p1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-ne p1, v2, :cond_0

    const/16 p0, 0x3f

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 p0, 0x2a

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 84
    iget p1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-ne p1, v1, :cond_2

    const/16 p0, 0x2b

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p1, 0x7b

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    iget p1, p0, Landroid/icu/text/Quantifier;->minCount:I

    int-to-long v3, p1

    invoke-static {v3, v4, v2}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    iget p0, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-eq p0, v1, :cond_3

    int-to-long p0, p0

    .line 91
    invoke-static {p0, p1, v2}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p0, 0x7d

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
