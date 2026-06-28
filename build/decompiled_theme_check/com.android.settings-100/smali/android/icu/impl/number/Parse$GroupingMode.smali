.class public final enum Landroid/icu/impl/number/Parse$GroupingMode;
.super Ljava/lang/Enum;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/Parse$GroupingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/number/Parse$GroupingMode;

.field public static final enum DEFAULT:Landroid/icu/impl/number/Parse$GroupingMode;

.field public static final enum RESTRICTED:Landroid/icu/impl/number/Parse$GroupingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 105
    new-instance v0, Landroid/icu/impl/number/Parse$GroupingMode;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/number/Parse$GroupingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$GroupingMode;->DEFAULT:Landroid/icu/impl/number/Parse$GroupingMode;

    .line 114
    new-instance v0, Landroid/icu/impl/number/Parse$GroupingMode;

    const/4 v2, 0x1

    const-string v3, "RESTRICTED"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/number/Parse$GroupingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$GroupingMode;->RESTRICTED:Landroid/icu/impl/number/Parse$GroupingMode;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/impl/number/Parse$GroupingMode;

    .line 97
    sget-object v3, Landroid/icu/impl/number/Parse$GroupingMode;->DEFAULT:Landroid/icu/impl/number/Parse$GroupingMode;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/impl/number/Parse$GroupingMode;->RESTRICTED:Landroid/icu/impl/number/Parse$GroupingMode;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/number/Parse$GroupingMode;->$VALUES:[Landroid/icu/impl/number/Parse$GroupingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/number/Parse$GroupingMode;
    .locals 1

    .line 97
    const-class v0, Landroid/icu/impl/number/Parse$GroupingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/number/Parse$GroupingMode;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/number/Parse$GroupingMode;
    .locals 1

    .line 97
    sget-object v0, Landroid/icu/impl/number/Parse$GroupingMode;->$VALUES:[Landroid/icu/impl/number/Parse$GroupingMode;

    invoke-virtual {v0}, [Landroid/icu/impl/number/Parse$GroupingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/Parse$GroupingMode;

    return-object v0
.end method
