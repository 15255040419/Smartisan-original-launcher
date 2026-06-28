.class public Landroid/icu/number/Notation;
.super Ljava/lang/Object;
.source "Notation.java"


# static fields
.field private static final COMPACT_LONG:Landroid/icu/number/CompactNotation;

.field private static final COMPACT_SHORT:Landroid/icu/number/CompactNotation;

.field private static final ENGINEERING:Landroid/icu/number/ScientificNotation;

.field private static final SCIENTIFIC:Landroid/icu/number/ScientificNotation;

.field private static final SIMPLE:Landroid/icu/number/SimpleNotation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Landroid/icu/number/ScientificNotation;

    sget-object v1, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v3, v1}, Landroid/icu/number/ScientificNotation;-><init>(IZILandroid/icu/number/NumberFormatter$SignDisplay;)V

    sput-object v0, Landroid/icu/number/Notation;->SCIENTIFIC:Landroid/icu/number/ScientificNotation;

    .line 20
    new-instance v0, Landroid/icu/number/ScientificNotation;

    sget-object v1, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    const/4 v4, 0x3

    invoke-direct {v0, v4, v2, v3, v1}, Landroid/icu/number/ScientificNotation;-><init>(IZILandroid/icu/number/NumberFormatter$SignDisplay;)V

    sput-object v0, Landroid/icu/number/Notation;->ENGINEERING:Landroid/icu/number/ScientificNotation;

    .line 21
    new-instance v0, Landroid/icu/number/CompactNotation;

    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {v0, v1}, Landroid/icu/number/CompactNotation;-><init>(Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    sput-object v0, Landroid/icu/number/Notation;->COMPACT_SHORT:Landroid/icu/number/CompactNotation;

    .line 22
    new-instance v0, Landroid/icu/number/CompactNotation;

    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {v0, v1}, Landroid/icu/number/CompactNotation;-><init>(Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    sput-object v0, Landroid/icu/number/Notation;->COMPACT_LONG:Landroid/icu/number/CompactNotation;

    .line 23
    new-instance v0, Landroid/icu/number/SimpleNotation;

    invoke-direct {v0}, Landroid/icu/number/SimpleNotation;-><init>()V

    sput-object v0, Landroid/icu/number/Notation;->SIMPLE:Landroid/icu/number/SimpleNotation;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compactLong()Landroid/icu/number/CompactNotation;
    .locals 1

    .line 154
    sget-object v0, Landroid/icu/number/Notation;->COMPACT_LONG:Landroid/icu/number/CompactNotation;

    return-object v0
.end method

.method public static compactShort()Landroid/icu/number/CompactNotation;
    .locals 1

    .line 127
    sget-object v0, Landroid/icu/number/Notation;->COMPACT_SHORT:Landroid/icu/number/CompactNotation;

    return-object v0
.end method

.method public static engineering()Landroid/icu/number/ScientificNotation;
    .locals 1

    .line 81
    sget-object v0, Landroid/icu/number/Notation;->ENGINEERING:Landroid/icu/number/ScientificNotation;

    return-object v0
.end method

.method public static scientific()Landroid/icu/number/ScientificNotation;
    .locals 1

    .line 54
    sget-object v0, Landroid/icu/number/Notation;->SCIENTIFIC:Landroid/icu/number/ScientificNotation;

    return-object v0
.end method

.method public static simple()Landroid/icu/number/SimpleNotation;
    .locals 1

    .line 183
    sget-object v0, Landroid/icu/number/Notation;->SIMPLE:Landroid/icu/number/SimpleNotation;

    return-object v0
.end method
