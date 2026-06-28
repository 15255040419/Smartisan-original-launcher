.class Landroid/icu/impl/ICUResourceBundleReader$Table;
.super Landroid/icu/impl/ICUResourceBundleReader$Container;
.source "ICUResourceBundleReader.java"

# interfaces
.implements Landroid/icu/impl/UResource$Table;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Table"
.end annotation


# static fields
.field private static final URESDATA_ITEM_NOT_FOUND:I = -0x1


# instance fields
.field protected key32Offsets:[I

.field protected keyOffsets:[C


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1015
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    return-void
.end method


# virtual methods
.method findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I
    .locals 4

    .line 1032
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1035
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v3, :cond_0

    .line 1036
    aget-char v3, v3, v2

    invoke-static {p1, p2, v3}, Landroid/icu/impl/ICUResourceBundleReader;->access$1300(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I

    move-result v3

    goto :goto_1

    .line 1038
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget v3, v3, v2

    invoke-static {p1, p2, v3}, Landroid/icu/impl/ICUResourceBundleReader;->access$1400(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I

    move-result v3

    :goto_1
    if-gez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 1

    if-ltz p2, :cond_2

    .line 1018
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    if-gt v0, p2, :cond_0

    goto :goto_1

    .line 1021
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v0, :cond_1

    .line 1022
    aget-char p0, v0, p2

    invoke-static {p1, p0}, Landroid/icu/impl/ICUResourceBundleReader;->access$1100(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1023
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget p0, p0, p2

    invoke-static {p1, p0}, Landroid/icu/impl/ICUResourceBundleReader;->access$1200(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z
    .locals 2

    if-ltz p1, :cond_1

    .line 1057
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    if-ge p1, v0, :cond_1

    .line 1058
    check-cast p3, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    .line 1059
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p3, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    aget-char v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->access$1500(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V

    goto :goto_0

    .line 1062
    :cond_0
    iget-object v0, p3, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->access$1600(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V

    .line 1064
    :goto_0
    iget-object p2, p3, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p0, p2, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    iput p0, p3, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I
    .locals 0

    .line 1053
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    return p0
.end method
