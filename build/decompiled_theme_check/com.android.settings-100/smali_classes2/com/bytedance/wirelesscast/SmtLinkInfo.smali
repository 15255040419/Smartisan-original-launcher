.class public Lcom/bytedance/wirelesscast/SmtLinkInfo;
.super Ljava/lang/Object;
.source "SmtLinkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/bytedance/wirelesscast/SmtLinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_DISCONNECTING:I = 0x5

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_STOPPING:I = 0x4

.field public static final STATE_WAITING_CONNECT:I = 0x1


# instance fields
.field public mIp:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/bytedance/wirelesscast/SmtLinkInfo$1;

    invoke-direct {v0}, Lcom/bytedance/wirelesscast/SmtLinkInfo$1;-><init>()V

    sput-object v0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mIp:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/wirelesscast/SmtLinkInfo;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget-object v0, p1, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mName:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mIp:Ljava/lang/String;

    .line 41
    iget p1, p1, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mStatus:I

    iput p1, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/wirelesscast/SmtLinkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mIp:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    check-cast p1, Lcom/bytedance/wirelesscast/SmtLinkInfo;

    .line 112
    iget-object v2, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mIp:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mIp:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getIp()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mIp:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mStatus:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mIp:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isConnect()Z
    .locals 1

    .line 69
    iget p0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mStatus:I

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setConnect(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 73
    :goto_0
    iput p1, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mStatus:I

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mIp:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Info{"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ip="

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget p0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mStatus:I

    const-string v1, ", st="

    if-eqz p0, :cond_5

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "DISCONNECTING"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "STOPPING"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "CONNECTED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "CONNECTING"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "WAITING_CONNECT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "IDLE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}"

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 101
    iget-object p2, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mIp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget p0, p0, Lcom/bytedance/wirelesscast/SmtLinkInfo;->mStatus:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
