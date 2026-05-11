.class Landroidx/versionedparcelable/d;
.super Landroidx/versionedparcelable/c;
.source "VersionedParcelParcel.java"


# instance fields
.field private final bf:Landroid/util/SparseIntArray;

.field private final cf:Ljava/lang/String;

.field private df:I

.field private ef:I

.field private final mEnd:I

.field private final mOffset:I

.field private final mParcel:Landroid/os/Parcel;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const-string v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/versionedparcelable/d;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;IILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/versionedparcelable/c;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/versionedparcelable/d;->bf:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroidx/versionedparcelable/d;->df:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/versionedparcelable/d;->ef:I

    .line 6
    iput-object p1, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    .line 7
    iput p2, p0, Landroidx/versionedparcelable/d;->mOffset:I

    .line 8
    iput p3, p0, Landroidx/versionedparcelable/d;->mEnd:I

    .line 9
    iget p1, p0, Landroidx/versionedparcelable/d;->mOffset:I

    iput p1, p0, Landroidx/versionedparcelable/d;->ef:I

    .line 10
    iput-object p4, p0, Landroidx/versionedparcelable/d;->cf:Ljava/lang/String;

    return-void
.end method

.method private Jc(I)I
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Landroidx/versionedparcelable/d;->ef:I

    iget v1, p0, Landroidx/versionedparcelable/d;->mEnd:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3
    iget-object v0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4
    iget-object v1, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5
    iget v2, p0, Landroidx/versionedparcelable/d;->ef:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/versionedparcelable/d;->ef:I

    if-ne v1, p1, :cond_0

    .line 6
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public B(I)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/d;->Jc(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public C(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/versionedparcelable/d;->wa()V

    .line 2
    iput p1, p0, Landroidx/versionedparcelable/d;->df:I

    .line 3
    iget-object v0, p0, Landroidx/versionedparcelable/d;->bf:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/d;->writeInt(I)V

    .line 5
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/d;->writeInt(I)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public readByteArray()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-array v0, v0, [B

    .line 3
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method

.method public readInt()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public readString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wa()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/versionedparcelable/d;->df:I

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/versionedparcelable/d;->bf:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int v2, v1, v0

    .line 4
    iget-object v3, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    iget-object v0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
.end method

.method public writeByteArray([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public writeInt(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method protected xa()Landroidx/versionedparcelable/c;
    .locals 5

    .line 1
    new-instance v0, Landroidx/versionedparcelable/d;

    iget-object v1, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v3, p0, Landroidx/versionedparcelable/d;->ef:I

    iget v4, p0, Landroidx/versionedparcelable/d;->mOffset:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroidx/versionedparcelable/d;->mEnd:I

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroidx/versionedparcelable/d;->cf:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/versionedparcelable/d;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    return-object v0
.end method

.method public za()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/versionedparcelable/d;->mParcel:Landroid/os/Parcel;

    const-class v0, Landroidx/versionedparcelable/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method
