.class Landroid/icu/text/TransliteratorParser$ParseData;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"

# interfaces
.implements Landroid/icu/text/SymbolTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseData"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/TransliteratorParser;


# direct methods
.method private constructor <init>(Landroid/icu/text/TransliteratorParser;)V
    .locals 0

    .line 203
    iput-object p1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/TransliteratorParser;Landroid/icu/text/TransliteratorParser$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Landroid/icu/text/TransliteratorParser$ParseData;-><init>(Landroid/icu/text/TransliteratorParser;)V

    return-void
.end method


# virtual methods
.method public isMatcher(I)Z
    .locals 1

    .line 257
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->access$100(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v0

    iget-char v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 258
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->access$200(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 259
    iget-object p0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {p0}, Landroid/icu/text/TransliteratorParser;->access$200(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Landroid/icu/text/UnicodeMatcher;

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isReplacer(I)Z
    .locals 1

    .line 271
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->access$100(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v0

    iget-char v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 272
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->access$200(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 273
    iget-object p0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {p0}, Landroid/icu/text/TransliteratorParser;->access$200(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Landroid/icu/text/UnicodeReplacer;

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public lookup(Ljava/lang/String;)[C
    .locals 0

    .line 210
    iget-object p0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {p0}, Landroid/icu/text/TransliteratorParser;->access$000(Landroid/icu/text/TransliteratorParser;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->access$100(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v0

    iget-char v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 221
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->access$200(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 222
    iget-object p0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {p0}, Landroid/icu/text/TransliteratorParser;->access$200(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/UnicodeMatcher;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .locals 3

    .line 233
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    move v0, p0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, p0, :cond_0

    .line 237
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    :cond_0
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v0, p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 246
    :cond_3
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 247
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
