.class public final enum Landroid/icu/text/TimeZoneNames$NameType;
.super Ljava/lang/Enum;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/TimeZoneNames$NameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 89
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v1, 0x0

    const-string v2, "LONG_GENERIC"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    .line 93
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v2, 0x1

    const-string v3, "LONG_STANDARD"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .line 97
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v3, 0x2

    const-string v4, "LONG_DAYLIGHT"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 101
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v4, 0x3

    const-string v5, "SHORT_GENERIC"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    .line 105
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v5, 0x4

    const-string v6, "SHORT_STANDARD"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .line 109
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v6, 0x5

    const-string v7, "SHORT_DAYLIGHT"

    invoke-direct {v0, v7, v6}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 113
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v7, 0x6

    const-string v8, "EXEMPLAR_LOCATION"

    invoke-direct {v0, v8, v7}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    .line 85
    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v8, v0, v1

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v7

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->$VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

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

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneNames$NameType;
    .locals 1

    .line 85
    const-class v0, Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/TimeZoneNames$NameType;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/TimeZoneNames$NameType;
    .locals 1

    .line 85
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->$VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0}, [Landroid/icu/text/TimeZoneNames$NameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method
