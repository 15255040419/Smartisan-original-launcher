.class public final enum Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
.super Ljava/lang/Enum;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpacingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

.field public static final enum AFTER:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

.field public static final enum BEFORE:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

.field public static final enum COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const/4 v1, 0x0

    const-string v2, "BEFORE"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const/4 v2, 0x1

    const-string v3, "AFTER"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const/4 v3, 0x2

    const-string v4, "COUNT"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    sget-object v4, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    aput-object v4, v0, v1

    sget-object v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->$VALUES:[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    .locals 1

    .line 60
    const-class v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    .locals 1

    .line 60
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->$VALUES:[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, [Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    return-object v0
.end method
