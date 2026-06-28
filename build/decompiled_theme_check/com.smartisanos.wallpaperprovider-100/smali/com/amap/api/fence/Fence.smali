.class public Lcom/amap/api/fence/Fence;
.super Ljava/lang/Object;
.source "Fence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/fence/Fence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/app/PendingIntent;

.field public b:Ljava/lang/String;

.field public c:D

.field public d:D

.field public e:F

.field public f:J

.field public g:I

.field public h:J

.field private i:J

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/amap/api/fence/a;

    invoke-direct {v0}, Lcom/amap/api/fence/a;-><init>()V

    sput-object v0, Lcom/amap/api/fence/Fence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    .line 24
    iput-object v0, p0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->c:D

    .line 26
    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->d:D

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/amap/api/fence/Fence;->e:F

    const-wide/16 v0, -0x1

    .line 31
    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->f:J

    .line 35
    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->i:J

    const/4 v2, 0x3

    .line 39
    iput v2, p0, Lcom/amap/api/fence/Fence;->j:I

    const/4 v2, -0x1

    .line 43
    iput v2, p0, Lcom/amap/api/fence/Fence;->g:I

    .line 47
    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->h:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    .line 24
    iput-object v0, p0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->c:D

    .line 26
    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->d:D

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/amap/api/fence/Fence;->e:F

    const-wide/16 v0, -0x1

    .line 31
    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->f:J

    .line 35
    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->i:J

    const/4 v2, 0x3

    .line 39
    iput v2, p0, Lcom/amap/api/fence/Fence;->j:I

    const/4 v2, -0x1

    .line 43
    iput v2, p0, Lcom/amap/api/fence/Fence;->g:I

    .line 47
    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->h:J

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->c:D

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->d:D

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/Fence;->e:F

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->f:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->i:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/Fence;->j:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/Fence;->g:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->h:J

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/api/fence/a;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amap/api/fence/Fence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/amap/api/fence/Fence;->j:I

    return p0
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, -0x1

    .line 81
    iput-wide p1, p0, Lcom/amap/api/fence/Fence;->f:J

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/amap/api/fence/Fence;->f:J

    :goto_0
    return-void
.end method

.method public b()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->f:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->i:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 109
    iget-object p2, p0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 111
    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 112
    iget p2, p0, Lcom/amap/api/fence/Fence;->e:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 113
    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget p2, p0, Lcom/amap/api/fence/Fence;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget p2, p0, Lcom/amap/api/fence/Fence;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
