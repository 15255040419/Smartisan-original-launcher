.class public final enum Landroid/icu/util/Region$RegionType;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/Region$RegionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/Region$RegionType;

.field public static final enum CONTINENT:Landroid/icu/util/Region$RegionType;

.field public static final enum DEPRECATED:Landroid/icu/util/Region$RegionType;

.field public static final enum GROUPING:Landroid/icu/util/Region$RegionType;

.field public static final enum SUBCONTINENT:Landroid/icu/util/Region$RegionType;

.field public static final enum TERRITORY:Landroid/icu/util/Region$RegionType;

.field public static final enum UNKNOWN:Landroid/icu/util/Region$RegionType;

.field public static final enum WORLD:Landroid/icu/util/Region$RegionType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 73
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->UNKNOWN:Landroid/icu/util/Region$RegionType;

    .line 78
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const/4 v2, 0x1

    const-string v3, "TERRITORY"

    invoke-direct {v0, v3, v2}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->TERRITORY:Landroid/icu/util/Region$RegionType;

    .line 83
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const/4 v3, 0x2

    const-string v4, "WORLD"

    invoke-direct {v0, v4, v3}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    .line 87
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const/4 v4, 0x3

    const-string v5, "CONTINENT"

    invoke-direct {v0, v5, v4}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    .line 91
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const/4 v5, 0x4

    const-string v6, "SUBCONTINENT"

    invoke-direct {v0, v6, v5}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    .line 96
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const/4 v6, 0x5

    const-string v7, "GROUPING"

    invoke-direct {v0, v7, v6}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    .line 101
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const/4 v7, 0x6

    const-string v8, "DEPRECATED"

    invoke-direct {v0, v8, v7}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/icu/util/Region$RegionType;

    .line 69
    sget-object v8, Landroid/icu/util/Region$RegionType;->UNKNOWN:Landroid/icu/util/Region$RegionType;

    aput-object v8, v0, v1

    sget-object v1, Landroid/icu/util/Region$RegionType;->TERRITORY:Landroid/icu/util/Region$RegionType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    aput-object v1, v0, v7

    sput-object v0, Landroid/icu/util/Region$RegionType;->$VALUES:[Landroid/icu/util/Region$RegionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/Region$RegionType;
    .locals 1

    .line 69
    const-class v0, Landroid/icu/util/Region$RegionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/util/Region$RegionType;

    return-object p0
.end method

.method public static values()[Landroid/icu/util/Region$RegionType;
    .locals 1

    .line 69
    sget-object v0, Landroid/icu/util/Region$RegionType;->$VALUES:[Landroid/icu/util/Region$RegionType;

    invoke-virtual {v0}, [Landroid/icu/util/Region$RegionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/Region$RegionType;

    return-object v0
.end method
