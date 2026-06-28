.class public Landroid/icu/impl/UtilityExtensions;
.super Ljava/lang/Object;
.source "UtilityExtensions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1, p2}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Landroid/icu/impl/UtilityExtensions;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 2

    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p0, v1, p2, p3, p4}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static formatInput(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;
    .locals 0

    .line 104
    check-cast p0, Landroid/icu/text/ReplaceableString;

    invoke-static {p0, p1}, Landroid/icu/impl/UtilityExtensions;->formatInput(Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatInput(Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    invoke-static {v0, p0, p1}, Landroid/icu/impl/UtilityExtensions;->formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;
    .locals 0

    .line 113
    check-cast p1, Landroid/icu/text/ReplaceableString;

    invoke-static {p0, p1, p2}, Landroid/icu/impl/UtilityExtensions;->formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;
    .locals 3

    .line 72
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-ltz v0, :cond_0

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    if-gt v0, v1, :cond_0

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-gt v0, v1, :cond_0

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-gt v0, v1, :cond_0

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 76
    invoke-virtual {p1}, Landroid/icu/text/ReplaceableString;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 80
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {p1, v0, v1}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p1, v1, v2}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 82
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget p2, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p1, v2, p2}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7b

    .line 85
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0x7c

    .line 86
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x7d

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID Position {cs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "} on "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p0
.end method
