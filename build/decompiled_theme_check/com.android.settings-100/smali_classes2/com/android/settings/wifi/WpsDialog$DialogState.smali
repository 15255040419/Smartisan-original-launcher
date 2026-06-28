.class final enum Lcom/android/settings/wifi/WpsDialog$DialogState;
.super Ljava/lang/Enum;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DialogState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/wifi/WpsDialog$DialogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/wifi/WpsDialog$DialogState;

.field public static final enum CONNECTED:Lcom/android/settings/wifi/WpsDialog$DialogState;

.field public static final enum WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

.field public static final enum WPS_FAILED:Lcom/android/settings/wifi/WpsDialog$DialogState;

.field public static final enum WPS_INIT:Lcom/android/settings/wifi/WpsDialog$DialogState;

.field public static final enum WPS_START:Lcom/android/settings/wifi/WpsDialog$DialogState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 71
    new-instance v0, Lcom/android/settings/wifi/WpsDialog$DialogState;

    const/4 v1, 0x0

    const-string v2, "WPS_INIT"

    invoke-direct {v0, v2, v1}, Lcom/android/settings/wifi/WpsDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/settings/wifi/WpsDialog$DialogState;

    .line 72
    new-instance v0, Lcom/android/settings/wifi/WpsDialog$DialogState;

    const/4 v2, 0x1

    const-string v3, "WPS_START"

    invoke-direct {v0, v3, v2}, Lcom/android/settings/wifi/WpsDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/WpsDialog$DialogState;

    .line 73
    new-instance v0, Lcom/android/settings/wifi/WpsDialog$DialogState;

    const/4 v3, 0x2

    const-string v4, "WPS_COMPLETE"

    invoke-direct {v0, v4, v3}, Lcom/android/settings/wifi/WpsDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

    .line 74
    new-instance v0, Lcom/android/settings/wifi/WpsDialog$DialogState;

    const/4 v4, 0x3

    const-string v5, "CONNECTED"

    invoke-direct {v0, v5, v4}, Lcom/android/settings/wifi/WpsDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->CONNECTED:Lcom/android/settings/wifi/WpsDialog$DialogState;

    .line 75
    new-instance v0, Lcom/android/settings/wifi/WpsDialog$DialogState;

    const/4 v5, 0x4

    const-string v6, "WPS_FAILED"

    invoke-direct {v0, v6, v5}, Lcom/android/settings/wifi/WpsDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/WpsDialog$DialogState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/wifi/WpsDialog$DialogState;

    .line 70
    sget-object v6, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/settings/wifi/WpsDialog$DialogState;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/WpsDialog$DialogState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->CONNECTED:Lcom/android/settings/wifi/WpsDialog$DialogState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/WpsDialog$DialogState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->$VALUES:[Lcom/android/settings/wifi/WpsDialog$DialogState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/WpsDialog$DialogState;
    .locals 1

    .line 70
    const-class v0, Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WpsDialog$DialogState;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/wifi/WpsDialog$DialogState;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->$VALUES:[Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, [Lcom/android/settings/wifi/WpsDialog$DialogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/wifi/WpsDialog$DialogState;

    return-object v0
.end method
