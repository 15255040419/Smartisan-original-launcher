.class public final Landroid/system/StructIfaddrs;
.super Ljava/lang/Object;
.source "StructIfaddrs.java"


# instance fields
.field public final hwaddr:[B

.field public final ifa_addr:Ljava/net/InetAddress;

.field public final ifa_broadaddr:Ljava/net/InetAddress;

.field public final ifa_flags:I

.field public final ifa_name:Ljava/lang/String;

.field public final ifa_netmask:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/system/StructIfaddrs;->ifa_name:Ljava/lang/String;

    .line 41
    iput p2, p0, Landroid/system/StructIfaddrs;->ifa_flags:I

    .line 42
    iput-object p3, p0, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    .line 43
    iput-object p4, p0, Landroid/system/StructIfaddrs;->ifa_netmask:Ljava/net/InetAddress;

    .line 44
    iput-object p5, p0, Landroid/system/StructIfaddrs;->ifa_broadaddr:Ljava/net/InetAddress;

    .line 45
    iput-object p6, p0, Landroid/system/StructIfaddrs;->hwaddr:[B

    return-void
.end method
