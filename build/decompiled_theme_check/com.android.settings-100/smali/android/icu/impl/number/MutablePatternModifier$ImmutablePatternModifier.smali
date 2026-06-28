.class public Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
.super Ljava/lang/Object;
.source "MutablePatternModifier.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/MutablePatternModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmutablePatternModifier"
.end annotation


# instance fields
.field final parent:Landroid/icu/impl/number/MicroPropsGenerator;

.field final pm:Landroid/icu/impl/number/ParameterizedModifier;

.field final rules:Landroid/icu/text/PluralRules;


# direct methods
.method constructor <init>(Landroid/icu/impl/number/ParameterizedModifier;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->pm:Landroid/icu/impl/number/ParameterizedModifier;

    .line 216
    iput-object p2, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    .line 217
    iput-object p3, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    return-void
.end method


# virtual methods
.method public applyToMicros(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 228
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    if-nez v0, :cond_0

    .line 229
    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->pm:Landroid/icu/impl/number/ParameterizedModifier;

    invoke-interface {p2}, Landroid/icu/impl/number/DecimalQuantity;->isNegative()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/icu/impl/number/ParameterizedModifier;->getModifier(Z)Landroid/icu/impl/number/Modifier;

    move-result-object p0

    iput-object p0, p1, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    goto :goto_0

    .line 232
    :cond_0
    invoke-interface {p2}, Landroid/icu/impl/number/DecimalQuantity;->createCopy()Landroid/icu/impl/number/DecimalQuantity;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Landroid/icu/impl/number/DecimalQuantity;->roundToInfinity()V

    .line 234
    iget-object v1, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->rules:Landroid/icu/text/PluralRules;

    invoke-interface {v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->getStandardPlural(Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    .line 235
    iget-object p0, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->pm:Landroid/icu/impl/number/ParameterizedModifier;

    invoke-interface {p2}, Landroid/icu/impl/number/DecimalQuantity;->isNegative()Z

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/icu/impl/number/ParameterizedModifier;->getModifier(ZLandroid/icu/impl/StandardPlural;)Landroid/icu/impl/number/Modifier;

    move-result-object p0

    iput-object p0, p1, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    :goto_0
    return-void
.end method

.method public processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 223
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->applyToMicros(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;)V

    return-object v0
.end method
