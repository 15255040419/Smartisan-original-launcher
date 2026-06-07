.class public Lsmartisan/widget/ListContentItemSwitchDark$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ListContentItemSwitchDark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/ListContentItemSwitchDark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsmartisan/widget/ListContentItemSwitchDark$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/ListContentItemSwitchDark$SavedState$a;

    invoke-direct {v0}, Lsmartisan/widget/ListContentItemSwitchDark$SavedState$a;-><init>()V

    sput-object v0, Lsmartisan/widget/ListContentItemSwitchDark$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lsmartisan/widget/ListContentItemSwitchDark$SavedState;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lsmartisan/widget/ListContentItemSwitchDark$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/ListContentItemSwitchDark$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-boolean p2, p0, Lsmartisan/widget/ListContentItemSwitchDark$SavedState;->a:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
