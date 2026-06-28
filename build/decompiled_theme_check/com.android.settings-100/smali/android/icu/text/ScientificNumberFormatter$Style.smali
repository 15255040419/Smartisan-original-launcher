.class abstract Landroid/icu/text/ScientificNumberFormatter$Style;
.super Ljava/lang/Object;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ScientificNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Style"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/ScientificNumberFormatter$1;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Landroid/icu/text/ScientificNumberFormatter$Style;-><init>()V

    return-void
.end method

.method static append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V
    .locals 2

    .line 129
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v0

    .line 130
    invoke-interface {p0, p1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    :goto_0
    if-ge p1, p2, :cond_0

    .line 132
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {p0, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    return-void
.end method


# virtual methods
.method abstract format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
.end method
