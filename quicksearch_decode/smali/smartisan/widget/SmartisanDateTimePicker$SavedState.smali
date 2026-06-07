.class public Lsmartisan/widget/SmartisanDateTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SmartisanDateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanDateTimePicker;
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
            "Lsmartisan/widget/SmartisanDateTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:J

.field public c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState$a;

    invoke-direct {v0}, Lsmartisan/widget/SmartisanDateTimePicker$SavedState$a;-><init>()V

    sput-object v0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 10
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->a:J

    .line 12
    iput-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->b:J

    .line 13
    iput-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->c:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->a:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->b:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lsmartisan/widget/SmartisanDateTimePicker$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;JJJ)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->a:J

    .line 5
    iput-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->b:J

    .line 6
    iput-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->c:J

    .line 7
    iput-wide p2, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->a:J

    .line 8
    iput-wide p4, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->b:J

    .line 9
    iput-wide p6, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcelable;JJJLsmartisan/widget/SmartisanDateTimePicker$a;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;JJJ)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanDateTimePicker$SavedState;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->a:J

    return-wide v0
.end method

.method public static synthetic b(Lsmartisan/widget/SmartisanDateTimePicker$SavedState;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->b:J

    return-wide v0
.end method

.method public static synthetic c(Lsmartisan/widget/SmartisanDateTimePicker$SavedState;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->c:J

    return-wide v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
