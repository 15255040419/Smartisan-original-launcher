.class public Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings/SettingsPreferenceFragment23;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static final DBG:Z = true

.field private static final DIALOG_CANCEL_CONNECT:I = 0x2

.field private static final DIALOG_CONFIRM_CONNECT:I = 0x5

.field private static final DIALOG_DELETE_GROUP:I = 0x4

.field private static final DIALOG_DISCONNECT:I = 0x1

.field private static final DIALOG_RENAME:I = 0x3

.field private static final MAX_P2P_NAME_LENGTH_BYTES:I = 0x20

.field private static final MENU_ID_RENAME:I = 0x2

.field private static final MENU_ID_SEARCH:I = 0x1

.field private static final SAVE_DEVICE_NAME:Ljava/lang/String; = "DEV_NAME"

.field private static final SAVE_DIALOG_PEER:Ljava/lang/String; = "PEER_STATE"

.field private static final SAVE_SELECTED_GROUP:Ljava/lang/String; = "GROUP_NAME"

.field private static final TAG:Ljava/lang/String; = "WifiP2pSettings"


# instance fields
.field private mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConfirmConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectedDevices:I

.field private mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeviceNameText:Landroid/widget/EditText;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLastGroupFormed:Z

.field private mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mPeersGroup:Landroid/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRenamefragment:Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;

.field private mSavedDeviceName:Ljava/lang/String;

.field private mSearchTips:Lsmartisanos/widget/TipsView;

.field private mSelectedGroup:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

.field private mSelectedGroupName:Ljava/lang/String;

.field private mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mStaDisconnectedScanIntervalWhenP2pConnected:I

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDeviceItem:Lsmartisanos/widget/ListContentItemText;

.field private mWifiP2pEnabled:Z

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pSearching:Z

.field private p2pSettingsDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment23;-><init>()V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    .line 123
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenamefragment:Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;

    const v0, 0x2bf20

    .line 128
    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mStaDisconnectedScanIntervalWhenP2pConnected:I

    .line 130
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string p0, "WifiP2pSettings"

    const-string v0, "Creating WifiP2pSettings ..."

    .line 183
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateSearchState(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->createRenameProfileDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    return-void
.end method

.method private createRenameProfileDialog(Ljava/lang/String;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenamefragment:Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenamefragment:Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;

    .line 371
    :cond_0
    new-instance v0, Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenamefragment:Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;

    .line 372
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenamefragment:Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;

    const v0, 0x7f121843

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;->setDialogTitle(Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenamefragment:Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;

    const v0, 0x7f1206c9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;->setPositiveButtonText(Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenamefragment:Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;->setPositiveButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenamefragment:Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "WifiP2pSettings"

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/bluetooth/DeviceRenameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handleP2pStateChanged()V
    .locals 2

    .line 629
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceItem:Lsmartisanos/widget/ListContentItemText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setEnabled(Z)V

    .line 633
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceItem:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setClickable(Z)V

    .line 634
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 637
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceItem:Lsmartisanos/widget/ListContentItemText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setEnabled(Z)V

    .line 640
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceItem:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setClickable(Z)V

    .line 641
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateSearchState(Z)V

    :goto_0
    return-void
.end method

.method private handlePeersChanged()V
    .locals 6

    .line 581
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    const/4 v0, 0x0

    .line 583
    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    const-string v0, "WifiP2pSettings"

    const-string v1, "List of available peers"

    .line 584
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 588
    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    goto :goto_0

    .line 590
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setBackgroundStyleForP2pPeers()V

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mConnectedDevices "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setBackgroundStyleForP2pPeers()V
    .locals 6

    .line 674
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 679
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setBackgroundId(I)V

    goto :goto_1

    :cond_1
    move v3, v2

    .line 681
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_2

    .line 682
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setBackgroundId(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 684
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setBackgroundId(I)V

    .line 685
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setBackgroundId(I)V

    :goto_1
    return-void
.end method

.method private startSearch()V
    .locals 3

    .line 651
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-nez v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$9;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private updateDevicePref()V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceItem:Lsmartisanos/widget/ListContentItemText;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceItem:Lsmartisanos/widget/ListContentItemText;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSearchState(Z)V
    .locals 0

    .line 646
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    .line 647
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSearchTips:Lsmartisanos/widget/TipsView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lsmartisanos/widget/TipsView;->setVisibility(I)V

    return-void
.end method

.method private utfToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 604
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 606
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 607
    aget-byte v4, p0, v2

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v2, 0x4

    .line 608
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    .line 609
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 612
    :cond_0
    aget-byte v4, p0, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_2
    if-ge v1, v3, :cond_2

    .line 619
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 621
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 623
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$onResume$0$WifiP2pSettings(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 406
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 188
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->onActivityCreated(Landroid/os/Bundle;)V

    const v0, 0x7f150070

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifip2p"

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 199
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const-string v2, "WifiP2pSettings"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v1, v0, v4, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    const-string v0, "Failed to set up connection with wifi p2p service"

    .line 203
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    goto :goto_0

    :cond_0
    const-string v0, "mWifiP2pManager is null !"

    .line 207
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "PEER_STATE"

    .line 210
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 212
    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "DEV_NAME"

    .line 214
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "GROUP_NAME"

    .line 217
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    .line 221
    :cond_4
    new-instance p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 257
    new-instance p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 276
    new-instance p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 295
    new-instance p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConfirmConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    .line 333
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 334
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d035b

    .line 337
    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0a4f

    .line 338
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemText;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceItem:Lsmartisanos/widget/ListContentItemText;

    const v0, 0x7f0a0a4e

    .line 339
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/TipsView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSearchTips:Lsmartisanos/widget/TipsView;

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2070032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 342
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    const v1, 0x106000d

    .line 343
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 344
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 345
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 346
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 347
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 348
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClipChildren(Z)V

    .line 349
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceItem:Lsmartisanos/widget/ListContentItemText;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    const v0, 0x7f0b0009

    const/4 v1, 0x2

    const v2, 0x7f12184b

    const v3, 0x7f1206b7

    const v4, 0x7f1206c9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    .line 451
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 455
    :goto_0
    iget v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    if-le v8, v7, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f12183f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    iget p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    sub-int/2addr p1, v7

    .line 457
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v7

    .line 456
    invoke-virtual {v8, v9, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v8, 0x7f12183e

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 461
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {v1, v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 462
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 463
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 466
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p2pSettingsDialog:Landroid/app/AlertDialog;

    .line 467
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p2pSettingsDialog:Landroid/app/AlertDialog;

    return-object p0

    :cond_2
    if-ne p1, v1, :cond_4

    const p1, 0x7f121838

    .line 470
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 474
    :goto_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {v8, v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 475
    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v5

    invoke-virtual {v2, p1, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p2pSettingsDialog:Landroid/app/AlertDialog;

    .line 480
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p2pSettingsDialog:Landroid/app/AlertDialog;

    return-object p0

    :cond_4
    const/4 v0, 0x3

    const/4 v1, 0x5

    if-ne p1, v0, :cond_8

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00de

    invoke-virtual {p1, v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0291

    .line 484
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    .line 485
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v7, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    const/16 v8, 0x20

    invoke-direct {v7, v8}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v7, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 488
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_3

    .line 490
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 491
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 494
    :cond_6
    :goto_3
    iput-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 495
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121843

    .line 496
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 497
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 500
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 502
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 503
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 506
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 532
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p2pSettingsDialog:Landroid/app/AlertDialog;

    return-object p1

    :cond_8
    if-ne p1, v1, :cond_a

    .line 535
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 538
    :goto_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f12183a

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    invoke-virtual {v1, v2, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConfirmConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 543
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p2pSettingsDialog:Landroid/app/AlertDialog;

    .line 544
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p2pSettingsDialog:Landroid/app/AlertDialog;

    return-object p0

    :cond_a
    return-object v6
.end method

.method public onDestroy()V
    .locals 2

    .line 420
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onDestroy()V

    .line 421
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 422
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiP2pSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 598
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 414
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onPause()V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 5

    .line 563
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 565
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    const/4 v0, 0x0

    .line 566
    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 571
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "WifiP2pSettings"

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " peer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceScreen;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-direct {v3, v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 574
    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    goto :goto_0

    .line 576
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setBackgroundStyleForP2pPeers()V

    .line 577
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mConnectedDevices "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .line 428
    instance-of v0, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_2

    .line 429
    move-object v0, p2

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 430
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 431
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 433
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 438
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment23;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 399
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment23;->onResume()V

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 401
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_LrckjNNjBXMF32vPpWCfu3mwOI;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$_LrckjNNjBXMF32vPpWCfu3mwOI;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestDeviceInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v1, "PEER_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEV_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz p0, :cond_2

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GROUP_NAME"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected showDialog(I)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->p2pSettingsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment23;->showDialog(I)V

    return-void
.end method
