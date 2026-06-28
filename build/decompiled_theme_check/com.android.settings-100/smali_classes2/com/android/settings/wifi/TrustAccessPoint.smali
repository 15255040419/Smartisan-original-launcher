.class public Lcom/android/settings/wifi/TrustAccessPoint;
.super Lcom/android/settings/wifi/AccessPoint;
.source "TrustAccessPoint.java"


# instance fields
.field private isLandAndisExitdisplay:Z

.field private mBackgroundId:I

.field private mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentlyConnectedText:Landroid/widget/TextView;

.field private mEditMode:Z

.field private mIsUseStrictLockScreen:Z

.field private mItemContainer:Lsmartisanos/widget/ListContentItemCustom;

.field private mRemoveView:Landroid/widget/ImageView;

.field private mSwitch:Lsmartisanos/widget/SwitchEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mEditMode:Z

    const/4 p1, 0x3

    .line 34
    iput p1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mBackgroundId:I

    .line 38
    iput-boolean p3, p0, Lcom/android/settings/wifi/TrustAccessPoint;->isLandAndisExitdisplay:Z

    return-void
.end method

.method private isCurrentConnected()Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustAccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setRemoveImageViewVisibility()V
    .locals 5

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustAccessPoint;->isCurrentConnected()Z

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mCurrentlyConnectedText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 87
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mRemoveView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 90
    iget-boolean v4, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mEditMode:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mSwitch:Lsmartisanos/widget/SwitchEx;

    if-eqz v0, :cond_6

    .line 93
    iget-boolean v1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mEditMode:Z

    if-nez v1, :cond_4

    iget-boolean p0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mIsUseStrictLockScreen:Z

    if-eqz p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    invoke-virtual {v0, v2}, Lsmartisanos/widget/SwitchEx;->setVisibility(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0566

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/SwitchEx;

    iput-object v0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mSwitch:Lsmartisanos/widget/SwitchEx;

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsmartisanos/api/WifiConfigurationSmt;->get_isTrustedAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mSwitch:Lsmartisanos/widget/SwitchEx;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0556

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mRemoveView:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mRemoveView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mRemoveView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01f1

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mCurrentlyConnectedText:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustAccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 68
    iget-object v1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mCurrentlyConnectedText:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lsmartisanos/util/Utils;->setMaxTextSizeForTextView(Landroid/widget/TextView;F)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isUseStrictLockScreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mIsUseStrictLockScreen:Z

    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/TrustAccessPoint;->setRemoveImageViewVisibility()V

    const v0, 0x7f0a05fc

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemCustom;

    iput-object p1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mItemContainer:Lsmartisanos/widget/ListContentItemCustom;

    .line 72
    iget-object p1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mItemContainer:Lsmartisanos/widget/ListContentItemCustom;

    iget p0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mBackgroundId:I

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemCustom;->setBackgroundStyle(I)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustAccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    iget-boolean p0, p0, Lcom/android/settings/wifi/TrustAccessPoint;->isLandAndisExitdisplay:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const p0, 0x7f0d030b

    .line 49
    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f0d030c

    .line 51
    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundId(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mBackgroundId:I

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mEditMode:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustAccessPoint;->notifyChanged()V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setRemovedImageOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/wifi/TrustAccessPoint;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
