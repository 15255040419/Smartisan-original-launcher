.class final Lcom/alipay/android/phone/easybarcode/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/easybarcode/sdk/a;->a:Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "EasyBarcodeSDK"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/alipay/android/phone/easybarcode/sdk/a;->a:Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    invoke-static {p1}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a(Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/easybarcode/sdk/a;->a:Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    invoke-static {p2}, Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode$Stub;->a(Landroid/os/IBinder;)Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a(Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;)Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;

    iget-object p0, p0, Lcom/alipay/android/phone/easybarcode/sdk/a;->a:Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    invoke-static {p0}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a(Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "EasyBarcodeSDK"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/alipay/android/phone/easybarcode/sdk/a;->a:Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a(Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;)Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;

    return-void
.end method
