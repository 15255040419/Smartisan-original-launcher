.class public Lb/a/a/d1/c/a;
.super Ljava/lang/Object;
.source "PinyinUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lb/a/a/d1/c/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lb/a/a/d1/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static a(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 2
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Lsmartisanos/t9search/HanziToPinyin;->getInstance()Lsmartisanos/t9search/HanziToPinyin;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "hanziToPinyin instance is null"

    .line 2
    invoke-static {p0}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lsmartisanos/t9search/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-ge v4, v2, :cond_7

    .line 7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsmartisanos/t9search/HanziToPinyin$Token;

    const/4 v7, 0x3

    .line 8
    iget v8, v6, Lsmartisanos/t9search/HanziToPinyin$Token;->type:I

    if-ne v7, v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x2

    if-ne v7, v8, :cond_4

    if-eqz v3, :cond_3

    .line 9
    iget-object v7, v6, Lsmartisanos/t9search/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v8, "DE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x5730

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3

    const-string v6, "DI"

    .line 10
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_3
    iget-object v6, v6, Lsmartisanos/t9search/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-ne v5, v8, :cond_5

    .line 12
    iget-object v6, v6, Lsmartisanos/t9search/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    add-int/lit8 v6, v2, -0x1

    if-eq v4, v6, :cond_6

    const-string v6, " "

    .line 13
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lb/a/a/d1/c/a;->a(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
