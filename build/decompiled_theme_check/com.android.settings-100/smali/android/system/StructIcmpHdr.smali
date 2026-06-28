.class public final Landroid/system/StructIcmpHdr;
.super Ljava/lang/Object;
.source "StructIcmpHdr.java"


# instance fields
.field private packet:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 32
    iput-object v0, p0, Landroid/system/StructIcmpHdr;->packet:[B

    return-void
.end method

.method public static IcmpEchoHdr(ZI)Landroid/system/StructIcmpHdr;
    .locals 3

    .line 49
    new-instance v0, Landroid/system/StructIcmpHdr;

    invoke-direct {v0}, Landroid/system/StructIcmpHdr;-><init>()V

    .line 50
    iget-object v1, v0, Landroid/system/StructIcmpHdr;->packet:[B

    if-eqz p0, :cond_0

    sget p0, Landroid/system/OsConstants;->ICMP_ECHO:I

    goto :goto_0

    :cond_0
    sget p0, Landroid/system/OsConstants;->ICMP6_ECHO_REQUEST:I

    :goto_0
    int-to-byte p0, p0

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    .line 54
    iget-object p0, v0, Landroid/system/StructIcmpHdr;->packet:[B

    const/4 v1, 0x6

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    const/4 v1, 0x7

    int-to-byte p1, p1

    .line 55
    aput-byte p1, p0, v1

    return-object v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 0

    .line 60
    iget-object p0, p0, Landroid/system/StructIcmpHdr;->packet:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
