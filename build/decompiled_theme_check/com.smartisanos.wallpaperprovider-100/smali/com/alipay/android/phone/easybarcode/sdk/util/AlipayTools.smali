.class public Lcom/alipay/android/phone/easybarcode/sdk/util/AlipayTools;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x62


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/alipay/android/phone/easybarcode/sdk/util/AlipayTools;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;
    .locals 2

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lcom/alipay/android/phone/easybarcode/sdk/util/AlipayTools;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/easybarcode/sdk/util/a;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->NOT_INSTALL:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/easybarcode/sdk/util/a;->a:[B

    invoke-static {v0}, Lcom/alipay/android/phone/easybarcode/sdk/util/AlipayTools;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/alipay/android/phone/easybarcode/sdk/util/a;->b:I

    sget v0, Lcom/alipay/android/phone/easybarcode/sdk/util/AlipayTools;->a:I

    if-ge p0, v0, :cond_2

    sget-object p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SUCCESS_SCHEME:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    return-object p0

    :cond_2
    sget-object p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SUCCESS_SERVICE:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->FAKE:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/easybarcode/sdk/util/a;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EasyBarcodeSDK"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_0

    new-instance p1, Lcom/alipay/android/phone/easybarcode/sdk/util/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/alipay/android/phone/easybarcode/sdk/util/a;-><init>(B)V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/phone/easybarcode/sdk/util/a;->a:[B

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p0, p1, Lcom/alipay/android/phone/easybarcode/sdk/util/a;->b:I

    return-object p1

    :cond_0
    return-object v1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    const-string v0, "modulus"

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(I)V
    .locals 1

    const/16 v0, 0x62

    if-lt p0, v0, :cond_0

    sput p0, Lcom/alipay/android/phone/easybarcode/sdk/util/AlipayTools;->a:I

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.eg.android.AlipayGphone"

    const-string v2, "com.alipay.android.app.TransProcessPayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v0, 0x96

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
