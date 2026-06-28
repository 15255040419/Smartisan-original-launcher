.class Landroid/icu/impl/number/PatternStringParser$ParserState;
.super Ljava/lang/Object;
.source "PatternStringParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/PatternStringParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParserState"
.end annotation


# instance fields
.field offset:I

.field final pattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    const/4 p1, 0x0

    .line 209
    iput p1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    return-void
.end method


# virtual methods
.method next()I
    .locals 3

    .line 221
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    .line 222
    iget v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    return v0
.end method

.method peek()I
    .locals 2

    .line 213
    iget v0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    iget-object v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 216
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    iget p0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    return p0
.end method

.method toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed pattern for ICU DecimalFormat: \""

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v1, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": "

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at position "

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget p0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
