.class public Landroid/icu/impl/number/MultiplierImpl;
.super Ljava/lang/Object;
.source "MultiplierImpl.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# instance fields
.field final bigDecimalMultiplier:Ljava/math/BigDecimal;

.field final magnitudeMultiplier:I

.field final parent:Landroid/icu/impl/number/MicroPropsGenerator;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Landroid/icu/impl/number/MultiplierImpl;->magnitudeMultiplier:I

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroid/icu/impl/number/MultiplierImpl;->bigDecimalMultiplier:Ljava/math/BigDecimal;

    .line 19
    iput-object p1, p0, Landroid/icu/impl/number/MultiplierImpl;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    return-void
.end method

.method private constructor <init>(Landroid/icu/impl/number/MultiplierImpl;Landroid/icu/impl/number/MicroPropsGenerator;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget v0, p1, Landroid/icu/impl/number/MultiplierImpl;->magnitudeMultiplier:I

    iput v0, p0, Landroid/icu/impl/number/MultiplierImpl;->magnitudeMultiplier:I

    .line 30
    iget-object p1, p1, Landroid/icu/impl/number/MultiplierImpl;->bigDecimalMultiplier:Ljava/math/BigDecimal;

    iput-object p1, p0, Landroid/icu/impl/number/MultiplierImpl;->bigDecimalMultiplier:Ljava/math/BigDecimal;

    .line 31
    iput-object p2, p0, Landroid/icu/impl/number/MultiplierImpl;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Landroid/icu/impl/number/MultiplierImpl;->magnitudeMultiplier:I

    .line 24
    iput-object p1, p0, Landroid/icu/impl/number/MultiplierImpl;->bigDecimalMultiplier:Ljava/math/BigDecimal;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Landroid/icu/impl/number/MultiplierImpl;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    return-void
.end method


# virtual methods
.method public copyAndChain(Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;
    .locals 1

    .line 35
    new-instance v0, Landroid/icu/impl/number/MultiplierImpl;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/number/MultiplierImpl;-><init>(Landroid/icu/impl/number/MultiplierImpl;Landroid/icu/impl/number/MicroPropsGenerator;)V

    return-object v0
.end method

.method public processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .locals 2

    .line 40
    iget-object v0, p0, Landroid/icu/impl/number/MultiplierImpl;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 41
    iget v1, p0, Landroid/icu/impl/number/MultiplierImpl;->magnitudeMultiplier:I

    invoke-interface {p1, v1}, Landroid/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 42
    iget-object p0, p0, Landroid/icu/impl/number/MultiplierImpl;->bigDecimalMultiplier:Ljava/math/BigDecimal;

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p1, p0}, Landroid/icu/impl/number/DecimalQuantity;->multiplyBy(Ljava/math/BigDecimal;)V

    :cond_0
    return-object v0
.end method
