.class public final Landroid/system/StructGroupReq;
.super Ljava/lang/Object;
.source "StructGroupReq.java"


# instance fields
.field public final gr_group:Ljava/net/InetAddress;

.field public final gr_interface:I


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/system/StructGroupReq;->gr_interface:I

    .line 33
    iput-object p2, p0, Landroid/system/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
