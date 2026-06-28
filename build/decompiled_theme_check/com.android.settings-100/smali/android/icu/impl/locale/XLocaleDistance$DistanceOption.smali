.class public final enum Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;
.super Ljava/lang/Enum;
.source "XLocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DistanceOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

.field public static final enum NORMAL:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

.field public static final enum SCRIPT_FIRST:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 739
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;->NORMAL:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    const/4 v2, 0x1

    const-string v3, "SCRIPT_FIRST"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;->SCRIPT_FIRST:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    sget-object v3, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;->NORMAL:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;->SCRIPT_FIRST:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;->$VALUES:[Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 739
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;
    .locals 1

    .line 739
    const-class v0, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;
    .locals 1

    .line 739
    sget-object v0, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;->$VALUES:[Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    invoke-virtual {v0}, [Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    return-object v0
.end method
