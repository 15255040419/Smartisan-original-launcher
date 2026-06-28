.class public final enum Landroid/icu/text/BidiTransform$Order;
.super Ljava/lang/Enum;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BidiTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/BidiTransform$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/BidiTransform$Order;

.field public static final enum LOGICAL:Landroid/icu/text/BidiTransform$Order;

.field public static final enum VISUAL:Landroid/icu/text/BidiTransform$Order;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    new-instance v0, Landroid/icu/text/BidiTransform$Order;

    const/4 v1, 0x0

    const-string v2, "LOGICAL"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/BidiTransform$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$Order;->LOGICAL:Landroid/icu/text/BidiTransform$Order;

    .line 64
    new-instance v0, Landroid/icu/text/BidiTransform$Order;

    const/4 v2, 0x1

    const-string v3, "VISUAL"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/BidiTransform$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$Order;->VISUAL:Landroid/icu/text/BidiTransform$Order;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/BidiTransform$Order;

    .line 56
    sget-object v3, Landroid/icu/text/BidiTransform$Order;->LOGICAL:Landroid/icu/text/BidiTransform$Order;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/text/BidiTransform$Order;->VISUAL:Landroid/icu/text/BidiTransform$Order;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/BidiTransform$Order;->$VALUES:[Landroid/icu/text/BidiTransform$Order;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/BidiTransform$Order;
    .locals 1

    .line 56
    const-class v0, Landroid/icu/text/BidiTransform$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/BidiTransform$Order;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/BidiTransform$Order;
    .locals 1

    .line 56
    sget-object v0, Landroid/icu/text/BidiTransform$Order;->$VALUES:[Landroid/icu/text/BidiTransform$Order;

    invoke-virtual {v0}, [Landroid/icu/text/BidiTransform$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/BidiTransform$Order;

    return-object v0
.end method
