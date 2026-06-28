.class final Landroid/icu/impl/ICUResourceBundleReader$Table16;
.super Landroid/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Table16"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 0

    .line 1087
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    .line 1088
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->access$1800(Landroid/icu/impl/ICUResourceBundleReader;I)[C

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->keyOffsets:[C

    .line 1089
    iget-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->keyOffsets:[C

    array-length p1, p1

    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->size:I

    add-int/lit8 p2, p2, 0x1

    .line 1090
    iget p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->size:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/icu/impl/ICUResourceBundleReader$Table16;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 1085
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table16;->getContainer16Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    return p0
.end method
