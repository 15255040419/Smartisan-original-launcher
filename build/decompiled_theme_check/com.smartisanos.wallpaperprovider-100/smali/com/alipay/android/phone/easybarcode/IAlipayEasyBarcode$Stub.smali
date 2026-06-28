.class public abstract Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.alipay.android.phone.easybarcode.IAlipayEasyBarcode"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode;

    return-object v0

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/easybarcode/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/easybarcode/a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.alipay.android.phone.easybarcode.IAlipayEasyBarcode"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/easybarcode/IAlipayEasyBarcode$Stub;->a(ILjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
