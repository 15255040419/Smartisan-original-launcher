.class public final enum Landroid/icu/impl/number/CompactData$CompactType;
.super Ljava/lang/Enum;
.source "CompactData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/CompactData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompactType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/CompactData$CompactType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/number/CompactData$CompactType;

.field public static final enum CURRENCY:Landroid/icu/impl/number/CompactData$CompactType;

.field public static final enum DECIMAL:Landroid/icu/impl/number/CompactData$CompactType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Landroid/icu/impl/number/CompactData$CompactType;

    const/4 v1, 0x0

    const-string v2, "DECIMAL"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/number/CompactData$CompactType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/CompactData$CompactType;->DECIMAL:Landroid/icu/impl/number/CompactData$CompactType;

    new-instance v0, Landroid/icu/impl/number/CompactData$CompactType;

    const/4 v2, 0x1

    const-string v3, "CURRENCY"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/number/CompactData$CompactType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/CompactData$CompactType;->CURRENCY:Landroid/icu/impl/number/CompactData$CompactType;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/impl/number/CompactData$CompactType;

    .line 24
    sget-object v3, Landroid/icu/impl/number/CompactData$CompactType;->DECIMAL:Landroid/icu/impl/number/CompactData$CompactType;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/impl/number/CompactData$CompactType;->CURRENCY:Landroid/icu/impl/number/CompactData$CompactType;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/number/CompactData$CompactType;->$VALUES:[Landroid/icu/impl/number/CompactData$CompactType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/number/CompactData$CompactType;
    .locals 1

    .line 24
    const-class v0, Landroid/icu/impl/number/CompactData$CompactType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/number/CompactData$CompactType;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/number/CompactData$CompactType;
    .locals 1

    .line 24
    sget-object v0, Landroid/icu/impl/number/CompactData$CompactType;->$VALUES:[Landroid/icu/impl/number/CompactData$CompactType;

    invoke-virtual {v0}, [Landroid/icu/impl/number/CompactData$CompactType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/CompactData$CompactType;

    return-object v0
.end method
