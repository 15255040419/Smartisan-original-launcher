.class Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;
.super Landroid/icu/text/ScientificNumberFormatter$Style;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ScientificNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkupStyle"
.end annotation


# instance fields
.field private final beginMarkup:Ljava/lang/String;

.field private final endMarkup:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0}, Landroid/icu/text/ScientificNumberFormatter$Style;-><init>(Landroid/icu/text/ScientificNumberFormatter$1;)V

    .line 145
    iput-object p1, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->beginMarkup:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->endMarkup:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    const/4 v1, 0x0

    .line 157
    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v2

    const v3, 0xffff

    if-eq v2, v3, :cond_2

    .line 159
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 160
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    .line 164
    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    .line 161
    invoke-static {p1, v1, v2, v0}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 166
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v1

    .line 167
    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 168
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v2, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->beginMarkup:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :cond_0
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    .line 172
    invoke-static {p1, v1, v2, v0}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 178
    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 179
    iget-object v1, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->endMarkup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 181
    :cond_1
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    goto :goto_0

    .line 184
    :cond_2
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result p0

    invoke-static {p1, v1, p0, v0}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
