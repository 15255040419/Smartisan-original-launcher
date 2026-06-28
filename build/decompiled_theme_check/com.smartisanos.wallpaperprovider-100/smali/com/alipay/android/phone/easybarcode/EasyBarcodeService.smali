.class public Lcom/alipay/android/phone/easybarcode/EasyBarcodeService;
.super Ljava/lang/Object;


# static fields
.field private static sInstance:Lcom/alipay/android/phone/easybarcode/EasyBarcodeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/easybarcode/EasyBarcodeService;

    invoke-direct {v0}, Lcom/alipay/android/phone/easybarcode/EasyBarcodeService;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/easybarcode/EasyBarcodeService;->sInstance:Lcom/alipay/android/phone/easybarcode/EasyBarcodeService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/android/phone/easybarcode/EasyBarcodeService;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/easybarcode/EasyBarcodeService;->sInstance:Lcom/alipay/android/phone/easybarcode/EasyBarcodeService;

    return-object v0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a()Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    invoke-static {}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getsMinVersionCodeForService()I
    .locals 0

    invoke-static {}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a()Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    invoke-static {}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->c()I

    move-result p0

    return p0
.end method

.method public schemaToWalletBarcode(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;
    .locals 0

    invoke-static {}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a()Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    move-result-object p0

    return-object p0
.end method

.method public setsMinVersionCodeForService(I)V
    .locals 0

    invoke-static {}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a()Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    invoke-static {p1}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a(I)V

    return-void
.end method
