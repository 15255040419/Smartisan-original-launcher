.class synthetic Lcom/android/settings/wifi/AccessPointInfo$1;
.super Ljava/lang/Object;
.source "AccessPointInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AccessPointInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 163
    invoke-static {}, Lcom/android/settings/wifi/AccessPoint$PskType;->values()[Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPointInfo$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/wifi/AccessPointInfo$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    sget-object v1, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/settings/wifi/AccessPointInfo$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    sget-object v1, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/settings/wifi/AccessPointInfo$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    sget-object v1, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/settings/wifi/AccessPointInfo$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    sget-object v1, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
