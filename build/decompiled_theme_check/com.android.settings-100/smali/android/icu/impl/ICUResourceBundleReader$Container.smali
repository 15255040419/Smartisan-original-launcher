.class Landroid/icu/impl/ICUResourceBundleReader$Container;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Container"
.end annotation


# instance fields
.field protected itemsOffset:I

.field protected size:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContainer16Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    if-ltz p2, :cond_2

    .line 953
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    if-gt v0, p2, :cond_0

    goto :goto_1

    .line 956
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->access$600(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;

    move-result-object v0

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    add-int/2addr p0, p2

    invoke-virtual {v0, p0}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result p0

    .line 957
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->access$700(Landroid/icu/impl/ICUResourceBundleReader;)I

    move-result p2

    if-ge p0, p2, :cond_1

    goto :goto_0

    .line 962
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->access$700(Landroid/icu/impl/ICUResourceBundleReader;)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->access$800(Landroid/icu/impl/ICUResourceBundleReader;)I

    move-result p1

    add-int/2addr p0, p1

    :goto_0
    const/high16 p1, 0x60000000

    or-int/2addr p0, p1

    return p0

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method protected getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    if-ltz p2, :cond_1

    .line 967
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    if-gt v0, p2, :cond_0

    goto :goto_0

    .line 970
    :cond_0
    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p0, p2

    invoke-static {p1, p0}, Landroid/icu/impl/ICUResourceBundleReader;->access$900(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I
    .locals 0

    .line 973
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    return p0
.end method

.method public final getSize()I
    .locals 0

    .line 947
    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    return p0
.end method
