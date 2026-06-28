.class public Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment23;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "SavedAccessPointsWifiSettings"


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 224
    new-instance v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment23;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 112
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 114
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v3, v2

    .line 116
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    if-eqz v3, :cond_4

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    .line 122
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 123
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_0

    .line 126
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 133
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    move v4, v5

    :goto_2
    if-ge v4, p1, :cond_4

    .line 135
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 136
    iget-boolean v7, v6, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v7, :cond_2

    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-nez v7, :cond_2

    goto :goto_4

    .line 139
    :cond_2
    new-instance v7, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v7, p0, v6}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 140
    iget-object v6, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 142
    invoke-virtual {v7, v5}, Lcom/android/settings/wifi/AccessPoint;->setShowSummary(Z)V

    if-eqz v6, :cond_3

    .line 144
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    :goto_3
    if-ge v9, v8, :cond_3

    .line 146
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    const v11, 0x7f08046c

    invoke-virtual {v7, v10, v11}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;I)Z

    .line 147
    invoke-virtual {v7, v2}, Lcom/android/settings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 151
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private initPreferences()V
    .locals 5

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wifi"

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 91
    iget-object v2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v2}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->constructSavedAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 97
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    const-string p0, "SavedAccessPointsWifiSettings"

    const-string v0, "Saved networks activity loaded, but there are no saved networks!"

    .line 101
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1

    .line 159
    iget-object p2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->removeDialog(I)V

    const/4 p2, 0x0

    .line 161
    iput-object p2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showDialog(I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "wifi"

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_0

    const-string v0, "wifi_ap_state"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x3

    if-ne p2, p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz p1, :cond_0

    .line 205
    iget-object p2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p1, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15006e

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 185
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez p1, :cond_1

    .line 175
    new-instance p1, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 182
    iget-object p0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .line 213
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 214
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    const/4 p0, 0x1

    return p0

    .line 217
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment23;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onResume()V

    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->initPreferences()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 190
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 197
    iget-object p0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
