.class public Landroid/icu/impl/number/ConstantMultiFieldModifier;
.super Ljava/lang/Object;
.source "ConstantMultiFieldModifier.java"

# interfaces
.implements Landroid/icu/impl/number/Modifier;


# instance fields
.field protected final prefixChars:[C

.field protected final prefixFields:[Landroid/icu/text/NumberFormat$Field;

.field private final strong:Z

.field protected final suffixChars:[C

.field protected final suffixFields:[Landroid/icu/text/NumberFormat$Field;


# direct methods
.method public constructor <init>(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/NumberStringBuilder;Z)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/icu/impl/number/NumberStringBuilder;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    .line 25
    invoke-virtual {p2}, Landroid/icu/impl/number/NumberStringBuilder;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    .line 26
    invoke-virtual {p1}, Landroid/icu/impl/number/NumberStringBuilder;->toFieldArray()[Landroid/icu/text/NumberFormat$Field;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Landroid/icu/text/NumberFormat$Field;

    .line 27
    invoke-virtual {p2}, Landroid/icu/impl/number/NumberStringBuilder;->toFieldArray()[Landroid/icu/text/NumberFormat$Field;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Landroid/icu/text/NumberFormat$Field;

    .line 28
    iput-boolean p3, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->strong:Z

    return-void
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/NumberStringBuilder;II)I
    .locals 2

    .line 34
    iget-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    iget-object v1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p1, p3, v0, v1}, Landroid/icu/impl/number/NumberStringBuilder;->insert(I[C[Landroid/icu/text/NumberFormat$Field;)I

    move-result p3

    .line 35
    iget-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    iget-object p0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p1, p2, v0, p0}, Landroid/icu/impl/number/NumberStringBuilder;->insert(I[C[Landroid/icu/text/NumberFormat$Field;)I

    move-result p0

    add-int/2addr p3, p0

    return p3
.end method

.method public getCodePointCount()I
    .locals 3

    .line 46
    iget-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    iget-object p0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    array-length v1, p0

    .line 47
    invoke-static {p0, v2, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getPrefixLength()I
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    array-length p0, p0

    return p0
.end method

.method public isStrong()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->strong:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 57
    new-instance v0, Landroid/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/number/NumberStringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v0, v1, v1}, Landroid/icu/impl/number/ConstantMultiFieldModifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    .line 59
    invoke-virtual {p0}, Landroid/icu/impl/number/ConstantMultiFieldModifier;->getPrefixLength()I

    move-result p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/number/NumberStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    .line 61
    invoke-virtual {v0}, Landroid/icu/impl/number/NumberStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/number/NumberStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const-string p0, "<ConstantMultiFieldModifier prefix:\'%s\' suffix:\'%s\'>"

    .line 60
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
