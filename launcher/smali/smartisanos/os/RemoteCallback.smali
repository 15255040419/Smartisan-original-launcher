.class public Lsmartisanos/os/RemoteCallback;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

.implements Landroid/os/Parcelable;


# instance fields
.field private mListener:Lsmartisanos/os/RemoteCallback$OnResultListener;


# direct methods
.method public constructor <init>(Lsmartisanos/os/RemoteCallback$OnResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsmartisanos/os/RemoteCallback;->mListener:Lsmartisanos/os/RemoteCallback$OnResultListener;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lsmartisanos/os/RemoteCallback;->mListener:Lsmartisanos/os/RemoteCallback$OnResultListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lsmartisanos/os/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
