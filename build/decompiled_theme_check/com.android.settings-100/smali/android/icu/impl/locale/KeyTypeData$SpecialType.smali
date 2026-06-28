.class final enum Landroid/icu/impl/locale/KeyTypeData$SpecialType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SpecialType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/locale/KeyTypeData$SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum PRIVATE_USE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum RG_KEY_VALUE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum SUBDIVISION_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;


# instance fields
.field handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 86
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData$1;)V

    const/4 v3, 0x0

    const-string v4, "CODEPOINTS"

    invoke-direct {v0, v4, v3, v1}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 87
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData$1;)V

    const/4 v4, 0x1

    const-string v5, "REORDER_CODE"

    invoke-direct {v0, v5, v4, v1}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 88
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData$1;)V

    const/4 v5, 0x2

    const-string v6, "RG_KEY_VALUE"

    invoke-direct {v0, v6, v5, v1}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->RG_KEY_VALUE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 89
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$SubdivisionKeyValueTypeHandler;

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/KeyTypeData$SubdivisionKeyValueTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData$1;)V

    const/4 v6, 0x3

    const-string v7, "SUBDIVISION_CODE"

    invoke-direct {v0, v7, v6, v1}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->SUBDIVISION_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 90
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;

    invoke-direct {v1, v2}, Landroid/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData$1;)V

    const/4 v2, 0x4

    const-string v7, "PRIVATE_USE"

    invoke-direct {v0, v7, v2, v1}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->PRIVATE_USE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 85
    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->CODEPOINTS:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->REORDER_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->RG_KEY_VALUE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->SUBDIVISION_CODE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->PRIVATE_USE:Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .locals 1

    .line 85
    const-class v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .locals 1

    .line 85
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-virtual {v0}, [Landroid/icu/impl/locale/KeyTypeData$SpecialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    return-object v0
.end method
