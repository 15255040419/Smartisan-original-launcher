.class public Lcom/android/settings/wifi/WifiConfigControllerForSetup;
.super Ljava/lang/Object;
.source "WifiConfigControllerForSetup.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final KEYSTORE_SPACE:Ljava/lang/String; = "keystore://"

.field public static final PROXY_NONE:I = 0x0

.field public static final PROXY_STATIC:I = 0x1

.field private static final SSID_NAME_MAX_LENGTH_BYTES:I = 0x20

.field private static final SYSTEM_CA_STORE_PATH:Ljava/lang/String; = "/system/etc/security/cacerts"

.field private static final TAG:Ljava/lang/String; = "WifiConfigControllerForSetup"

.field private static final WAPI_PSK_TYPE_VALUES:[I

.field public static final WAPI_USER_CERTIFICATE:Ljava/lang/String; = "WAPI_USER_"

.field public static final WIFI_EAP_METHOD_AKA:I = 0x5

.field public static final WIFI_EAP_METHOD_AKA_PRIME:I = 0x6

.field private static final WIFI_EAP_METHOD_FOR_CMCC:I = 0x7

.field public static final WIFI_EAP_METHOD_PEAP:I = 0x0

.field public static final WIFI_EAP_METHOD_PWD:I = 0x3

.field public static final WIFI_EAP_METHOD_SIM:I = 0x4

.field public static final WIFI_EAP_METHOD_TLS:I = 0x1

.field public static final WIFI_EAP_METHOD_TTLS:I = 0x2

.field public static final WIFI_PEAP_PHASE2_GTC:I = 0x1

.field public static final WIFI_PEAP_PHASE2_MSCHAPV2:I


# instance fields
.field private final EAP_METHOD_VALUES:[Ljava/lang/String;

.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_FULL_VALUES:[Ljava/lang/String;

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_VALUES:[Ljava/lang/String;

.field private final WAPI_PSK_VALUES:[Ljava/lang/String;

.field private final WEP_KEY_INDEX:[Ljava/lang/String;

.field private final WIFI_SECURITY_VALUES:[Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mAsCerts:[Ljava/lang/String;

.field private final mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private mDoNotValidateEapServerString:Ljava/lang/String;

.field private mEapAnonymousView:Landroid/widget/EditText;

.field private mEapCaCert:I

.field private mEapCaCertIndexChooser:Landroid/app/AlertDialog;

.field private mEapCaCertItem:Lsmartisanos/widget/ListContentItemText;

.field private mEapCaCerts:[Ljava/lang/String;

.field private mEapDomainView:Landroid/widget/EditText;

.field private mEapIdentityView:Landroid/widget/EditText;

.field private mEapIndexChooser:Landroid/app/AlertDialog;

.field private mEapMethod:I

.field private mEapMethodItem:Lsmartisanos/widget/ListContentItemText;

.field private mEapUserCert:I

.field private mEapUserCertIndexChooser:Landroid/app/AlertDialog;

.field private mEapUserCertItem:Lsmartisanos/widget/ListContentItemText;

.field private mEapUserCerts:[Ljava/lang/String;

.field private mEdit:Z

.field private mMultipleCertSetString:Ljava/lang/String;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2IndexChooser:Landroid/app/AlertDialog;

.field private mPhase2Item:Lsmartisanos/widget/ListContentItemText;

.field private mPhase2Method:I

.field private mSecurityChooser:Landroid/app/AlertDialog;

.field private mSelectEapCaCertManual:Z

.field private mSimCardIndex:I

.field private mSimCardIndexChooser:Landroid/app/AlertDialog;

.field private mSimCardItem:Lsmartisanos/widget/ListContentItemText;

.field private mSimDisplayNames:[Ljava/lang/String;

.field private mSsidView:Landroid/widget/EditText;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private mUserCerts:[Ljava/lang/String;

.field private final mView:Landroid/view/View;

.field private mWapiAsCert:I

.field private mWapiAsCertIndexChooser:Landroid/app/AlertDialog;

.field private mWapiCertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWapiPskIndexChooser:Landroid/app/AlertDialog;

.field private mWapiPskType:I

.field private mWapiUserCert:I

.field private mWapiUserCertIndexChooser:Landroid/app/AlertDialog;

.field private mWepIndexChooser:Landroid/app/AlertDialog;

.field private mWepPosition:I

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 157
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WAPI_PSK_TYPE_VALUES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiSetupFragment;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 3

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unspecified"

    .line 80
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->unspecifiedCert:Ljava/lang/String;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSelectEapCaCertManual:Z

    .line 182
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    .line 184
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    .line 185
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez p3, :cond_0

    move p1, v0

    goto :goto_0

    .line 186
    :cond_0
    iget p1, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    :goto_0
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    .line 188
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEdit:Z

    .line 190
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 191
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiSetupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    .line 192
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 194
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const-string p3, "phone"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const p2, 0x7f030127

    .line 196
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WIFI_SECURITY_VALUES:[Ljava/lang/String;

    const p2, 0x7f030113

    .line 197
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WEP_KEY_INDEX:[Ljava/lang/String;

    const p2, 0x7f03012f

    .line 198
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WAPI_PSK_VALUES:[Ljava/lang/String;

    const p2, 0x7f03011e

    .line 199
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->EAP_METHOD_VALUES:[Ljava/lang/String;

    const p2, 0x7f030124

    .line 201
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_PEAP_VALUES:[Ljava/lang/String;

    .line 202
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_PEAP_VALUES:[Ljava/lang/String;

    const v1, 0x7f0d0363

    invoke-direct {p2, p3, v1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    const p2, 0x7f030125

    .line 205
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_FULL_VALUES:[Ljava/lang/String;

    .line 206
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_FULL_VALUES:[Ljava/lang/String;

    invoke-direct {p1, p2, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 209
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const p2, 0x7f1218ed

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->unspecifiedCert:Ljava/lang/String;

    .line 210
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const p2, 0x7f12182a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mMultipleCertSetString:Ljava/lang/String;

    .line 211
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const p2, 0x7f1218ef    # 1.9419675E38f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mUseSystemCertsString:Ljava/lang/String;

    .line 212
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const p2, 0x7f1217ec

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 213
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const p2, 0x7f1217ed

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 215
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const p2, 0x7f1217a3

    const p3, 0x7f0a0a35

    if-nez p1, :cond_2

    .line 216
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const v1, 0x7f121768

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/android/settings/wifi/WifiSetupFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const p4, 0x7f0a0889

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/editor/SimpleEditor;

    invoke-virtual {p1}, Lsmartisanos/widget/editor/SimpleEditor;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSsidView:Landroid/widget/EditText;

    .line 219
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSsidView:Landroid/widget/EditText;

    const/4 p4, 0x1

    new-array p4, p4, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v1, p4, v0

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 222
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-nez p5, :cond_1

    .line 224
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSsidView:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const p4, 0x7f0a07e6

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    .line 228
    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WIFI_SECURITY_VALUES:[Ljava/lang/String;

    iget p5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    aget-object p4, p4, p5

    invoke-virtual {p1, p4}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const p4, 0x7f0a09bf

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    .line 234
    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/WifiSetupFragment;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 238
    :cond_2
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    iget-object p1, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p4, p1}, Lcom/android/settings/wifi/WifiSetupFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    .line 241
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    .line 243
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget p1, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 p4, -0x1

    if-eq p1, p4, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEdit:Z

    if-eqz p1, :cond_4

    .line 244
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->showSecurityFields()V

    .line 245
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    .line 246
    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEdit:Z

    if-eqz p1, :cond_5

    .line 250
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const p3, 0x7f121858

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/WifiSetupFragment;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 257
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/WifiSetupFragment;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 261
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiSetupFragment;->getSubmitButton()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->showWarningMessagesIfAppropriate()V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->enableSubmitIfAppropriate()V

    :cond_6
    return-void
.end method

.method private WepInvalid()Z
    .locals 6

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 359
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 360
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_1

    :cond_0
    const-string v2, "[0-9A-Fa-f]*"

    .line 363
    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    .line 366
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 368
    array-length v0, p0

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_5

    aget-byte v4, p0, v2

    if-ltz v4, :cond_4

    const/16 v5, 0x7f

    if-le v4, v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    return v3

    :cond_6
    return v1
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    return p1
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiPskIndexChooser:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSelectEapCaCertManual:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiAsCert:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiAsCert:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiCertList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiAsCertIndexChooser:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiUserCert:I

    return p0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiUserCert:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiUserCertIndexChooser:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethod:I

    return p0
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethod:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Method:I

    return p0
.end method

.method static synthetic access$1702(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Method:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)[Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->EAP_METHOD_VALUES:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapIndexChooser:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)[Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WIFI_SECURITY_VALUES:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)[Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_PEAP_VALUES:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)[Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_FULL_VALUES:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2IndexChooser:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimCardIndex:I

    return p0
.end method

.method static synthetic access$2302(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimCardIndex:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)[Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimDisplayNames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimCardIndexChooser:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCert:I

    return p0
.end method

.method static synthetic access$2602(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCert:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setEapCaCertSubtile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCertIndexChooser:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCert:I

    return p0
.end method

.method static synthetic access$2902(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCert:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->showSecurityFields()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCertIndexChooser:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSecurityChooser:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWepPosition:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWepPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)[Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WEP_KEY_INDEX:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWepIndexChooser:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiPskType:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiPskType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)[Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WAPI_PSK_VALUES:[Ljava/lang/String;

    return-object p0
.end method

.method private getSIMInfo()V
    .locals 7

    .line 1257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    move v2, v1

    .line 1260
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1261
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1262
    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1264
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1266
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const v4, 0x7f1212d0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1268
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1270
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimDisplayNames:[Ljava/lang/String;

    return-void
.end method

.method private launchAdvancedOptions()V
    .locals 4

    .line 1248
    new-instance v0, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;-><init>()V

    .line 1249
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1250
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    const-string v3, "extra_wifi_configuration"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v2, 0x1

    const-string v3, "launch_by_wifiSetup"

    .line 1251
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1252
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedAccessPointSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1253
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/WifiSetupFragment;->startForResult(Lme/yokeyword/fragmentation/ISupportFragment;I)V

    return-void
.end method

.method private loadCertificates(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupFragment;->getContext()Landroid/content/Context;

    .line 857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 858
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 860
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p4, :cond_1

    .line 863
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p3

    const/16 p4, 0x3f2

    invoke-virtual {p3, p1, p4}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 865
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 867
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "CACERT_"

    .line 869
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 870
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCerts:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p2, "USRPKEY_"

    .line 871
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 872
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCerts:[Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method private loadWapiCertificates()V
    .locals 6

    .line 894
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const v1, 0x7f1218ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 895
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const v2, 0x7f12175e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 896
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 898
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    const-string v4, "WAPI_USER_"

    const/16 v5, 0x3f2

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 899
    array-length v4, v3

    if-gtz v4, :cond_0

    goto :goto_1

    .line 902
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 903
    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_2

    .line 904
    aget-object v1, v3, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 900
    :cond_1
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_2
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiCertList:Ljava/util/ArrayList;

    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v1, 0x7f0a05bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 838
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapAnonymousView:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCaCertInvisible()V
    .locals 1

    .line 824
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v0, 0x7f0a0166

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setCaCertSelection(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 880
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCerts:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, v1, v0

    .line 881
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v0, v3

    .line 888
    :cond_2
    iput v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCert:I

    .line 889
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCertItem:Lsmartisanos/widget/ListContentItemText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCerts:[Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCert:I

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setDomainInvisible()V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v1, 0x7f0a05bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 833
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapDomainView:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setEapCaCertSubtile(Ljava/lang/String;)V
    .locals 4

    .line 1283
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1285
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCert:I

    if-nez v1, :cond_0

    .line 1286
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    const v3, 0x7f060074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    .line 1287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x21

    .line 1286
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1290
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCertItem:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setEapMethodInvisible()V
    .locals 1

    .line 847
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v0, 0x7f0a0642

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setIdentityInvisible()V
    .locals 1

    .line 815
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v0, 0x7f0a05c0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPasswordInvisible()V
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v0, 0x7f0a06ea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPhase2Invisible()V
    .locals 1

    .line 820
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v0, 0x7f0a06fa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 915
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/ArrayAdapter;

    .line 916
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 917
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setSimCardInvisible()V
    .locals 1

    .line 811
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v0, 0x7f0a05c4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setUserCertInvisible()V
    .locals 1

    .line 828
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v0, 0x7f0a09e3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v1, 0x7f0a0642

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a05c0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a05bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a0166

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a06ea

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a05bd

    const v2, 0x7f0a06fa

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 734
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setEapMethodInvisible()V

    .line 735
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setPhase2Invisible()V

    .line 736
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setCaCertInvisible()V

    .line 737
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setDomainInvisible()V

    .line 738
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setAnonymousIdentInvisible()V

    .line 739
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setUserCertInvisible()V

    .line 740
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setSimCardInvisible()V

    goto/16 :goto_0

    .line 788
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v0, 0x7f0a05c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 789
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setPhase2Invisible()V

    .line 790
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setAnonymousIdentInvisible()V

    .line 791
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setCaCertInvisible()V

    .line 792
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setDomainInvisible()V

    .line 793
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setUserCertInvisible()V

    .line 794
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setPasswordInvisible()V

    .line 795
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 743
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setPhase2Invisible()V

    .line 744
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setCaCertInvisible()V

    .line 745
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setDomainInvisible()V

    .line 746
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setAnonymousIdentInvisible()V

    .line 747
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setUserCertInvisible()V

    .line 748
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setSimCardInvisible()V

    goto/16 :goto_0

    .line 773
    :pswitch_3
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSelectEapCaCertManual:Z

    if-nez p1, :cond_0

    .line 774
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setCaCertSelection(Ljava/lang/String;)V

    .line 776
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq p1, v3, :cond_1

    .line 777
    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 779
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisan/appbaselayer/quality/NullSafe;->nonNull(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 780
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 781
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisan/appbaselayer/quality/NullSafe;->nonNull(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 782
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setUserCertInvisible()V

    .line 783
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setSimCardInvisible()V

    goto :goto_0

    .line 751
    :pswitch_4
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSelectEapCaCertManual:Z

    if-nez p1, :cond_2

    .line 752
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setCaCertSelection(Ljava/lang/String;)V

    .line 753
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v0, 0x7f0a09e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 755
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 757
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setPhase2Invisible()V

    .line 758
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setAnonymousIdentInvisible()V

    .line 759
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setPasswordInvisible()V

    .line 760
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setSimCardInvisible()V

    goto :goto_0

    .line 764
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq p1, v3, :cond_4

    .line 765
    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 767
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 768
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 769
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setUserCertInvisible()V

    .line 770
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setSimCardInvisible()V

    .line 799
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v0, 0x7f0a0165

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    .line 800
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCerts:[Ljava/lang/String;

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCert:I

    aget-object p1, p1, v0

    .line 801
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->unspecifiedCert:Ljava/lang/String;

    .line 802
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 805
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setDomainInvisible()V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showSecurityFields()V
    .locals 7

    .line 588
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    const v1, 0x7f0a07e7

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 589
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v3, 0x7f0a06e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/editor/LabelEditor;

    .line 596
    invoke-virtual {v0}, Lsmartisanos/widget/editor/LabelEditor;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    .line 597
    invoke-static {v0}, Lcom/android/settings/wifi/Utils;->setRequestFocusForLabelEditorLeftContainer(Lsmartisanos/widget/editor/LabelEditor;)V

    .line 598
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 600
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    const v3, 0x7f1218ea

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 605
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    const v3, 0x7f0a0a2b

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 606
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f030113

    .line 608
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 610
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v6, 0x7f0a0a2a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lsmartisanos/widget/ListContentItemText;

    .line 612
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWepPosition:I

    aget-object v0, v0, v3

    invoke-virtual {v5, v0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 615
    invoke-virtual {v5, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 621
    :goto_0
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    const/4 v3, 0x4

    const v5, 0x7f0a0a26

    if-eq v0, v3, :cond_3

    .line 622
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 624
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f03012f

    .line 626
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 628
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v6, 0x7f0a0a25

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lsmartisanos/widget/ListContentItemText;

    .line 629
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    invoke-virtual {v3, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiPskType:I

    aget-object v0, v0, v5

    invoke-virtual {v3, v0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 635
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    const/4 v3, 0x5

    const v5, 0x7f0a0a21

    if-eq v0, v3, :cond_4

    .line 636
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v3, 0x7f0a06ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 640
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setPasswordInvisible()V

    .line 642
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v3, 0x7f0a0a20

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemText;

    .line 643
    invoke-virtual {v0, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v5, 0x7f0a0a27

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lsmartisanos/widget/ListContentItemText;

    .line 645
    invoke-virtual {v3, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f121760

    .line 646
    invoke-virtual {v3, v5}, Lsmartisanos/widget/ListContentItemText;->setTitle(I)V

    .line 647
    invoke-virtual {v0, v2}, Lsmartisanos/widget/ListContentItemText;->setVisibility(I)V

    .line 649
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->loadWapiCertificates()V

    .line 653
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiCertList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiUserCert:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 657
    :goto_2
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    const/4 v3, 0x3

    const v5, 0x7f0a0278

    if-eq v0, v3, :cond_5

    .line 658
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 661
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethodItem:Lsmartisanos/widget/ListContentItemText;

    if-nez v0, :cond_8

    .line 664
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->getSIMInfo()V

    .line 665
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a0642

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethodItem:Lsmartisanos/widget/ListContentItemText;

    .line 666
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethodItem:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a06f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Item:Lsmartisanos/widget/ListContentItemText;

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Item:Lsmartisanos/widget/ListContentItemText;

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethod:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_PEAP_VALUES:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Method:I

    aget-object v2, v2, v3

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_FULL_VALUES:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Method:I

    aget-object v2, v2, v3

    .line 670
    :goto_3
    invoke-virtual {v0, v2}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Item:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a05c3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimCardItem:Lsmartisanos/widget/ListContentItemText;

    .line 675
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimCardItem:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a0165

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCertItem:Lsmartisanos/widget/ListContentItemText;

    .line 678
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCertItem:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a09e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCertItem:Lsmartisanos/widget/ListContentItemText;

    .line 681
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCertItem:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/ListContentItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a025e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/editor/SimpleEditor;

    invoke-virtual {v0}, Lsmartisanos/widget/editor/SimpleEditor;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapDomainView:Landroid/widget/EditText;

    .line 683
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 684
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a0458

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/editor/SimpleEditor;

    invoke-virtual {v0}, Lsmartisanos/widget/editor/SimpleEditor;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapIdentityView:Landroid/widget/EditText;

    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v2, 0x7f0a008c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/editor/SimpleEditor;

    invoke-virtual {v0}, Lsmartisanos/widget/editor/SimpleEditor;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapAnonymousView:Landroid/widget/EditText;

    .line 687
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mDoNotValidateEapServerString:Ljava/lang/String;

    const-string v2, "CACERT_"

    invoke-direct {p0, v2, v0, v1, v4}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->loadCertificates(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 691
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const-string v2, "USRPKEY_"

    invoke-direct {p0, v2, v0, v1, v1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->loadCertificates(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 696
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethodItem:Lsmartisanos/widget/ListContentItemText;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->EAP_METHOD_VALUES:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCerts:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCert:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->setEapCaCertSubtile(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCertItem:Lsmartisanos/widget/ListContentItemText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCerts:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCert:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-static {v0}, Lsmartisanos/util/config/Features;->isFeatureCMCCEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v1, "CMCC"

    .line 701
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    .line 702
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->showEapFieldsByMethod(I)V

    goto :goto_5

    .line 704
    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethod:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->showEapFieldsByMethod(I)V

    goto :goto_5

    .line 707
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Item:Lsmartisanos/widget/ListContentItemText;

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethod:I

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_PEAP_VALUES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Method:I

    aget-object v1, v1, v2

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->PHASE2_FULL_VALUES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Method:I

    aget-object v1, v1, v2

    .line 708
    :goto_4
    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 710
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethod:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->showEapFieldsByMethod(I)V

    :goto_5
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 931
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup$1;-><init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 7

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSetupFragment;->getSubmitButton()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    if-ne v1, v4, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WepInvalid()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    .line 277
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-ge v1, v2, :cond_3

    :cond_2
    :goto_0
    move v1, v4

    goto :goto_1

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_5

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 281
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lt v1, v2, :cond_2

    const/16 v5, 0x40

    if-le v1, v5, :cond_4

    goto :goto_0

    .line 285
    :cond_4
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiPskType:I

    if-ne v1, v4, :cond_6

    .line 286
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "[0-9A-Fa-f]*"

    .line 287
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v4

    goto :goto_1

    .line 289
    :cond_5
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    const/4 v5, 0x5

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiCertList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 290
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v4, :cond_6

    goto :goto_0

    :cond_6
    move v1, v3

    .line 294
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_8

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    :cond_8
    if-eqz v1, :cond_a

    :cond_9
    move v4, v3

    .line 302
    :cond_a
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCertItem:Lsmartisanos/widget/ListContentItemText;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v5, 0x7f0a0166

    .line 303
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 304
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCerts:[Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCert:I

    aget-object v1, v1, v5

    .line 305
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v4, v3

    .line 310
    :cond_b
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapDomainView:Landroid/widget/EditText;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v5, 0x7f0a05bf

    .line 312
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapDomainView:Landroid/widget/EditText;

    .line 313
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v4, v3

    .line 319
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCertItem:Lsmartisanos/widget/ListContentItemText;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v5, 0x7f0a09e3

    .line 320
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->unspecifiedCert:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCerts:[Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCert:I

    aget-object p0, v2, p0

    .line 321
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_2

    :cond_d
    move v3, v4

    .line 327
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public finish()V
    .locals 0

    .line 1274
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSecurityChooser:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 1275
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .line 380
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEdit:Z

    if-nez v0, :cond_0

    return-object v2

    .line 384
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 386
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSsidView:Landroid/widget/EditText;

    .line 388
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 390
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_0

    .line 391
    :cond_1
    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v1, :cond_2

    .line 392
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 394
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 395
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_0

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 401
    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    const/16 v5, 0x22

    if-eq v1, v4, :cond_1c

    const-string v6, "[0-9A-Fa-f]{64}"

    const/4 v7, 0x2

    if-eq v1, v7, :cond_1a

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_6

    if-eq v1, v8, :cond_4

    return-object v2

    .line 565
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0xbf

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 566
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiUserCert:I

    if-nez v1, :cond_5

    .line 567
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    .line 568
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    goto/16 :goto_7

    .line 570
    :cond_5
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    .line 571
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiCertList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    goto/16 :goto_7

    .line 552
    :cond_6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbe

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 553
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 554
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 556
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_1

    .line 558
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 561
    :cond_8
    :goto_1
    sget-object v1, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WAPI_PSK_TYPE_VALUES:[I

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiPskType:I

    aget v1, v1, v2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_7

    .line 438
    :cond_9
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 439
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    .line 440
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 441
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethod:I

    .line 442
    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Method:I

    .line 443
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    const/4 v6, 0x6

    const-string v7, "WifiConfigControllerForSetup"

    if-eqz v1, :cond_b

    if-eq v1, v9, :cond_a

    if-eq v1, v8, :cond_a

    if-eq v1, v6, :cond_a

    .line 475
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    add-int/2addr v5, v4

    invoke-virtual {v11, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 468
    :cond_a
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget v11, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimCardIndex:I

    add-int/2addr v11, v4

    invoke-virtual {v5, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setSimNum(I)V

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_d

    if-eq v5, v4, :cond_c

    .line 461
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown phase2 method"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 458
    :cond_c
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 455
    :cond_d
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 479
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCerts:[Ljava/lang/String;

    iget v11, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCert:I

    aget-object v5, v5, v11

    .line 480
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 481
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 482
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 484
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_3

    .line 486
    :cond_e
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 487
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, "/system/etc/security/cacerts"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_3

    .line 488
    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 489
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_12

    .line 490
    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "Multiple certs can only be set when editing saved network"

    .line 491
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_10
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 496
    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 498
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_3

    .line 501
    :cond_11
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 508
    :cond_12
    :goto_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 509
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ca_cert ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 511
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") and ca_path ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 513
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") should not both be non-null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_13
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCerts:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCert:I

    aget-object v2, v2, v3

    .line 518
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 519
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    move-object v2, v4

    .line 524
    :cond_15
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    if-eq v1, v9, :cond_18

    if-eq v1, v8, :cond_18

    if-ne v1, v6, :cond_16

    goto :goto_4

    :cond_16
    if-ne v1, v10, :cond_17

    .line 529
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 530
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_5

    .line 532
    :cond_17
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 533
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapAnonymousView:Landroid/widget/EditText;

    .line 534
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_5

    .line 526
    :cond_18
    :goto_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 527
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 537
    :goto_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isShown()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 541
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_20

    .line 542
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 546
    :cond_19
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 426
    :cond_1a
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 427
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_20

    .line 428
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 430
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_7

    .line 432
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_7

    .line 407
    :cond_1c
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 408
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 409
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 410
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_20

    .line 411
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 412
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1d

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_1e

    :cond_1d
    const-string v1, "[0-9A-Fa-f]*"

    .line 415
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 417
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWepPosition:I

    aput-object v2, v1, v3

    goto :goto_6

    .line 419
    :cond_1e
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWepPosition:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 421
    :goto_6
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWepPosition:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_7

    .line 403
    :cond_1f
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 580
    :cond_20
    :goto_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiSetupFragment;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_21

    .line 581
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mConfigUi:Lcom/android/settings/wifi/WifiSetupFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    :cond_21
    return-object v0
.end method

.method public isEdit()Z
    .locals 0

    .line 926
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEdit:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 961
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0363

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f1203dd

    const/4 v5, 0x5

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 963
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->launchAdvancedOptions()V

    goto/16 :goto_0

    .line 998
    :sswitch_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WEP_KEY_INDEX:[Ljava/lang/String;

    invoke-direct {v0, v6, v1, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1001
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f1209db

    .line 1003
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWepPosition:I

    new-instance v6, Lcom/android/settings/wifi/WifiConfigControllerForSetup$3;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup$3;-><init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Landroid/view/View;)V

    .line 1004
    invoke-virtual {v1, v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    .line 1016
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1017
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWepIndexChooser:Landroid/app/AlertDialog;

    .line 1018
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWepIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1019
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWepIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1080
    :sswitch_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiCertList:Ljava/util/ArrayList;

    invoke-direct {v0, v6, v1, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1083
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f1218f7

    .line 1085
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiUserCert:I

    new-instance v6, Lcom/android/settings/wifi/WifiConfigControllerForSetup$6;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup$6;-><init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Landroid/view/View;)V

    .line 1086
    invoke-virtual {v1, v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    .line 1098
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1099
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiUserCertIndexChooser:Landroid/app/AlertDialog;

    .line 1100
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiUserCertIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1101
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiUserCertIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1023
    :sswitch_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WAPI_PSK_VALUES:[Ljava/lang/String;

    invoke-direct {v0, v6, v1, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1026
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f1218f6

    .line 1028
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiPskType:I

    new-instance v6, Lcom/android/settings/wifi/WifiConfigControllerForSetup$4;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup$4;-><init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Landroid/view/View;)V

    .line 1029
    invoke-virtual {v1, v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    .line 1042
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1043
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiPskIndexChooser:Landroid/app/AlertDialog;

    .line 1044
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiPskIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1045
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiPskIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1049
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAsCerts:[Ljava/lang/String;

    .line 1052
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiCertList:Ljava/util/ArrayList;

    invoke-direct {v0, v6, v1, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1055
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f1218f2

    .line 1057
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiAsCert:I

    new-instance v6, Lcom/android/settings/wifi/WifiConfigControllerForSetup$5;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup$5;-><init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Landroid/view/View;)V

    .line 1058
    invoke-virtual {v1, v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    .line 1070
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1071
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiAsCertIndexChooser:Landroid/app/AlertDialog;

    .line 1072
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiAsCertIndexChooser:Landroid/app/AlertDialog;

    const v0, 0x7f121760

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1073
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiAsCertIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1074
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mWapiAsCertIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1216
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCerts:[Ljava/lang/String;

    .line 1217
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v6, v7, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1220
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v1, v7, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f1217f5

    .line 1222
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCert:I

    new-instance v7, Lcom/android/settings/wifi/WifiConfigControllerForSetup$11;

    invoke-direct {v7, p0, p1, v0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup$11;-><init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Landroid/view/View;[Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v1, v6, v5, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    .line 1237
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1238
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCertIndexChooser:Landroid/app/AlertDialog;

    .line 1239
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCertIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1240
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapUserCertIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 967
    :sswitch_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSecurityChooser:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 970
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->WIFI_SECURITY_VALUES:[Ljava/lang/String;

    invoke-direct {v0, v6, v1, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 974
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f12186a

    .line 976
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mAccessPointSecurity:I

    new-instance v6, Lcom/android/settings/wifi/WifiConfigControllerForSetup$2;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup$2;-><init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Landroid/view/View;)V

    .line 977
    invoke-virtual {v1, v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    .line 991
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 992
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSecurityChooser:Landroid/app/AlertDialog;

    .line 993
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSecurityChooser:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 994
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSecurityChooser:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1136
    :sswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120ebd

    .line 1138
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2Method:I

    new-instance v6, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;-><init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Landroid/view/View;)V

    .line 1139
    invoke-virtual {v0, v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    .line 1154
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1155
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2IndexChooser:Landroid/app/AlertDialog;

    .line 1156
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2IndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1157
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPhase2IndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1105
    :sswitch_8
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->EAP_METHOD_VALUES:[Ljava/lang/String;

    invoke-direct {v0, v6, v1, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1108
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f1217f4

    .line 1110
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapMethod:I

    new-instance v6, Lcom/android/settings/wifi/WifiConfigControllerForSetup$7;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup$7;-><init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Landroid/view/View;)V

    .line 1111
    invoke-virtual {v1, v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    .line 1129
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1130
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapIndexChooser:Landroid/app/AlertDialog;

    .line 1131
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1132
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1161
    :sswitch_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimDisplayNames:[Ljava/lang/String;

    .line 1162
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v6, v7, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1211d0

    .line 1167
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimCardIndex:I

    new-instance v5, Lcom/android/settings/wifi/WifiConfigControllerForSetup$9;

    invoke-direct {v5, p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup$9;-><init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Landroid/view/View;)V

    .line 1168
    invoke-virtual {v0, v6, v1, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    .line 1181
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1182
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimCardIndexChooser:Landroid/app/AlertDialog;

    .line 1183
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimCardIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1184
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSimCardIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1188
    :sswitch_a
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCerts:[Ljava/lang/String;

    .line 1189
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v0, v6, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1192
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f1217f1

    .line 1194
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCert:I

    new-instance v6, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;-><init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;[Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v1, v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->context:Landroid/content/Context;

    .line 1209
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1210
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCertIndexChooser:Landroid/app/AlertDialog;

    .line 1211
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCertIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1212
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCertIndexChooser:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0165 -> :sswitch_a
        0x7f0a05c3 -> :sswitch_9
        0x7f0a0642 -> :sswitch_8
        0x7f0a06f9 -> :sswitch_7
        0x7f0a07e6 -> :sswitch_6
        0x7f0a09e2 -> :sswitch_5
        0x7f0a0a20 -> :sswitch_4
        0x7f0a0a25 -> :sswitch_3
        0x7f0a0a27 -> :sswitch_2
        0x7f0a0a2a -> :sswitch_1
        0x7f0a0a35 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public showSoftKeyguard(Landroid/content/Context;)V
    .locals 2

    .line 950
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSsidView:Landroid/widget/EditText;

    const-string v1, "WifiConfigControllerForSetup"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "show InputMethod for ssidView"

    .line 951
    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mSsidView:Landroid/widget/EditText;

    invoke-static {p1, p0}, Lcom/android/settings/Utils;->showSoftInputMethod(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_0

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "show InputMethod for passwordView"

    .line 954
    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mPasswordView:Landroid/widget/EditText;

    invoke-static {p1, p0}, Lcom/android/settings/Utils;->showSoftInputMethod(Landroid/content/Context;Landroid/widget/EditText;)V

    :cond_1
    :goto_0
    return-void
.end method

.method showWarningMessagesIfAppropriate()V
    .locals 7

    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v1, 0x7f0a069d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v3, 0x7f0a069f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v4, 0x7f0a0279

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCertItem:Lsmartisanos/widget/ListContentItemText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v6, 0x7f0a0166

    .line 336
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCerts:[Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapCaCert:I

    aget-object v0, v0, v6

    .line 338
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 341
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapDomainView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    const v1, 0x7f0a05bf

    .line 346
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mEapDomainView:Landroid/widget/EditText;

    .line 347
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
