.class public Lsmartisan/widget/SmartisanDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SmartisanDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanDatePicker;
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
            "Lsmartisan/widget/SmartisanDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/SmartisanDatePicker$SavedState$a;

    invoke-direct {v0}, Lsmartisan/widget/SmartisanDatePicker$SavedState$a;-><init>()V

    sput-object v0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->a:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->b:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lsmartisan/widget/SmartisanDatePicker$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iput p2, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->a:I

    .line 5
    iput p3, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->b:I

    .line 6
    iput p4, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcelable;IIILsmartisan/widget/SmartisanDatePicker$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lsmartisan/widget/SmartisanDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanDatePicker$SavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->b:I

    return p0
.end method

.method public static synthetic b(Lsmartisan/widget/SmartisanDatePicker$SavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->c:I

    return p0
.end method

.method public static synthetic c(Lsmartisan/widget/SmartisanDatePicker$SavedState;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->a:I

    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lsmartisan/widget/SmartisanDatePicker$SavedState;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
