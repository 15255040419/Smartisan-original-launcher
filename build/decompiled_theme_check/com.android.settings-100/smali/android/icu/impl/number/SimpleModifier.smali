.class public Landroid/icu/impl/number/SimpleModifier;
.super Ljava/lang/Object;
.source "SimpleModifier.java"

# interfaces
.implements Landroid/icu/impl/number/Modifier;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_NUM_LIMIT:I = 0x100


# instance fields
.field private final compiledPattern:Ljava/lang/String;

.field private final field:Landroid/icu/text/NumberFormat$Field;

.field private final prefixLength:I

.field private final strong:Z

.field private final suffixLength:I

.field private final suffixOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/NumberFormat$Field;Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Landroid/icu/impl/number/SimpleModifier;->field:Landroid/icu/text/NumberFormat$Field;

    .line 30
    iput-boolean p3, p0, Landroid/icu/impl/number/SimpleModifier;->strong:Z

    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit16 p2, p2, -0x100

    iput p2, p0, Landroid/icu/impl/number/SimpleModifier;->prefixLength:I

    .line 35
    iget p2, p0, Landroid/icu/impl/number/SimpleModifier;->prefixLength:I

    add-int/lit8 p2, p2, 0x3

    iput p2, p0, Landroid/icu/impl/number/SimpleModifier;->suffixOffset:I

    goto :goto_0

    .line 37
    :cond_0
    iput v0, p0, Landroid/icu/impl/number/SimpleModifier;->prefixLength:I

    const/4 p2, 0x2

    .line 38
    iput p2, p0, Landroid/icu/impl/number/SimpleModifier;->suffixOffset:I

    .line 40
    :goto_0
    iget p2, p0, Landroid/icu/impl/number/SimpleModifier;->prefixLength:I

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 41
    iget p2, p0, Landroid/icu/impl/number/SimpleModifier;->suffixOffset:I

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit16 p1, p1, -0x100

    iput p1, p0, Landroid/icu/impl/number/SimpleModifier;->suffixLength:I

    goto :goto_1

    .line 43
    :cond_1
    iput v0, p0, Landroid/icu/impl/number/SimpleModifier;->suffixLength:I

    :goto_1
    return-void
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/NumberStringBuilder;II)I
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/icu/impl/number/SimpleModifier;->field:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/number/SimpleModifier;->formatAsPrefixSuffix(Landroid/icu/impl/number/NumberStringBuilder;IILandroid/icu/text/NumberFormat$Field;)I

    move-result p0

    return p0
.end method

.method public formatAsPrefixSuffix(Landroid/icu/impl/number/NumberStringBuilder;IILandroid/icu/text/NumberFormat$Field;)I
    .locals 7

    .line 95
    iget v0, p0, Landroid/icu/impl/number/SimpleModifier;->prefixLength:I

    if-lez v0, :cond_0

    .line 96
    iget-object v3, p0, Landroid/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    const/4 v4, 0x2

    add-int/lit8 v5, v0, 0x2

    move-object v1, p1

    move v2, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;IILandroid/icu/text/NumberFormat$Field;)I

    .line 98
    :cond_0
    iget p2, p0, Landroid/icu/impl/number/SimpleModifier;->suffixLength:I

    if-lez p2, :cond_1

    .line 99
    iget v0, p0, Landroid/icu/impl/number/SimpleModifier;->prefixLength:I

    add-int v2, p3, v0

    iget-object v3, p0, Landroid/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    iget p3, p0, Landroid/icu/impl/number/SimpleModifier;->suffixOffset:I

    add-int/lit8 v4, p3, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int v5, p3, p2

    move-object v1, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;IILandroid/icu/text/NumberFormat$Field;)I

    .line 102
    :cond_1
    iget p1, p0, Landroid/icu/impl/number/SimpleModifier;->prefixLength:I

    iget p0, p0, Landroid/icu/impl/number/SimpleModifier;->suffixLength:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getCodePointCount()I
    .locals 4

    .line 60
    iget v0, p0, Landroid/icu/impl/number/SimpleModifier;->prefixLength:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 61
    iget-object v2, p0, Landroid/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    const/4 v3, 0x2

    add-int/2addr v0, v3

    invoke-static {v2, v3, v0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/2addr v1, v0

    .line 63
    :cond_0
    iget v0, p0, Landroid/icu/impl/number/SimpleModifier;->suffixLength:I

    if-lez v0, :cond_1

    .line 64
    iget-object v2, p0, Landroid/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    iget p0, p0, Landroid/icu/impl/number/SimpleModifier;->suffixOffset:I

    add-int/lit8 v3, p0, 0x1

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p0, v0

    invoke-static {v2, v3, p0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p0

    add-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method public getPrefixLength()I
    .locals 0

    .line 54
    iget p0, p0, Landroid/icu/impl/number/SimpleModifier;->prefixLength:I

    return p0
.end method

.method public isStrong()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Landroid/icu/impl/number/SimpleModifier;->strong:Z

    return p0
.end method
