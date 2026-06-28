.class Landroid/icu/text/NullTransliterator;
.super Landroid/icu/text/Transliterator;
.source "NullTransliterator.java"


# static fields
.field static final SHORT_ID:Ljava/lang/String; = "Null"

.field static final _ID:Ljava/lang/String; = "Any-Null"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Any-Null"

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 0

    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 0

    .line 35
    iget p0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput p0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    return-void
.end method
