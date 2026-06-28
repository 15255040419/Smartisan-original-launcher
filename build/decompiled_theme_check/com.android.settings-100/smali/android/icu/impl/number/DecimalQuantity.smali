.class public interface abstract Landroid/icu/impl/number/DecimalQuantity;
.super Ljava/lang/Object;
.source "DecimalQuantity.java"

# interfaces
.implements Landroid/icu/text/PluralRules$IFixedDecimal;


# virtual methods
.method public abstract adjustMagnitude(I)V
.end method

.method public abstract copyFrom(Landroid/icu/impl/number/DecimalQuantity;)V
.end method

.method public abstract createCopy()Landroid/icu/impl/number/DecimalQuantity;
.end method

.method public abstract getDigit(I)B
.end method

.method public abstract getLowerDisplayMagnitude()I
.end method

.method public abstract getMagnitude()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation
.end method

.method public abstract getPositionFingerprint()J
.end method

.method public abstract getStandardPlural(Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;
.end method

.method public abstract getUpperDisplayMagnitude()I
.end method

.method public abstract isInfinite()Z
.end method

.method public abstract isNaN()Z
.end method

.method public abstract isNegative()Z
.end method

.method public abstract isZero()Z
.end method

.method public abstract maxRepresentableDigits()I
.end method

.method public abstract multiplyBy(Ljava/math/BigDecimal;)V
.end method

.method public abstract populateUFieldPosition(Ljava/text/FieldPosition;)V
.end method

.method public abstract roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V
.end method

.method public abstract roundToInfinity()V
.end method

.method public abstract roundToMagnitude(ILjava/math/MathContext;)V
.end method

.method public abstract setFractionLength(II)V
.end method

.method public abstract setIntegerLength(II)V
.end method

.method public abstract setToBigDecimal(Ljava/math/BigDecimal;)V
.end method

.method public abstract toBigDecimal()Ljava/math/BigDecimal;
.end method

.method public abstract toDouble()D
.end method

.method public abstract toPlainString()Ljava/lang/String;
.end method
