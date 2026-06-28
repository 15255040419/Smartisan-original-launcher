.class public final enum Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecimalSeparatorDisplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

.field public static final enum ALWAYS:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

.field public static final enum AUTO:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 243
    new-instance v0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    invoke-direct {v0, v2, v1}, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 251
    new-instance v0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    const/4 v2, 0x1

    const-string v3, "ALWAYS"

    invoke-direct {v0, v3, v2}, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 235
    sget-object v3, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->$VALUES:[Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;
    .locals 1

    .line 235
    const-class v0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    return-object p0
.end method

.method public static values()[Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;
    .locals 1

    .line 235
    sget-object v0, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->$VALUES:[Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-virtual {v0}, [Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    return-object v0
.end method
