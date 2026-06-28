.class public final Landroid/system/NetlinkSocketAddress;
.super Ljava/net/SocketAddress;
.source "NetlinkSocketAddress.java"


# instance fields
.field private final nlGroupsMask:I

.field private final nlPortId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, v0}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 46
    iput p1, p0, Landroid/system/NetlinkSocketAddress;->nlPortId:I

    .line 47
    iput p2, p0, Landroid/system/NetlinkSocketAddress;->nlGroupsMask:I

    return-void
.end method


# virtual methods
.method public getGroupsMask()I
    .locals 0

    .line 55
    iget p0, p0, Landroid/system/NetlinkSocketAddress;->nlGroupsMask:I

    return p0
.end method

.method public getPortId()I
    .locals 0

    .line 51
    iget p0, p0, Landroid/system/NetlinkSocketAddress;->nlPortId:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 59
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
