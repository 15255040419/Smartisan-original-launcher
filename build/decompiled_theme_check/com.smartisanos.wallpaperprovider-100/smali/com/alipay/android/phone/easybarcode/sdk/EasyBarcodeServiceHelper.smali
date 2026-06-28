.class public Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    invoke-direct {v0}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a:Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    iput-object v0, p0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->b:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/android/phone/easybarcode/sdk/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/easybarcode/sdk/a;-><init>(Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->d:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;)Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->c:Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;

    return-object p1
.end method

.method public static a()Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a:Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(I)V
    .locals 0

    invoke-static {p0}, Lcom/alipay/android/phone/easybarcode/sdk/util/AlipayTools;->a(I)V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "EasyBarcodeSDK"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.eg.android.AlipayGphone"

    const-string v2, "com.alipay.android.phone.easybarcode.EasyBarcodeService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.alipay.android.phone.easybarcode.IAlipayEasyBarcode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->c:Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;

    if-nez v1, :cond_0

    const-string v1, "EasyBarcodeSDK"

    const-string v2, "bindService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/alipay/android/phone/easybarcode/sdk/util/AlipayTools;->b(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->d:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->c:Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->b:Ljava/lang/Object;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    :cond_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_5
    const-string v0, "BarcodeSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wait \u5f02\u5e38"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :goto_0
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;
    .locals 3

    const-string v0, "result"

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->c:Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;

    if-nez v1, :cond_0

    sget-object p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SYS_ERROR:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "package_name"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ext_info"

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->c:Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;

    const/4 p2, 0x0

    invoke-interface {p0, p2, v1}, Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;->a(ILjava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "success"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SUCCESS_SERVICE:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "unsupport_app"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->UNSUPPORT_APP:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    sget-object p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SYS_ERROR:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3"

    return-object v0
.end method

.method public static c()I
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/easybarcode/sdk/util/AlipayTools;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->UNSUPPORT_MAIN_THREAD:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/alipay/android/phone/easybarcode/sdk/util/AlipayTools;->a(Landroid/content/Context;)Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SUCCESS_SCHEME:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    if-ne v0, v1, :cond_2

    const-string p2, "EasyBarcodeSDK"

    const-string v0, "currentWalletNotSupport"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "alipays://platformapi/startapp?appId=20000056&source=outfield"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "directly"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SUCCESS_SCHEME:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SUCCESS_SERVICE:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_3
    const-string p2, "EasyBarcodeSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "===unknown==="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/android/phone/easybarcode/sdk/EasyBarcodeServiceHelper;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SYS_ERROR:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
