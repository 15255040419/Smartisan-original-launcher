.class public final enum Landroid/icu/util/GenderInfo$ListGenderStyle;
.super Ljava/lang/Enum;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListGenderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/GenderInfo$ListGenderStyle;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

.field public static final enum MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static fromNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/GenderInfo$ListGenderStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 101
    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    const/4 v1, 0x0

    const-string v2, "NEUTRAL"

    invoke-direct {v0, v2, v1}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    .line 111
    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    const/4 v2, 0x1

    const-string v3, "MIXED_NEUTRAL"

    invoke-direct {v0, v3, v2}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    .line 121
    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    const/4 v3, 0x2

    const-string v4, "MALE_TAINTS"

    invoke-direct {v0, v4, v3}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    const/4 v0, 0x3

    new-array v4, v0, [Landroid/icu/util/GenderInfo$ListGenderStyle;

    .line 92
    sget-object v5, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    aput-object v5, v4, v1

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    aput-object v1, v4, v2

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    aput-object v1, v4, v3

    sput-object v4, Landroid/icu/util/GenderInfo$ListGenderStyle;->$VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    .line 128
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    const-string v2, "neutral"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    const-string v2, "maleTaints"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    const-string v2, "mixedNeutral"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    if-eqz v0, :cond_0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown gender style name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;
    .locals 1

    .line 92
    const-class v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    return-object p0
.end method

.method public static values()[Landroid/icu/util/GenderInfo$ListGenderStyle;
    .locals 1

    .line 92
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->$VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v0}, [Landroid/icu/util/GenderInfo$ListGenderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/GenderInfo$ListGenderStyle;

    return-object v0
.end method
