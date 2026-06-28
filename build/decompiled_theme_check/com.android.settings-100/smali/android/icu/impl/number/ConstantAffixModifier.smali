.class public Landroid/icu/impl/number/ConstantAffixModifier;
.super Ljava/lang/Object;
.source "ConstantAffixModifier.java"

# interfaces
.implements Landroid/icu/impl/number/Modifier;


# static fields
.field public static final EMPTY:Landroid/icu/impl/number/ConstantAffixModifier;


# instance fields
.field private final field:Landroid/icu/text/NumberFormat$Field;

.field private final prefix:Ljava/lang/String;

.field private final strong:Z

.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Landroid/icu/impl/number/ConstantAffixModifier;

    invoke-direct {v0}, Landroid/icu/impl/number/ConstantAffixModifier;-><init>()V

    sput-object v0, Landroid/icu/impl/number/ConstantAffixModifier;->EMPTY:Landroid/icu/impl/number/ConstantAffixModifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->field:Landroid/icu/text/NumberFormat$Field;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->strong:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/NumberFormat$Field;Z)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 41
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 42
    :cond_1
    iput-object p2, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Landroid/icu/impl/number/ConstantAffixModifier;->field:Landroid/icu/text/NumberFormat$Field;

    .line 44
    iput-boolean p4, p0, Landroid/icu/impl/number/ConstantAffixModifier;->strong:Z

    return-void
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/NumberStringBuilder;II)I
    .locals 2

    .line 58
    iget-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/number/ConstantAffixModifier;->field:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p1, p3, v0, v1}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result p3

    .line 59
    iget-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    iget-object p0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->field:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p1, p2, v0, p0}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result p0

    add-int/2addr p3, p0

    return p3
.end method

.method public getCodePointCount()I
    .locals 3

    .line 70
    iget-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    iget-object p0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getPrefixLength()I
    .locals 0

    .line 65
    iget-object p0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public isStrong()Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->strong:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "<ConstantAffixModifier prefix:\'%s\' suffix:\'%s\'>"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
