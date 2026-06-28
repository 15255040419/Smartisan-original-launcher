.class public Landroid/icu/impl/number/Padder;
.super Ljava/lang/Object;
.source "Padder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/Padder$PadPosition;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FALLBACK_PADDING_STRING:Ljava/lang/String; = " "

.field public static final NONE:Landroid/icu/impl/number/Padder;


# instance fields
.field paddingString:Ljava/lang/String;

.field position:Landroid/icu/impl/number/Padder$PadPosition;

.field targetWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Landroid/icu/impl/number/Padder;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/icu/impl/number/Padder;-><init>(Ljava/lang/String;ILandroid/icu/impl/number/Padder$PadPosition;)V

    sput-object v0, Landroid/icu/impl/number/Padder;->NONE:Landroid/icu/impl/number/Padder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/icu/impl/number/Padder$PadPosition;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, " "

    .line 57
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    .line 58
    iput p2, p0, Landroid/icu/impl/number/Padder;->targetWidth:I

    if-nez p3, :cond_1

    .line 59
    sget-object p3, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    :cond_1
    iput-object p3, p0, Landroid/icu/impl/number/Padder;->position:Landroid/icu/impl/number/Padder$PadPosition;

    return-void
.end method

.method private static addPaddingHelper(Ljava/lang/String;ILandroid/icu/impl/number/NumberStringBuilder;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p2, p3, p0, v1}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/2addr p0, p1

    return p0
.end method

.method public static codePoints(IILandroid/icu/impl/number/Padder$PadPosition;)Landroid/icu/impl/number/Padder;
    .locals 1

    if-ltz p1, :cond_0

    .line 69
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 70
    new-instance v0, Landroid/icu/impl/number/Padder;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/number/Padder;-><init>(Ljava/lang/String;ILandroid/icu/impl/number/Padder$PadPosition;)V

    return-object v0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Padding width must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static none()Landroid/icu/impl/number/Padder;
    .locals 1

    .line 63
    sget-object v0, Landroid/icu/impl/number/Padder;->NONE:Landroid/icu/impl/number/Padder;

    return-object v0
.end method


# virtual methods
.method public isValid()Z
    .locals 0

    .line 77
    iget p0, p0, Landroid/icu/impl/number/Padder;->targetWidth:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public padAndApply(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/NumberStringBuilder;II)I
    .locals 4

    .line 81
    invoke-interface {p1}, Landroid/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v0

    invoke-interface {p2}, Landroid/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    iget v1, p0, Landroid/icu/impl/number/Padder;->targetWidth:I

    sub-int/2addr v1, v0

    invoke-virtual {p3}, Landroid/icu/impl/number/NumberStringBuilder;->codePointCount()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    if-gtz v1, :cond_0

    .line 88
    invoke-interface {p1, p3, p4, p5}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result p0

    add-int/2addr p0, v0

    add-int/2addr p5, p0

    .line 89
    invoke-interface {p2, p3, p4, p5}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 93
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/number/Padder;->position:Landroid/icu/impl/number/Padder$PadPosition;

    sget-object v3, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    if-ne v2, v3, :cond_1

    .line 94
    iget-object v2, p0, Landroid/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    invoke-static {v2, v1, p3, p4}, Landroid/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILandroid/icu/impl/number/NumberStringBuilder;I)I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    goto :goto_1

    .line 95
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/number/Padder;->position:Landroid/icu/impl/number/Padder$PadPosition;

    sget-object v3, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    if-ne v2, v3, :cond_2

    .line 96
    iget-object v2, p0, Landroid/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    add-int/lit8 v3, p5, 0x0

    invoke-static {v2, v1, p3, v3}, Landroid/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILandroid/icu/impl/number/NumberStringBuilder;I)I

    move-result v2

    goto :goto_0

    :cond_2
    :goto_1
    add-int v2, p5, v0

    .line 98
    invoke-interface {p1, p3, p4, v2}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result p1

    add-int/2addr v0, p1

    add-int p1, p5, v0

    .line 99
    invoke-interface {p2, p3, p4, p1}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result p1

    add-int/2addr v0, p1

    .line 100
    iget-object p1, p0, Landroid/icu/impl/number/Padder;->position:Landroid/icu/impl/number/Padder$PadPosition;

    sget-object p2, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    if-ne p1, p2, :cond_3

    .line 101
    iget-object p0, p0, Landroid/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    invoke-static {p0, v1, p3, p4}, Landroid/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILandroid/icu/impl/number/NumberStringBuilder;I)I

    move-result p0

    :goto_2
    add-int/2addr v0, p0

    goto :goto_3

    .line 102
    :cond_3
    iget-object p1, p0, Landroid/icu/impl/number/Padder;->position:Landroid/icu/impl/number/Padder$PadPosition;

    sget-object p2, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    if-ne p1, p2, :cond_4

    .line 103
    iget-object p0, p0, Landroid/icu/impl/number/Padder;->paddingString:Ljava/lang/String;

    add-int/2addr p5, v0

    invoke-static {p0, v1, p3, p5}, Landroid/icu/impl/number/Padder;->addPaddingHelper(Ljava/lang/String;ILandroid/icu/impl/number/NumberStringBuilder;I)I

    move-result p0

    goto :goto_2

    :cond_4
    :goto_3
    return v0
.end method
