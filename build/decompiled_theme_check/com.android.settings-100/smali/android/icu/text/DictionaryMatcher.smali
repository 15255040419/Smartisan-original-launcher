.class abstract Landroid/icu/text/DictionaryMatcher;
.super Ljava/lang/Object;
.source "DictionaryMatcher.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getType()I
.end method

.method public matches(Ljava/text/CharacterIterator;I[I[II)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroid/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II[I)I

    move-result p0

    return p0
.end method

.method public abstract matches(Ljava/text/CharacterIterator;I[I[II[I)I
.end method
