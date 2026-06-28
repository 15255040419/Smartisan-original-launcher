.class final Landroid/icu/impl/ICUResourceBundleReader$Table32;
.super Landroid/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Table32"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 0

    .line 1098
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    .line 1099
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->access$1000(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p2

    .line 1100
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->access$1900(Landroid/icu/impl/ICUResourceBundleReader;I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->key32Offsets:[I

    .line 1101
    iget-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->key32Offsets:[I

    array-length p1, p1

    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->size:I

    .line 1102
    iget p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->size:I

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p2, p1

    iput p2, p0, Landroid/icu/impl/ICUResourceBundleReader$Table32;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 1096
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table32;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    return p0
.end method
