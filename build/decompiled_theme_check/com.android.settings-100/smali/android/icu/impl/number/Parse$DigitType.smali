.class final enum Landroid/icu/impl/number/Parse$DigitType;
.super Ljava/lang/Enum;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DigitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/Parse$DigitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/number/Parse$DigitType;

.field public static final enum EXPONENT:Landroid/icu/impl/number/Parse$DigitType;

.field public static final enum FRACTION:Landroid/icu/impl/number/Parse$DigitType;

.field public static final enum INTEGER:Landroid/icu/impl/number/Parse$DigitType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 188
    new-instance v0, Landroid/icu/impl/number/Parse$DigitType;

    const/4 v1, 0x0

    const-string v2, "INTEGER"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/number/Parse$DigitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$DigitType;->INTEGER:Landroid/icu/impl/number/Parse$DigitType;

    .line 189
    new-instance v0, Landroid/icu/impl/number/Parse$DigitType;

    const/4 v2, 0x1

    const-string v3, "FRACTION"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/number/Parse$DigitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$DigitType;->FRACTION:Landroid/icu/impl/number/Parse$DigitType;

    .line 190
    new-instance v0, Landroid/icu/impl/number/Parse$DigitType;

    const/4 v3, 0x2

    const-string v4, "EXPONENT"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/number/Parse$DigitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$DigitType;->EXPONENT:Landroid/icu/impl/number/Parse$DigitType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/impl/number/Parse$DigitType;

    .line 187
    sget-object v4, Landroid/icu/impl/number/Parse$DigitType;->INTEGER:Landroid/icu/impl/number/Parse$DigitType;

    aput-object v4, v0, v1

    sget-object v1, Landroid/icu/impl/number/Parse$DigitType;->FRACTION:Landroid/icu/impl/number/Parse$DigitType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/number/Parse$DigitType;->EXPONENT:Landroid/icu/impl/number/Parse$DigitType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/impl/number/Parse$DigitType;->$VALUES:[Landroid/icu/impl/number/Parse$DigitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/number/Parse$DigitType;
    .locals 1

    .line 187
    const-class v0, Landroid/icu/impl/number/Parse$DigitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/number/Parse$DigitType;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/number/Parse$DigitType;
    .locals 1

    .line 187
    sget-object v0, Landroid/icu/impl/number/Parse$DigitType;->$VALUES:[Landroid/icu/impl/number/Parse$DigitType;

    invoke-virtual {v0}, [Landroid/icu/impl/number/Parse$DigitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/Parse$DigitType;

    return-object v0
.end method
