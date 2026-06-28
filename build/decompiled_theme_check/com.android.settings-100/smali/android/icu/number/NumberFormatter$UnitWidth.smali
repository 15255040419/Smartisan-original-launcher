.class public final enum Landroid/icu/number/NumberFormatter$UnitWidth;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnitWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/number/NumberFormatter$UnitWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum HIDDEN:Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum ISO_CODE:Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 98
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const/4 v1, 0x0

    const-string v2, "NARROW"

    invoke-direct {v0, v2, v1}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 115
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const/4 v2, 0x1

    const-string v3, "SHORT"

    invoke-direct {v0, v3, v2}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 127
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const/4 v3, 0x2

    const-string v4, "FULL_NAME"

    invoke-direct {v0, v4, v3}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 139
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const/4 v4, 0x3

    const-string v5, "ISO_CODE"

    invoke-direct {v0, v5, v4}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 149
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const/4 v5, 0x4

    const-string v6, "HIDDEN"

    invoke-direct {v0, v6, v5}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Landroid/icu/number/NumberFormatter$UnitWidth;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 85
    sget-object v6, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    aput-object v6, v0, v1

    sget-object v1, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Landroid/icu/number/NumberFormatter$UnitWidth;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Landroid/icu/number/NumberFormatter$UnitWidth;

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->$VALUES:[Landroid/icu/number/NumberFormatter$UnitWidth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/number/NumberFormatter$UnitWidth;
    .locals 1

    .line 85
    const-class v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/number/NumberFormatter$UnitWidth;

    return-object p0
.end method

.method public static values()[Landroid/icu/number/NumberFormatter$UnitWidth;
    .locals 1

    .line 85
    sget-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->$VALUES:[Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v0}, [Landroid/icu/number/NumberFormatter$UnitWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/number/NumberFormatter$UnitWidth;

    return-object v0
.end method
