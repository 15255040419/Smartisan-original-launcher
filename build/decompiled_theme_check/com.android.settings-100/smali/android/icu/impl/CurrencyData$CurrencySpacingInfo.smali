.class public final Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencySpacingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;,
        Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

.field private static final DEFAULT_CTX_MATCH:Ljava/lang/String; = "[:digit:]"

.field private static final DEFAULT_CUR_MATCH:Ljava/lang/String; = "[:letter:]"

.field private static final DEFAULT_INSERT:Ljava/lang/String; = " "


# instance fields
.field public hasAfterCurrency:Z

.field public hasBeforeCurrency:Z

.field private final symbols:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    const-class v0, Landroid/icu/impl/CurrencyData;

    .line 105
    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    const-string v1, "[:letter:]"

    const-string v2, "[:digit:]"

    const-string v3, " "

    const-string v4, "[:letter:]"

    const-string v5, "[:digit:]"

    const-string v6, " "

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v0

    sget-object v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasBeforeCurrency:Z

    .line 58
    iput-boolean v0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasAfterCurrency:Z

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 6

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v0

    sget-object v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasBeforeCurrency:Z

    .line 58
    iput-boolean v0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasAfterCurrency:Z

    move v1, v0

    move v2, v1

    .line 77
    :goto_0
    sget-object v3, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v3}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v3

    if-ge v1, v3, :cond_1

    move v3, v2

    move v2, v0

    .line 78
    :goto_1
    sget-object v4, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v4}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 79
    iget-object v4, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v5, p1, v3

    aput-object v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getAfterSymbols()[Ljava/lang/String;
    .locals 1

    .line 98
    iget-object p0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getBeforeSymbols()[Ljava/lang/String;
    .locals 1

    .line 94
    iget-object p0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public setSymbolIfNull(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;Ljava/lang/String;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result p1

    .line 87
    invoke-virtual {p2}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result p2

    .line 88
    iget-object p0, p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    aget-object v0, p0, p1

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 89
    aget-object p0, p0, p1

    aput-object p3, p0, p2

    :cond_0
    return-void
.end method
