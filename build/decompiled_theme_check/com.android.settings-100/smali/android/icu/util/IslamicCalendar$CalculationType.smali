.class public final enum Landroid/icu/util/IslamicCalendar$CalculationType;
.super Ljava/lang/Enum;
.source "IslamicCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/IslamicCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CalculationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/IslamicCalendar$CalculationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;


# instance fields
.field private bcpType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 898
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v1, 0x0

    const-string v2, "ISLAMIC"

    const-string v3, "islamic"

    invoke-direct {v0, v2, v1, v3}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 903
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v2, 0x1

    const-string v3, "ISLAMIC_CIVIL"

    const-string v4, "islamic-civil"

    invoke-direct {v0, v3, v2, v4}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 907
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v3, 0x2

    const-string v4, "ISLAMIC_UMALQURA"

    const-string v5, "islamic-umalqura"

    invoke-direct {v0, v4, v3, v5}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 912
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v4, 0x3

    const-string v5, "ISLAMIC_TBLA"

    const-string v6, "islamic-tbla"

    invoke-direct {v0, v5, v4, v6}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 894
    sget-object v5, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    aput-object v5, v0, v1

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->$VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 916
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 917
    iput-object p3, p0, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/IslamicCalendar$CalculationType;
    .locals 1

    .line 894
    const-class v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object p0
.end method

.method public static values()[Landroid/icu/util/IslamicCalendar$CalculationType;
    .locals 1

    .line 894
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->$VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {v0}, [Landroid/icu/util/IslamicCalendar$CalculationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object v0
.end method


# virtual methods
.method bcpType()Ljava/lang/String;
    .locals 0

    .line 921
    iget-object p0, p0, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType:Ljava/lang/String;

    return-object p0
.end method
