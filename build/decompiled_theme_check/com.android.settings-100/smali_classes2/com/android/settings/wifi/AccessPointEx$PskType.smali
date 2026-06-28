.class final enum Lcom/android/settings/wifi/AccessPointEx$PskType;
.super Ljava/lang/Enum;
.source "AccessPointEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AccessPointEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/wifi/AccessPointEx$PskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/wifi/AccessPointEx$PskType;

.field public static final enum UNKNOWN:Lcom/android/settings/wifi/AccessPointEx$PskType;

.field public static final enum WPA:Lcom/android/settings/wifi/AccessPointEx$PskType;

.field public static final enum WPA2:Lcom/android/settings/wifi/AccessPointEx$PskType;

.field public static final enum WPA_WPA2:Lcom/android/settings/wifi/AccessPointEx$PskType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 69
    new-instance v0, Lcom/android/settings/wifi/AccessPointEx$PskType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/android/settings/wifi/AccessPointEx$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AccessPointEx$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPointEx$PskType;

    new-instance v0, Lcom/android/settings/wifi/AccessPointEx$PskType;

    const/4 v2, 0x1

    const-string v3, "WPA"

    invoke-direct {v0, v3, v2}, Lcom/android/settings/wifi/AccessPointEx$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AccessPointEx$PskType;->WPA:Lcom/android/settings/wifi/AccessPointEx$PskType;

    new-instance v0, Lcom/android/settings/wifi/AccessPointEx$PskType;

    const/4 v3, 0x2

    const-string v4, "WPA2"

    invoke-direct {v0, v4, v3}, Lcom/android/settings/wifi/AccessPointEx$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AccessPointEx$PskType;->WPA2:Lcom/android/settings/wifi/AccessPointEx$PskType;

    new-instance v0, Lcom/android/settings/wifi/AccessPointEx$PskType;

    const/4 v4, 0x3

    const-string v5, "WPA_WPA2"

    invoke-direct {v0, v5, v4}, Lcom/android/settings/wifi/AccessPointEx$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/AccessPointEx$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPointEx$PskType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/wifi/AccessPointEx$PskType;

    .line 68
    sget-object v5, Lcom/android/settings/wifi/AccessPointEx$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPointEx$PskType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/settings/wifi/AccessPointEx$PskType;->WPA:Lcom/android/settings/wifi/AccessPointEx$PskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wifi/AccessPointEx$PskType;->WPA2:Lcom/android/settings/wifi/AccessPointEx$PskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/wifi/AccessPointEx$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPointEx$PskType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/wifi/AccessPointEx$PskType;->$VALUES:[Lcom/android/settings/wifi/AccessPointEx$PskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointEx$PskType;
    .locals 1

    .line 68
    const-class v0, Lcom/android/settings/wifi/AccessPointEx$PskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/AccessPointEx$PskType;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/wifi/AccessPointEx$PskType;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/settings/wifi/AccessPointEx$PskType;->$VALUES:[Lcom/android/settings/wifi/AccessPointEx$PskType;

    invoke-virtual {v0}, [Lcom/android/settings/wifi/AccessPointEx$PskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/wifi/AccessPointEx$PskType;

    return-object v0
.end method
