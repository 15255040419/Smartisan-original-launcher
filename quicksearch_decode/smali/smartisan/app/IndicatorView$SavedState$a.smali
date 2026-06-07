.class public final Lsmartisan/app/IndicatorView$SavedState$a;
.super Ljava/lang/Object;
.source "IndicatorView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/app/IndicatorView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsmartisan/app/IndicatorView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/app/IndicatorView$SavedState$a;->createFromParcel(Landroid/os/Parcel;)Lsmartisan/app/IndicatorView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsmartisan/app/IndicatorView$SavedState;
    .locals 2

    .line 2
    new-instance v0, Lsmartisan/app/IndicatorView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsmartisan/app/IndicatorView$SavedState;-><init>(Landroid/os/Parcel;Lsmartisan/app/IndicatorView$a;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/app/IndicatorView$SavedState$a;->newArray(I)[Lsmartisan/app/IndicatorView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lsmartisan/app/IndicatorView$SavedState;
    .locals 0

    .line 2
    new-array p1, p1, [Lsmartisan/app/IndicatorView$SavedState;

    return-object p1
.end method
