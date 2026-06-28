.class Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;
.super Landroid/icu/impl/UResource$Value;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReaderValue"
.end annotation


# instance fields
.field reader:Landroid/icu/impl/ICUResourceBundleReader;

.field res:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 803
    invoke-direct {p0}, Landroid/icu/impl/UResource$Value;-><init>()V

    return-void
.end method

.method private getStringArray(Landroid/icu/impl/ICUResourceBundleReader$Array;)[Ljava/lang/String;
    .locals 4

    .line 927
    iget v0, p1, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 928
    :goto_0
    iget v2, p1, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-ge v1, v2, :cond_1

    .line 929
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1, v2, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    .line 930
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v3, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 934
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 932
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAliasString()Ljava/lang/String;
    .locals 1

    .line 823
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 825
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getArray()Landroid/icu/impl/UResource$Array;
    .locals 1

    .line 866
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 868
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBinary()Ljava/nio/ByteBuffer;
    .locals 1

    .line 857
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundleReader;->getBinary(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 859
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInt()I
    .locals 2

    .line 832
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 835
    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_INT(I)I

    move-result p0

    return p0

    .line 833
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIntVector()[I
    .locals 1

    .line 848
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundleReader;->getIntVector(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 850
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 814
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 816
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStringArray()[Ljava/lang/String;
    .locals 2

    .line 889
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->getStringArray(Landroid/icu/impl/ICUResourceBundleReader$Array;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 891
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStringArrayOrStringAsArray()[Ljava/lang/String;
    .locals 2

    .line 898
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    invoke-direct {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->getStringArray(Landroid/icu/impl/ICUResourceBundleReader$Array;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 902
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    .line 906
    :cond_1
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStringOrFirstOfArray()Ljava/lang/String;
    .locals 3

    .line 911
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 915
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 916
    iget v1, v0, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-lez v1, :cond_1

    .line 917
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    .line 918
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 923
    :cond_1
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTable()Landroid/icu/impl/UResource$Table;
    .locals 1

    .line 875
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 877
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType()I
    .locals 1

    .line 809
    invoke-static {}, Landroid/icu/impl/ICUResourceBundleReader;->access$400()[I

    move-result-object v0

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method public getUInt()I
    .locals 2

    .line 840
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 843
    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_UINT(I)I

    move-result p0

    return p0

    .line 841
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isNoInheritanceMarker()Z
    .locals 1

    .line 884
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0, p0}, Landroid/icu/impl/ICUResourceBundleReader;->access$500(Landroid/icu/impl/ICUResourceBundleReader;I)Z

    move-result p0

    return p0
.end method
