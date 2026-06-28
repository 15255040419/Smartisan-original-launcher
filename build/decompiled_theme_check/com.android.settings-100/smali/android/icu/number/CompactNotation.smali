.class public Landroid/icu/number/CompactNotation;
.super Landroid/icu/number/Notation;
.source "CompactNotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/CompactNotation$CompactHandler;
    }
.end annotation


# instance fields
.field final compactCustomData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;


# direct methods
.method constructor <init>(Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/icu/number/Notation;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Landroid/icu/number/CompactNotation;->compactCustomData:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Landroid/icu/number/CompactNotation;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroid/icu/number/Notation;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Landroid/icu/number/CompactNotation;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 49
    iput-object p1, p0, Landroid/icu/number/CompactNotation;->compactCustomData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method withLocaleData(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;
    .locals 10

    .line 55
    new-instance v9, Landroid/icu/number/CompactNotation$CompactHandler;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Landroid/icu/number/CompactNotation$CompactHandler;-><init>(Landroid/icu/number/CompactNotation;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;Landroid/icu/impl/number/MicroPropsGenerator;Landroid/icu/number/CompactNotation$1;)V

    return-object v9
.end method
