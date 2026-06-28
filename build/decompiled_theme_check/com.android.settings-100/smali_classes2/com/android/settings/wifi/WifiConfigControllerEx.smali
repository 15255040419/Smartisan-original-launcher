.class public Lcom/android/settings/wifi/WifiConfigControllerEx;
.super Ljava/lang/Object;
.source "WifiConfigControllerEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final PROXY_MODE_AUTO:I = 0x2

.field private static final PROXY_MODE_MANUAL:I = 0x1

.field private static final PROXY_MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field protected static final TAG_DNS1:I = 0x10

.field protected static final TAG_DNS2:I = 0x11

.field protected static final TAG_GATEWAY:I = 0xe

.field protected static final TAG_IP_ADDRESS:I = 0xd

.field protected static final TAG_NETWORK_PREFIX_LEN:I = 0xf

.field protected static final TAG_PROXY_EXCLUSION:I = 0xc

.field protected static final TAG_PROXY_HOST:I = 0xa

.field protected static final TAG_PROXY_MODE:I = 0x12

.field protected static final TAG_PROXY_PAC:I = 0x13

.field protected static final TAG_PROXY_PORT:I = 0xb


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mContext:Landroid/content/Context;

.field private mDNS1:Lsmartisanos/widget/ListContentItemText;

.field private mDNS2:Lsmartisanos/widget/ListContentItemText;

.field private mEditor:Landroid/widget/EditText;

.field private mFragment:Lcom/android/settings/SupportFragment;

.field private mGateway:Lsmartisanos/widget/ListContentItemText;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpAddress:Lsmartisanos/widget/ListContentItemText;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mNetworkPrefixLen:Lsmartisanos/widget/ListContentItemText;

.field private mProxyExclusionlist:Lsmartisanos/widget/ListContentItemText;

.field private mProxyHostname:Lsmartisanos/widget/ListContentItemText;

.field private mProxyManualContainer:Landroid/widget/LinearLayout;

.field private mProxyMode:Lsmartisanos/widget/ListContentItemText;

.field private mProxyPac:Lsmartisanos/widget/ListContentItemText;

.field private mProxyPacContainer:Landroid/widget/LinearLayout;

.field private mProxyPort:Lsmartisanos/widget/ListContentItemText;

.field private mProxySetDialog:Landroid/app/AlertDialog;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mStaticIpAddress:Lsmartisanos/widget/ListContentItemSwitch;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/android/settings/wifi/WifiConfigControllerEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigControllerEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SupportFragment;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 94
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 96
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 106
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySetDialog:Landroid/app/AlertDialog;

    .line 114
    invoke-virtual {p1}, Lcom/android/settings/SupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    .line 115
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mFragment:Lcom/android/settings/SupportFragment;

    .line 116
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move p3, p1

    goto :goto_0

    .line 117
    :cond_0
    iget p3, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    :goto_0
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPointSecurity:I

    .line 120
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p3, v0

    .line 122
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 123
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    const v1, 0x7f121768

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    :cond_2
    const p3, 0x7f0a075b

    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/ListContentItemText;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyMode:Lsmartisanos/widget/ListContentItemText;

    .line 127
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyMode:Lsmartisanos/widget/ListContentItemText;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lsmartisanos/widget/ListContentItemText;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyMode:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p3, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0761

    .line 129
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPacContainer:Landroid/widget/LinearLayout;

    const p3, 0x7f0a0760

    .line 130
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/ListContentItemText;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPac:Lsmartisanos/widget/ListContentItemText;

    .line 131
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPac:Lsmartisanos/widget/ListContentItemText;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lsmartisanos/widget/ListContentItemText;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPac:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p3, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a075a

    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/ListContentItemText;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyHostname:Lsmartisanos/widget/ListContentItemText;

    .line 134
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyHostname:Lsmartisanos/widget/ListContentItemText;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lsmartisanos/widget/ListContentItemText;->setTag(Ljava/lang/Object;)V

    .line 135
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyHostname:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p3, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a075f

    .line 136
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/ListContentItemText;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPort:Lsmartisanos/widget/ListContentItemText;

    .line 137
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPort:Lsmartisanos/widget/ListContentItemText;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lsmartisanos/widget/ListContentItemText;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPort:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p3, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0758

    .line 139
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/ListContentItemText;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyExclusionlist:Lsmartisanos/widget/ListContentItemText;

    .line 140
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyExclusionlist:Lsmartisanos/widget/ListContentItemText;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lsmartisanos/widget/ListContentItemText;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyExclusionlist:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p3, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0762

    .line 142
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyManualContainer:Landroid/widget/LinearLayout;

    const p3, 0x7f0a0890

    .line 143
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mStaticIpAddress:Lsmartisanos/widget/ListContentItemSwitch;

    const p3, 0x7f0a0a4a

    .line 144
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/ListContentItemText;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    .line 145
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lsmartisanos/widget/ListContentItemText;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p3, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0a48

    .line 147
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/ListContentItemText;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mGateway:Lsmartisanos/widget/ListContentItemText;

    .line 148
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mGateway:Lsmartisanos/widget/ListContentItemText;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lsmartisanos/widget/ListContentItemText;->setTag(Ljava/lang/Object;)V

    .line 149
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mGateway:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p3, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0a4d

    .line 150
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/ListContentItemText;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mNetworkPrefixLen:Lsmartisanos/widget/ListContentItemText;

    .line 151
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mNetworkPrefixLen:Lsmartisanos/widget/ListContentItemText;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lsmartisanos/widget/ListContentItemText;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mNetworkPrefixLen:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p3, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0a46

    .line 153
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/ListContentItemText;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS1:Lsmartisanos/widget/ListContentItemText;

    .line 154
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS1:Lsmartisanos/widget/ListContentItemText;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lsmartisanos/widget/ListContentItemText;->setTag(Ljava/lang/Object;)V

    .line 155
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS1:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p3, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0a47

    .line 156
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisanos/widget/ListContentItemText;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS2:Lsmartisanos/widget/ListContentItemText;

    .line 157
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS2:Lsmartisanos/widget/ListContentItemText;

    const/16 p3, 0x11

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lsmartisanos/widget/ListContentItemText;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS2:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p2, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object p2

    sget-object p3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne p2, p3, :cond_4

    const/4 p1, 0x1

    .line 166
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object p2

    sget-object p3, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    .line 169
    :cond_5
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mStaticIpAddress:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p2, p1}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 170
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mStaticIpAddress:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p2, p0}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setStaticIpFieldsEnableState(Z)V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->showIpConfigFields()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->showProxyFields()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/settings/wifi/WifiConfigControllerEx;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConfigControllerEx;)Landroid/app/AlertDialog;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySetDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConfigControllerEx;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setProxyMode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiConfigControllerEx;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->ipAndProxyFieldsAreValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiConfigControllerEx;)Lcom/android/settings/SupportFragment;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mFragment:Lcom/android/settings/SupportFragment;

    return-object p0
.end method

.method private createDialogView()Landroid/view/View;
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPac:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemText;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00de

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0291

    .line 497
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mEditor:Landroid/widget/EditText;

    .line 498
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mEditor:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/WifiConfigControllerEx$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiConfigControllerEx$1;-><init>(Lcom/android/settings/wifi/WifiConfigControllerEx;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 514
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mEditor:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 515
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 516
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    return-object v1
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    const/4 p0, 0x0

    .line 377
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 8

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mStaticIpAddress:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 241
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 245
    sget-object v1, Lcom/android/settings/wifi/WifiConfigControllerEx;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid ip address :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyHostname:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPort:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v1}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyExclusionlist:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v2}, Lsmartisanos/widget/ListContentItemText;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    .line 255
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 257
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return v3

    .line 265
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPac:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v5}, Lsmartisanos/widget/ListContentItemText;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    .line 266
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_3

    .line 267
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v7

    .line 270
    :goto_2
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 271
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyHostname:Lsmartisanos/widget/ListContentItemText;

    if-eqz v6, :cond_5

    .line 273
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 274
    invoke-static {v0, v1, v2}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const v1, 0x7f120fb3

    :goto_3
    if-nez v1, :cond_4

    .line 279
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, v0, v4, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_4

    :cond_4
    return v3

    .line 283
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v6, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v6, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPac:Lsmartisanos/widget/ListContentItemText;

    if-eqz v1, :cond_7

    if-nez v5, :cond_6

    return v3

    .line 287
    :cond_6
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, v5}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 290
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, v0, v4, v2, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Landroid/net/StaticIpConfiguration;->staticHttpProxy:Landroid/net/ProxyInfo;

    const/4 p0, 0x1

    return p0
.end method

.method private promptConfigInvaild()V
    .locals 2

    .line 611
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12185c

    .line 612
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12185a

    .line 613
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiConfigControllerEx$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigControllerEx$6;-><init>(Lcom/android/settings/wifi/WifiConfigControllerEx;)V

    const p0, 0x7f12185b

    .line 614
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f121859

    const/4 v1, 0x0

    .line 620
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setAutoProxyVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 464
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPacContainer:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPacContainer:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setManualProxyVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 460
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyManualContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setProxyMode(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setManualProxyVisible(Z)V

    .line 485
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setAutoProxyVisible(Z)V

    .line 486
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyMode:Lsmartisanos/widget/ListContentItemText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    const v1, 0x7f120fbf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setSummary(Ljava/lang/CharSequence;)V

    .line 487
    sget-object p1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_0

    .line 478
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setManualProxyVisible(Z)V

    .line 479
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setAutoProxyVisible(Z)V

    .line 480
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyMode:Lsmartisanos/widget/ListContentItemText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    const v1, 0x7f120fbd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setSummary(Ljava/lang/CharSequence;)V

    .line 481
    sget-object p1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_0

    .line 472
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setManualProxyVisible(Z)V

    .line 473
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setAutoProxyVisible(Z)V

    .line 474
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyMode:Lsmartisanos/widget/ListContentItemText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    const v1, 0x7f120fbe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/ListContentItemText;->setSummary(Ljava/lang/CharSequence;)V

    .line 475
    sget-object p1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    :goto_0
    return-void
.end method

.method private setStaticIpFieldsEnableState(Z)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/ListContentItemText;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mGateway:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/ListContentItemText;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mNetworkPrefixLen:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/ListContentItemText;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS1:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/ListContentItemText;->setEnabled(Z)V

    .line 182
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS2:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p0, p1}, Lsmartisanos/widget/ListContentItemText;->setEnabled(Z)V

    return-void
.end method

.method private showIpConfigFields()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 393
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 395
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mNetworkPrefixLen:Lsmartisanos/widget/ListContentItemText;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 398
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    .line 397
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 401
    :cond_1
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mGateway:Lsmartisanos/widget/ListContentItemText;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 405
    :cond_2
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS1:Lsmartisanos/widget/ListContentItemText;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 409
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 410
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS2:Lsmartisanos/widget/ListContentItemText;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private showProxyFields()V
    .locals 5

    .line 419
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 424
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 426
    iget-object v2, v2, Landroid/net/StaticIpConfiguration;->staticHttpProxy:Landroid/net/ProxyInfo;

    if-eqz v2, :cond_3

    .line 428
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyHostname:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 432
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPort:Lsmartisanos/widget/ListContentItemText;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 434
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyExclusionlist:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsmartisanos/widget/ListContentItemText;->setSummary(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 437
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v3, v4, :cond_3

    .line 438
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxyPac:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v4, v1}, Lsmartisanos/widget/ListContentItemText;->setSummary(Ljava/lang/CharSequence;)V

    .line 442
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v2, :cond_4

    const/4 v0, 0x1

    .line 443
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setProxyMode(I)V

    goto :goto_1

    .line 444
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x2

    .line 445
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setProxyMode(I)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 447
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setProxyMode(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mIpAddress:Lsmartisanos/widget/ListContentItemText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 297
    :cond_0
    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f121812

    if-eqz v2, :cond_1

    return v3

    .line 302
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 310
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mNetworkPrefixLen:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v2}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    const/16 v3, 0x20

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 314
    :cond_2
    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    const p0, 0x7f121813

    return p0

    .line 317
    :catch_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mNetworkPrefixLen:Lsmartisanos/widget/ListContentItemText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    const v4, 0x7f12182e

    .line 318
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-virtual {v2, v3}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mNetworkPrefixLen:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v2}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 322
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mGateway:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v3}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 326
    :try_start_2
    invoke-static {v0, v2}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 328
    array-length v2, v0

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aput-byte v4, v0, v2

    .line 329
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mGateway:Lsmartisanos/widget/ListContentItemText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mGateway:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    .line 338
    :catch_1
    :cond_4
    :try_start_3
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 342
    iput-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS1:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 349
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS1:Lsmartisanos/widget/ListContentItemText;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    const v3, 0x7f1217e9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS1:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    const v2, 0x7f121810

    if-nez v0, :cond_6

    return v2

    .line 357
    :cond_6
    iget-object v3, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS2:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 362
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS2:Lsmartisanos/widget/ListContentItemText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    const v4, 0x7f1217eb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mDNS2:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object p0

    if-nez p0, :cond_8

    return v2

    .line 370
    :cond_8
    iget-object p1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :catch_2
    const p0, 0x7f121811

    return p0

    :catch_3
    move-exception p0

    .line 304
    sget-object p1, Lcom/android/settings/wifi/WifiConfigControllerEx;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, ""

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method


# virtual methods
.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .line 187
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    goto :goto_1

    .line 190
    :cond_1
    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 191
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 195
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v1

    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsmartisanos/api/WifiConfigurationSmt;->get_isTrustedAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lsmartisanos/api/WifiConfigurationSmt;->set_isTrustedAp(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 196
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v1

    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsmartisanos/api/WifiConfigurationSmt;->get_needLogin(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lsmartisanos/api/WifiConfigurationSmt;->set_needLogin(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 197
    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v1

    invoke-static {}, Lsmartisanos/api/WifiConfigurationSmt;->getInstance()Lsmartisanos/api/WifiConfigurationSmt;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsmartisanos/api/WifiConfigurationSmt;->get_autoConnect(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lsmartisanos/api/WifiConfigurationSmt;->set_autoConnect(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 200
    :goto_1
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mAccessPointSecurity:I

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    const/4 v4, 0x1

    if-eq v1, v4, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    return-object v2

    .line 226
    :cond_3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {}, Lcom/android/settings/MultiSDKAdapterNew;->getWapiCertValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 222
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {}, Lcom/android/settings/MultiSDKAdapterNew;->getWapiPskValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 216
    :cond_5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 217
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 212
    :cond_6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 206
    :cond_7
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 207
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 208
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 202
    :cond_8
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 233
    :goto_2
    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 604
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigControllerEx;->setStaticIpFieldsEnableState(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f0a075b

    if-ne v0, v3, :cond_3

    .line 524
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 525
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    const v3, 0x7f120fbe

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    const v3, 0x7f120fbd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    const v3, 0x7f120fbf

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x2

    .line 536
    :cond_1
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120fbb

    .line 537
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 538
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/settings/wifi/WifiConfigControllerEx$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiConfigControllerEx$4;-><init>(Lcom/android/settings/wifi/WifiConfigControllerEx;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/WifiConfigControllerEx$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigControllerEx$3;-><init>(Lcom/android/settings/wifi/WifiConfigControllerEx;)V

    .line 548
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1203dd

    new-instance v1, Lcom/android/settings/wifi/WifiConfigControllerEx$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigControllerEx$2;-><init>(Lcom/android/settings/wifi/WifiConfigControllerEx;)V

    .line 554
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 560
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySetDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 561
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySetDialog:Landroid/app/AlertDialog;

    .line 563
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mProxySetDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_4

    .line 564
    :cond_3
    instance-of v0, p1, Lsmartisanos/widget/ListContentItemText;

    if-eqz v0, :cond_a

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 570
    :cond_4
    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    .line 571
    invoke-virtual {p1}, Lsmartisanos/widget/ListContentItemText;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 572
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_5

    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v1

    .line 573
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_6

    move v1, v2

    :cond_6
    if-nez v4, :cond_8

    if-eqz v1, :cond_7

    goto :goto_2

    .line 577
    :cond_7
    invoke-virtual {p1}, Lsmartisanos/widget/ListContentItemText;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    .line 575
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lsmartisanos/widget/ListContentItemText;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 579
    :goto_3
    new-instance v5, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;

    invoke-direct {v5}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;-><init>()V

    .line 580
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v6, Lcom/android/settings/wifi/WifiConfigControllerEx$5;

    invoke-direct {v6, p0, v4, v1, p1}, Lcom/android/settings/wifi/WifiConfigControllerEx$5;-><init>(Lcom/android/settings/wifi/WifiConfigControllerEx;ZZLsmartisanos/widget/ListContentItemText;)V

    invoke-virtual {v5, v0, v3, v2, v6}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->init(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 593
    invoke-virtual {p0}, Landroid/app/FragmentManager;->isStateSaved()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 598
    :cond_9
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p0, p1}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method

.method onKeyDown()V
    .locals 0

    .line 628
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->savePoxyAndIpConfiguration()V

    return-void
.end method

.method public savePoxyAndIpConfiguration()V
    .locals 1

    .line 635
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->ipAndProxyFieldsAreValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->promptConfigInvaild()V

    goto :goto_0

    .line 638
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 639
    invoke-interface {p0, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setSaveButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method
