.class Landroid/icu/text/FunctionReplacer;
.super Ljava/lang/Object;
.source "FunctionReplacer.java"

# interfaces
.implements Landroid/icu/text/UnicodeReplacer;


# instance fields
.field private replacer:Landroid/icu/text/UnicodeReplacer;

.field private translit:Landroid/icu/text/Transliterator;


# direct methods
.method public constructor <init>(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeReplacer;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    .line 44
    iput-object p2, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    return-void
.end method


# virtual methods
.method public addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 0

    .line 86
    iget-object p0, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getTargetSet()Landroid/icu/text/UnicodeSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public replace(Landroid/icu/text/Replaceable;II[I)I
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeReplacer;->replace(Landroid/icu/text/Replaceable;II[I)I

    move-result p3

    add-int/2addr p3, p2

    .line 61
    iget-object p0, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;II)I

    move-result p0

    sub-int/2addr p0, p2

    return p0
.end method

.method public toReplacerPattern(Z)Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    invoke-virtual {v1}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "( "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object p0, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {p0, p1}, Landroid/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " )"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
