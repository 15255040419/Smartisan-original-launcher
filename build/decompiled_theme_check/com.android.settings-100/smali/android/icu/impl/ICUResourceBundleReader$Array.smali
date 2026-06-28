.class Landroid/icu/impl/ICUResourceBundleReader$Array;
.super Landroid/icu/impl/ICUResourceBundleReader$Container;
.source "ICUResourceBundleReader.java"

# interfaces
.implements Landroid/icu/impl/UResource$Array;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Array"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 979
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(ILandroid/icu/impl/UResource$Value;)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 982
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-ge p1, v0, :cond_0

    .line 983
    check-cast p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    .line 984
    iget-object v0, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    iput p0, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
