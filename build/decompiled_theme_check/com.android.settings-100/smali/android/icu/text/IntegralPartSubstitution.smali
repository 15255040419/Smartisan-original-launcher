.class Landroid/icu/text/IntegralPartSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 0

    .line 1096
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 0

    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide p0
.end method

.method public composeRuleValue(DD)D
    .locals 0

    add-double/2addr p1, p3

    return-wide p1
.end method

.method tokenChar()C
    .locals 0

    const/16 p0, 0x3c

    return p0
.end method

.method public transformNumber(D)D
    .locals 0

    .line 1121
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public transformNumber(J)J
    .locals 0

    return-wide p1
.end method
