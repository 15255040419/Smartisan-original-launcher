.class Lcom/android/settings/AppListPreference$SavedState;
.super Ljava/lang/Object;
.source "AppListPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/AppListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final entryValues:[Ljava/lang/CharSequence;

.field public final showItemNone:Z

.field public final summaries:[Ljava/lang/CharSequence;

.field public final superState:Landroid/os/Parcelable;

.field public final value:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 302
    new-instance v0, Lcom/android/settings/AppListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/AppListPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/AppListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    .line 282
    iput-object p2, p0, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    .line 283
    iput-boolean p4, p0, Lcom/android/settings/AppListPreference$SavedState;->showItemNone:Z

    .line 284
    iput-object p5, p0, Lcom/android/settings/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    .line 285
    iput-object p3, p0, Lcom/android/settings/AppListPreference$SavedState;->summaries:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 297
    iget-boolean v0, p0, Lcom/android/settings/AppListPreference$SavedState;->showItemNone:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 299
    iget-object p0, p0, Lcom/android/settings/AppListPreference$SavedState;->summaries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    return-void
.end method
