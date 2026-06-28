.class public Landroid/icu/text/NumberFormat$Field;
.super Ljava/text/Format$Field;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final CURRENCY:Landroid/icu/text/NumberFormat$Field;

.field public static final DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

.field public static final EXPONENT:Landroid/icu/text/NumberFormat$Field;

.field public static final EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

.field public static final EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

.field public static final FRACTION:Landroid/icu/text/NumberFormat$Field;

.field public static final GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

.field public static final INTEGER:Landroid/icu/text/NumberFormat$Field;

.field public static final PERCENT:Landroid/icu/text/NumberFormat$Field;

.field public static final PERMILLE:Landroid/icu/text/NumberFormat$Field;

.field public static final SIGN:Landroid/icu/text/NumberFormat$Field;

.field static final serialVersionUID:J = -0x3ead070c1cf65f72L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1745
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "sign"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    .line 1749
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "integer"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    .line 1753
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "fraction"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    .line 1757
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "exponent"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    .line 1761
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "exponent sign"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    .line 1765
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "exponent symbol"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    .line 1769
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "decimal separator"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .line 1772
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "grouping separator"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .line 1776
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "percent"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    .line 1780
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "per mille"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    .line 1784
    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string v1, "currency"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1791
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1800
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1801
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 1802
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1803
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 1804
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1805
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 1806
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1807
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 1808
    :cond_3
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1809
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 1810
    :cond_4
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1811
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 1812
    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1813
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 1814
    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1815
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 1816
    :cond_7
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1817
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 1818
    :cond_8
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1819
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 1820
    :cond_9
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1821
    sget-object p0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    return-object p0

    .line 1823
    :cond_a
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string v0, "An invalid object."

    invoke-direct {p0, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
