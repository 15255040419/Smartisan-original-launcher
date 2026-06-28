.class final Lcom/amap/api/fence/a;
.super Ljava/lang/Object;
.source "Fence.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/fence/Fence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/fence/Fence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/fence/Fence;
    .locals 1

    .line 124
    new-instance p0, Lcom/amap/api/fence/Fence;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/fence/Fence;-><init>(Landroid/os/Parcel;Lcom/amap/api/fence/a;)V

    return-object p0
.end method

.method public a(I)[Lcom/amap/api/fence/Fence;
    .locals 0

    .line 129
    new-array p0, p1, [Lcom/amap/api/fence/Fence;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/amap/api/fence/a;->a(Landroid/os/Parcel;)Lcom/amap/api/fence/Fence;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/amap/api/fence/a;->a(I)[Lcom/amap/api/fence/Fence;

    move-result-object p0

    return-object p0
.end method
