.class public Lcom/android/settingslib/AppItem;
.super Ljava/lang/Object;
.source "AppItem.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/AppItem;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CATEGORY_APP:I = 0x2

.field public static final CATEGORY_APP_TITLE:I = 0x1

.field public static final CATEGORY_USER:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settingslib/AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public category:I

.field public final key:I

.field public restricted:Z

.field public total:J

.field public uids:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/android/settingslib/AppItem$1;

    invoke-direct {v0}, Lcom/android/settingslib/AppItem$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/android/settingslib/AppItem;->key:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 40
    iput p1, p0, Lcom/android/settingslib/AppItem;->key:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/AppItem;->key:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/AppItem;->total:J

    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public compareTo(Lcom/android/settingslib/AppItem;)I
    .locals 2

    .line 67
    iget v0, p0, Lcom/android/settingslib/AppItem;->category:I

    iget v1, p1, Lcom/android/settingslib/AppItem;->category:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-wide v0, p1, Lcom/android/settingslib/AppItem;->total:J

    iget-wide p0, p0, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/android/settingslib/AppItem;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/AppItem;->compareTo(Lcom/android/settingslib/AppItem;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 55
    iget p2, p0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object p2, p0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 57
    iget-wide v0, p0, Lcom/android/settingslib/AppItem;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
