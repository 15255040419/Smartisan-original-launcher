.class Landroid/icu/text/RemoveTransliterator;
.super Landroid/icu/text/Transliterator;
.source "RemoveTransliterator.java"


# static fields
.field private static final _ID:Ljava/lang/String; = "Any-Remove"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Any-Remove"

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    return-void
.end method

.method static register()V
    .locals 3

    .line 28
    new-instance v0, Landroid/icu/text/RemoveTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/RemoveTransliterator$1;-><init>()V

    const-string v1, "Any-Remove"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string v0, "Remove"

    const-string v1, "Null"

    const/4 v2, 0x0

    .line 34
    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroid/icu/text/RemoveTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    .line 65
    invoke-virtual {p2, p0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 1

    .line 52
    iget p0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget p3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    const-string v0, ""

    invoke-interface {p1, p0, p3, v0}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 53
    iget p0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget p1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    sub-int/2addr p0, p1

    .line 54
    iget p1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    sub-int/2addr p1, p0

    iput p1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 55
    iget p1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr p1, p0

    iput p1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void
.end method
