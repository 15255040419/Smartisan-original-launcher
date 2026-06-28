.class final Landroid/icu/impl/ICUResourceBundleReader$Array32;
.super Landroid/icu/impl/ICUResourceBundleReader$Array;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Array32"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 0

    .line 995
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    .line 996
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->access$1000(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p2

    .line 997
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->access$900(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p1

    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Array32;->size:I

    add-int/lit8 p2, p2, 0x4

    .line 998
    iput p2, p0, Landroid/icu/impl/ICUResourceBundleReader$Array32;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 993
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Array32;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    return p0
.end method
