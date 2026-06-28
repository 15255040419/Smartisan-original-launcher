.class public abstract Lcom/bytedance/wirelesscast/IWirelessCastService$Stub;
.super Landroid/os/Binder;
.source "IWirelessCastService.java"

# interfaces
.implements Lcom/bytedance/wirelesscast/IWirelessCastService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/wirelesscast/IWirelessCastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/wirelesscast/IWirelessCastService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bytedance.wirelesscast.IWirelessCastService"

.field static final TRANSACTION_connectService:I = 0x3

.field static final TRANSACTION_disConnectService:I = 0x4

.field static final TRANSACTION_hasConnected:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.bytedance.wirelesscast.IWirelessCastService"

    .line 14
    invoke-virtual {p0, p0, v0}, Lcom/bytedance/wirelesscast/IWirelessCastService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bytedance/wirelesscast/IWirelessCastService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.bytedance.wirelesscast.IWirelessCastService"

    .line 25
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    instance-of v1, v0, Lcom/bytedance/wirelesscast/IWirelessCastService;

    if-eqz v1, :cond_1

    .line 27
    check-cast v0, Lcom/bytedance/wirelesscast/IWirelessCastService;

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/bytedance/wirelesscast/IWirelessCastService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/bytedance/wirelesscast/IWirelessCastService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.bytedance.wirelesscast.IWirelessCastService"

    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 42
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 89
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/bytedance/wirelesscast/IWirelessCastService$Stub;->hasConnected()Z

    move-result p0

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 76
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    sget-object p1, Lcom/bytedance/wirelesscast/SmtLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/bytedance/wirelesscast/SmtLinkInfo;

    .line 84
    :cond_3
    invoke-virtual {p0, v3}, Lcom/bytedance/wirelesscast/IWirelessCastService$Stub;->disConnectService(Lcom/bytedance/wirelesscast/SmtLinkInfo;)V

    return v0

    .line 63
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 66
    sget-object p1, Lcom/bytedance/wirelesscast/SmtLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/bytedance/wirelesscast/SmtLinkInfo;

    .line 71
    :cond_5
    invoke-virtual {p0, v3}, Lcom/bytedance/wirelesscast/IWirelessCastService$Stub;->connectService(Lcom/bytedance/wirelesscast/SmtLinkInfo;)V

    return v0

    .line 55
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/wirelesscast/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/wirelesscast/ICallback;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/bytedance/wirelesscast/IWirelessCastService$Stub;->unregisterCallback(Lcom/bytedance/wirelesscast/ICallback;)V

    return v0

    .line 47
    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/wirelesscast/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/wirelesscast/ICallback;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/bytedance/wirelesscast/IWirelessCastService$Stub;->registerCallback(Lcom/bytedance/wirelesscast/ICallback;)V

    return v0
.end method
