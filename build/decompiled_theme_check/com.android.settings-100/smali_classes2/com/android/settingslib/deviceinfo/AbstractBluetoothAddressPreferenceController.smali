.class public abstract Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractBluetoothAddressPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_BT_ADDRESS:Ljava/lang/String; = "bt_address"


# instance fields
.field private mBtAddress:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "bt_address"

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->mBtAddress:Landroidx/preference/Preference;

    .line 63
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->updateConnectivity()V

    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .locals 0

    .line 68
    sget-object p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bt_address"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 51
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected updateConnectivity()V
    .locals 2

    .line 74
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->mBtAddress:Landroidx/preference/Preference;

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->mBtAddress:Landroidx/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 81
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->mBtAddress:Landroidx/preference/Preference;

    sget v0, Lcom/android/settingslib/R$string;->status_unavailable:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_1
    return-void
.end method
