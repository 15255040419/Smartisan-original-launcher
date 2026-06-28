.class public final Landroid/system/PacketSocketAddress;
.super Ljava/net/SocketAddress;
.source "PacketSocketAddress.java"


# instance fields
.field public sll_addr:[B

.field public sll_hatype:S

.field public sll_ifindex:I

.field public sll_pkttype:B

.field public sll_protocol:S


# direct methods
.method public constructor <init>(I[B)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    .line 62
    invoke-direct/range {v0 .. v5}, Landroid/system/PacketSocketAddress;-><init>(SISB[B)V

    return-void
.end method

.method public constructor <init>(SI)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 57
    invoke-direct/range {v0 .. v5}, Landroid/system/PacketSocketAddress;-><init>(SISB[B)V

    return-void
.end method

.method public constructor <init>(SISB[B)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 48
    iput-short p1, p0, Landroid/system/PacketSocketAddress;->sll_protocol:S

    .line 49
    iput p2, p0, Landroid/system/PacketSocketAddress;->sll_ifindex:I

    .line 50
    iput-short p3, p0, Landroid/system/PacketSocketAddress;->sll_hatype:S

    .line 51
    iput-byte p4, p0, Landroid/system/PacketSocketAddress;->sll_pkttype:B

    .line 52
    iput-object p5, p0, Landroid/system/PacketSocketAddress;->sll_addr:[B

    return-void
.end method
