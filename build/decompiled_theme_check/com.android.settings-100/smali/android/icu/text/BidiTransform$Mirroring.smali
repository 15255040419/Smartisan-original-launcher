.class public final enum Landroid/icu/text/BidiTransform$Mirroring;
.super Ljava/lang/Enum;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BidiTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mirroring"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/BidiTransform$Mirroring;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/BidiTransform$Mirroring;

.field public static final enum OFF:Landroid/icu/text/BidiTransform$Mirroring;

.field public static final enum ON:Landroid/icu/text/BidiTransform$Mirroring;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 82
    new-instance v0, Landroid/icu/text/BidiTransform$Mirroring;

    const/4 v1, 0x0

    const-string v2, "OFF"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/BidiTransform$Mirroring;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$Mirroring;->OFF:Landroid/icu/text/BidiTransform$Mirroring;

    .line 90
    new-instance v0, Landroid/icu/text/BidiTransform$Mirroring;

    const/4 v2, 0x1

    const-string v3, "ON"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/BidiTransform$Mirroring;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$Mirroring;->ON:Landroid/icu/text/BidiTransform$Mirroring;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/BidiTransform$Mirroring;

    .line 77
    sget-object v3, Landroid/icu/text/BidiTransform$Mirroring;->OFF:Landroid/icu/text/BidiTransform$Mirroring;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/text/BidiTransform$Mirroring;->ON:Landroid/icu/text/BidiTransform$Mirroring;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/BidiTransform$Mirroring;->$VALUES:[Landroid/icu/text/BidiTransform$Mirroring;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/BidiTransform$Mirroring;
    .locals 1

    .line 77
    const-class v0, Landroid/icu/text/BidiTransform$Mirroring;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/BidiTransform$Mirroring;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/BidiTransform$Mirroring;
    .locals 1

    .line 77
    sget-object v0, Landroid/icu/text/BidiTransform$Mirroring;->$VALUES:[Landroid/icu/text/BidiTransform$Mirroring;

    invoke-virtual {v0}, [Landroid/icu/text/BidiTransform$Mirroring;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/BidiTransform$Mirroring;

    return-object v0
.end method
