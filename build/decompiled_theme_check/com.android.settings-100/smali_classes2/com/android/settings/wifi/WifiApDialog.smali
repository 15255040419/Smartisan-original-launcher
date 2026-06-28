.class public Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final BUTTON_SUBMIT:I = -0x1

.field public static final OPEN_INDEX:I = 0x0

.field private static final SOFTAP_SSID_NAME_MAX_LENGTH_BYTES:I = 0x20

.field private static final TAG:Ljava/lang/String; = "WifiApDialog"

.field public static final WPA2_INDEX:I = 0x1


# instance fields
.field private mBandIndex:I

.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/EditText;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 65
    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mBandIndex:I

    .line 76
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 77
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p3, :cond_0

    .line 79
    invoke-static {p3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x10

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string p2, "wifi"

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 83
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/settings/wifi/WifiApDialog;->mBandIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiApDialog;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mBandIndex:I

    return p1
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    .line 87
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showSecurityFields()V
    .locals 2

    .line 271
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const v1, 0x7f0a02d8

    if-nez v0, :cond_0

    .line 272
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private validate()V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 233
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    const/16 v4, 0x8

    if-lt v1, v4, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    const-string v1, "UTF-8"

    .line 235
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 236
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .line 95
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 105
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mBandIndex:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 107
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 114
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_1
    return-object v0

    .line 109
    :cond_2
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .line 244
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x90

    goto :goto_0

    :cond_0
    const/16 p1, 0x80

    :goto_0
    or-int/lit8 p1, p1, 0x1

    .line 243
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0348

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a07e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 129
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a01a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 131
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1218d3

    .line 136
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 137
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v5, 0x7f0a09bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0a0889

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 139
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v6, 0x7f0a06e7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 142
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 143
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v6

    const v7, 0x1090008

    if-eqz v6, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f030115

    invoke-static {v4, v6, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    goto :goto_2

    .line 145
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v8

    const-string v9, ""

    if-nez v8, :cond_2

    const-string v8, "Device do not support 5GHz "

    goto :goto_1

    :cond_2
    move-object v8, v9

    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_3

    const-string v9, " NO country code"

    :cond_3
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " forbid 5GHz"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "WifiApDialog"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f030114

    invoke-static {v4, v6, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    .line 149
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v5, v6, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :goto_2
    const v6, 0x1090009

    .line 155
    invoke-virtual {v4, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/4 v6, -0x1

    const v7, 0x7f121858

    .line 157
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v6, -0x2

    const v7, 0x7f121799

    .line 159
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 158
    invoke-virtual {p0, v6, v3, v7}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_5

    .line 162
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/EditText;->setSelection(II)V

    .line 164
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-nez v3, :cond_4

    .line 165
    iput v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mBandIndex:I

    goto :goto_3

    .line 167
    :cond_4
    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mBandIndex:I

    .line 169
    :goto_3
    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 170
    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v3, v2, :cond_5

    .line 171
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    new-array v6, v2, [Landroid/text/InputFilter;

    new-instance v7, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    const/16 v8, 0x20

    invoke-direct {v7, v8}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 178
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 179
    new-instance v3, Lcom/android/settings/wifi/WifiApDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/WifiApDialog$1;-><init>(Lcom/android/settings/wifi/WifiApDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 203
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/16 v3, 0x91

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 207
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a0835

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 209
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 213
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 215
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 218
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 261
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 262
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 263
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 223
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v0, 0x7f0a0835

    .line 225
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x90

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    :goto_0
    or-int/lit8 p0, p0, 0x1

    .line 223
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
