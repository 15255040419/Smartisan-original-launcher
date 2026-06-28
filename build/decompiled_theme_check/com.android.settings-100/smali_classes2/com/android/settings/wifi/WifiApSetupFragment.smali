.class public Lcom/android/settings/wifi/WifiApSetupFragment;
.super Lcom/android/settings/SupportFragment;
.source "WifiApSetupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field public static final OPEN_INDEX:I = 0x0

.field private static final SOFTAP_SSID_NAME_MAX_LENGTH_BYTES:I = 0x20

.field private static final TAG:Ljava/lang/String; = "WifiApSetupActivity"

.field public static final WPA2_INDEX:I = 0x2

.field public static final WPA_INDEX:I = 0x1

.field private static formats:[Ljava/lang/String;

.field private static mBandFormats:[Ljava/lang/String;


# instance fields
.field private mBand:Lsmartisanos/widget/ListContentItemText;

.field private mBandIndex:I

.field private mOriBandIndex:I

.field private mOriSecurityTypeIndex:I

.field private mPassword:Lsmartisanos/widget/editor/LabelEditor;

.field private mSecurity:Lsmartisanos/widget/ListContentItemText;

.field private mSecurityTypeIndex:I

.field private mSsid:Lsmartisanos/widget/editor/SimpleEditor;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    .line 57
    iput v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandIndex:I

    return-void
.end method

.method private getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .line 79
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSsid:Lsmartisanos/widget/editor/SimpleEditor;

    invoke-virtual {v1}, Lsmartisanos/widget/editor/SimpleEditor;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 88
    iget v1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandIndex:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 90
    iget v1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 106
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mPassword:Lsmartisanos/widget/editor/LabelEditor;

    invoke-virtual {v1}, Lsmartisanos/widget/editor/LabelEditor;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mPassword:Lsmartisanos/widget/editor/LabelEditor;

    invoke-virtual {p0}, Lsmartisanos/widget/editor/LabelEditor;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_1
    return-object v0

    .line 96
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 97
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mPassword:Lsmartisanos/widget/editor/LabelEditor;

    invoke-virtual {v1}, Lsmartisanos/widget/editor/LabelEditor;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mPassword:Lsmartisanos/widget/editor/LabelEditor;

    invoke-virtual {p0}, Lsmartisanos/widget/editor/LabelEditor;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 100
    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_3
    return-object v0

    .line 92
    :cond_4
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    return-object v0
.end method

.method private getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    .line 69
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    .line 71
    :cond_0
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getWifiApBandSettingValue()I
    .locals 3

    .line 321
    iget v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandIndex:I

    .line 323
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "wifi_ap_band"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WifiApSetupActivity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private getWifiApSecuritySettingValue()I
    .locals 3

    .line 310
    iget v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "wifi_ap_security"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WifiApSetupActivity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private showSecurityFields()V
    .locals 2

    .line 302
    iget v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    const v1, 0x7f0a02d8

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSetupFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 306
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSetupFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private validate()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSsid:Lsmartisanos/widget/editor/SimpleEditor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsmartisanos/widget/editor/SimpleEditor;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mPassword:Lsmartisanos/widget/editor/LabelEditor;

    .line 229
    invoke-virtual {v0}, Lsmartisanos/widget/editor/LabelEditor;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mPassword:Lsmartisanos/widget/editor/LabelEditor;

    invoke-virtual {v0}, Lsmartisanos/widget/editor/LabelEditor;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v2, 0x3f

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 232
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    invoke-virtual {p0, v1}, Lsmartisanos/widget/SmartisanButton;->setEnabled(Z)V

    goto :goto_1

    .line 230
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/SmartisanButton;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->validate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 3

    .line 333
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->finish()V

    .line 334
    iget v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    iget v1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mOriSecurityTypeIndex:I

    if-eq v0, v1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mOriSecurityTypeIndex:I

    const-string v2, "wifi_ap_security"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandIndex:I

    iget v1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mOriBandIndex:I

    if-eq v0, v1, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mOriBandIndex:I

    const-string v1, "wifi_ap_band"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const-string v0, "wifi_saved_state"

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getActivityStackView()Lsmartisanos/view/ActivityStackView;

    .line 239
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne p1, v1, :cond_4

    .line 240
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 251
    :try_start_0
    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WifiApSetupActivity"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :goto_0
    if-ne v3, v2, :cond_0

    .line 256
    invoke-static {v1, v0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/settings/MultiSDKAdapter;->setWifiApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 260
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4, p1, v2}, Lcom/android/settings/MultiSDKAdapter;->setWifiApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    if-ne v3, v2, :cond_2

    .line 262
    invoke-static {v1, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 267
    :cond_2
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_ap_config"

    .line 268
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    .line 269
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiApSetupFragment;->setFragmentResult(ILandroid/os/Bundle;)V

    .line 271
    :cond_3
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->finish()V

    goto :goto_2

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurity:Lsmartisanos/widget/ListContentItemText;

    const v1, 0x7f1218d3

    const/4 v6, 0x2

    if-ne p1, v0, :cond_5

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Integer;

    aput-object v5, p1, v4

    aput-object v3, p1, v2

    .line 273
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v6

    .line 274
    new-instance v0, Lcom/android/settings/OptionsInfo;

    sget-object v2, Lcom/android/settings/wifi/WifiApSetupFragment;->formats:[Ljava/lang/String;

    sget-object v3, Lcom/android/settings/OptionsInfo$SaveTargetTable;->Global:Lcom/android/settings/OptionsInfo$SaveTargetTable;

    const-string v4, "wifi_ap_security"

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/android/settings/OptionsInfo;-><init>([Ljava/lang/String;[Ljava/lang/Object;Lcom/android/settings/OptionsInfo$SaveTargetTable;Ljava/lang/String;)V

    .line 277
    iget p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f12186a

    .line 278
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSetupFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {p0, v0, p1, v2, v1}, Lcom/android/settings/Utils;->launchOptionsActivity(Lcom/android/settings/SupportFragment;Lcom/android/settings/OptionsInfo;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBand:Lsmartisanos/widget/ListContentItemText;

    if-ne p1, v0, :cond_6

    new-array p1, v6, [Ljava/lang/Integer;

    aput-object v5, p1, v4

    aput-object v3, p1, v2

    .line 282
    new-instance v0, Lcom/android/settings/OptionsInfo;

    sget-object v2, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandFormats:[Ljava/lang/String;

    sget-object v3, Lcom/android/settings/OptionsInfo$SaveTargetTable;->Global:Lcom/android/settings/OptionsInfo$SaveTargetTable;

    const-string v4, "wifi_ap_band"

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/android/settings/OptionsInfo;-><init>([Ljava/lang/String;[Ljava/lang/Object;Lcom/android/settings/OptionsInfo$SaveTargetTable;Ljava/lang/String;)V

    .line 284
    iget p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandIndex:I

    .line 285
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f121776

    .line 286
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSetupFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {p0, v0, p1, v2, v1}, Lcom/android/settings/Utils;->launchOptionsActivity(Lcom/android/settings/SupportFragment;Lcom/android/settings/OptionsInfo;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0d034a

    .line 118
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mRootView:Landroid/view/View;

    const-string p1, "wifi"

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApSetupFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030116

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/wifi/WifiApSetupFragment;->formats:[Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030115

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandFormats:[Ljava/lang/String;

    const p1, 0x7f0a07e6

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApSetupFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurity:Lsmartisanos/widget/ListContentItemText;

    .line 125
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurity:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01a2

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApSetupFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBand:Lsmartisanos/widget/ListContentItemText;

    .line 128
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBand:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0889

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApSetupFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/editor/SimpleEditor;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSsid:Lsmartisanos/widget/editor/SimpleEditor;

    .line 131
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSsid:Lsmartisanos/widget/editor/SimpleEditor;

    invoke-virtual {p1}, Lsmartisanos/widget/editor/SimpleEditor;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x1

    new-array v0, p2, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v1, v0, p3

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const p1, 0x7f0a06e7

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApSetupFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/editor/LabelEditor;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mPassword:Lsmartisanos/widget/editor/LabelEditor;

    .line 135
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mPassword:Lsmartisanos/widget/editor/LabelEditor;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/editor/LabelEditor;->setEditorType(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_ap_config"

    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "from_search"

    .line 139
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_4

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSsid:Lsmartisanos/widget/editor/SimpleEditor;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/editor/SimpleEditor;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSsid:Lsmartisanos/widget/editor/SimpleEditor;

    invoke-virtual {p1}, Lsmartisanos/widget/editor/SimpleEditor;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 148
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSetupFragment;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    iput p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mOriSecurityTypeIndex:I

    .line 149
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurity:Lsmartisanos/widget/ListContentItemText;

    sget-object v0, Lcom/android/settings/wifi/WifiApSetupFragment;->formats:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 150
    iget p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mPassword:Lsmartisanos/widget/editor/LabelEditor;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lsmartisanos/widget/editor/LabelEditor;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez p1, :cond_3

    .line 156
    iput p3, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandIndex:I

    goto :goto_0

    .line 158
    :cond_3
    iput p2, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandIndex:I

    .line 160
    :goto_0
    iget p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandIndex:I

    iput p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mOriBandIndex:I

    .line 161
    iget-object p2, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBand:Lsmartisanos/widget/ListContentItemText;

    sget-object v0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandFormats:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mOriSecurityTypeIndex:I

    const-string v0, "wifi_ap_security"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mOriBandIndex:I

    const-string v0, "wifi_ap_band"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 172
    iget-object p2, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    .line 178
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBand:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p1, p3}, Lsmartisanos/widget/ListContentItemText;->setVisibility(I)V

    goto :goto_3

    .line 174
    :cond_6
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result p3

    const-string v0, ""

    if-nez p3, :cond_7

    const-string p3, "Device do not support 5GHz "

    goto :goto_2

    :cond_7
    move-object p3, v0

    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_8

    const-string v0, " NO country code"

    :cond_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " forbid 5GHz"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiApSetupActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBand:Lsmartisanos/widget/ListContentItemText;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lsmartisanos/widget/ListContentItemText;->setVisibility(I)V

    .line 181
    :goto_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSsid:Lsmartisanos/widget/editor/SimpleEditor;

    invoke-virtual {p1}, Lsmartisanos/widget/editor/SimpleEditor;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mPassword:Lsmartisanos/widget/editor/LabelEditor;

    const/16 p2, 0x91

    invoke-virtual {p1, p2}, Lsmartisanos/widget/editor/LabelEditor;->setInputType(I)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mPassword:Lsmartisanos/widget/editor/LabelEditor;

    invoke-virtual {p1}, Lsmartisanos/widget/editor/LabelEditor;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->showSecurityFields()V

    .line 189
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onSupportInvisible()V
    .locals 0

    .line 222
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->hideSoftInput()V

    return-void
.end method

.method public onSupportVisible()V
    .locals 3

    .line 208
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    .line 209
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getWifiApSecuritySettingValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    .line 210
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurity:Lsmartisanos/widget/ListContentItemText;

    sget-object v1, Lcom/android/settings/wifi/WifiApSetupFragment;->formats:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSecurityTypeIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->getWifiApBandSettingValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandIndex:I

    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBand:Lsmartisanos/widget/ListContentItemText;

    sget-object v1, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandFormats:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBandIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mSsid:Lsmartisanos/widget/editor/SimpleEditor;

    invoke-virtual {v0}, Lsmartisanos/widget/editor/SimpleEditor;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSetupFragment;->showSoftInput(Landroid/view/View;)V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->showSecurityFields()V

    .line 217
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->validate()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 194
    invoke-super {p0, p1, p2}, Lcom/android/settings/SupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 195
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    const/4 p2, 0x4

    const v0, 0x7f121858

    invoke-virtual {p1, p2, v0}, Lsmartisanos/widget/TitleBar;->addRightButton(II)Lsmartisanos/widget/SmartisanButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    .line 196
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mRightBtn:Lsmartisanos/widget/SmartisanButton;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SmartisanButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApSetupFragment;->mBackView:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/settings/wifi/WifiApSetupFragment$1;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/WifiApSetupFragment$1;-><init>(Lcom/android/settings/wifi/WifiApSetupFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSetupFragment;->validate()V

    return-void
.end method
