.class public Landroid/icu/impl/number/MicroProps;
.super Ljava/lang/Object;
.source "MicroProps.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# instance fields
.field public decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

.field private volatile exhausted:Z

.field public grouping:Landroid/icu/number/Grouper;

.field private final immutable:Z

.field public integerWidth:Landroid/icu/number/IntegerWidth;

.field public modInner:Landroid/icu/impl/number/Modifier;

.field public modMiddle:Landroid/icu/impl/number/Modifier;

.field public modOuter:Landroid/icu/impl/number/Modifier;

.field public padding:Landroid/icu/impl/number/Padder;

.field public rounding:Landroid/icu/number/Rounder;

.field public sign:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public symbols:Landroid/icu/text/DecimalFormatSymbols;

.field public useCurrency:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Landroid/icu/impl/number/MicroProps;->immutable:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 61
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 63
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .locals 0

    .line 47
    iget-boolean p1, p0, Landroid/icu/impl/number/MicroProps;->immutable:Z

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/icu/impl/number/MicroProps;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/number/MicroProps;

    return-object p0

    .line 49
    :cond_0
    iget-boolean p1, p0, Landroid/icu/impl/number/MicroProps;->exhausted:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Landroid/icu/impl/number/MicroProps;->exhausted:Z

    return-object p0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Cannot re-use a mutable MicroProps in the quantity chain"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
