.class Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;
.super Landroid/preference/Preference;
.source "SoftApControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SoftApControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiDevicePreference"
.end annotation


# static fields
.field protected static final REFRESH_BACKGROUND:I = 0x1


# instance fields
.field private mBackgroundId:I

.field private mItemContainer:Lsmartisanos/widget/ListContentItemCustom;

.field private mState:I

.field private mWifiDevice:Landroid/net/wifi/WifiDevice;

.field final synthetic this$0:Lcom/android/settings/wifi/SoftApControllerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SoftApControllerFragment;Landroid/content/Context;Landroid/net/wifi/WifiDevice;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    .line 291
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 285
    iput p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mState:I

    const/4 p1, 0x1

    .line 288
    iput p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mBackgroundId:I

    const/4 p1, 0x0

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->setPersistent(Z)V

    .line 293
    iput-object p3, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mWifiDevice:Landroid/net/wifi/WifiDevice;

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->update()V

    return-void
.end method

.method private setBackgroundStyle(I)V
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mItemContainer:Lsmartisanos/widget/ListContentItemCustom;

    if-nez p0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p0, p1}, Lsmartisanos/widget/ListContentItemCustom;->setBackgroundStyle(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 307
    instance-of v0, p1, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 309
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;

    .line 310
    invoke-virtual {p1}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->getWifiDevice()Landroid/net/wifi/WifiDevice;

    move-result-object p1

    iget-object p1, p1, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    .line 311
    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mWifiDevice:Landroid/net/wifi/WifiDevice;

    iget-object p0, p0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method getWifiDevice()Landroid/net/wifi/WifiDevice;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mWifiDevice:Landroid/net/wifi/WifiDevice;

    return-object p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 344
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 345
    iget p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mBackgroundId:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->setBackgroundStyle(I)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d02c0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a05fc

    .line 337
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemCustom;

    iput-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mItemContainer:Lsmartisanos/widget/ListContentItemCustom;

    .line 338
    iget-object p0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mItemContainer:Lsmartisanos/widget/ListContentItemCustom;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ListContentItemCustom;->setShadowShouldProjects(Z)V

    return-object p1
.end method

.method setBackgroundId(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mBackgroundId:I

    return-void
.end method

.method update()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mWifiDevice:Landroid/net/wifi/WifiDevice;

    iget-object v0, v0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    iget-object v1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mWifiDevice:Landroid/net/wifi/WifiDevice;

    iget v1, v1, Landroid/net/wifi/WifiDevice;->deviceState:I

    iget-object v2, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mWifiDevice:Landroid/net/wifi/WifiDevice;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$700(Lcom/android/settings/wifi/SoftApControllerFragment;ILandroid/net/wifi/WifiDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->notifyHierarchyChanged()V

    return-void
.end method

.method update(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mState:I

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->update()V

    return-void
.end method

.method update(Landroid/net/wifi/WifiDevice;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mWifiDevice:Landroid/net/wifi/WifiDevice;

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->update()V

    return-void
.end method

.method updateSummary()V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    iget-object v1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mWifiDevice:Landroid/net/wifi/WifiDevice;

    iget v1, v1, Landroid/net/wifi/WifiDevice;->deviceState:I

    iget-object v2, p0, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->mWifiDevice:Landroid/net/wifi/WifiDevice;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$700(Lcom/android/settings/wifi/SoftApControllerFragment;ILandroid/net/wifi/WifiDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SoftApControllerFragment$WifiDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
