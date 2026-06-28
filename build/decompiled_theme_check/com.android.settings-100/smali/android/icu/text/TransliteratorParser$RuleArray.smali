.class Landroid/icu/text/TransliteratorParser$RuleArray;
.super Landroid/icu/text/TransliteratorParser$RuleBody;
.source "TransliteratorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuleArray"
.end annotation


# instance fields
.field array:[Ljava/lang/String;

.field i:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, v0}, Landroid/icu/text/TransliteratorParser$RuleBody;-><init>(Landroid/icu/text/TransliteratorParser$1;)V

    iput-object p1, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->array:[Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    return-void
.end method


# virtual methods
.method public handleNextLine()Ljava/lang/String;
    .locals 3

    .line 338
    iget v0, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->array:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    aget-object p0, v1, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleArray;->i:I

    return-void
.end method
