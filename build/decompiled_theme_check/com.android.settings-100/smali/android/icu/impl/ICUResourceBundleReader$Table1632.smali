.class final Landroid/icu/impl/ICUResourceBundleReader$Table1632;
.super Landroid/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Table1632"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 0

    .line 1075
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    .line 1076
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->access$1000(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p2

    .line 1077
    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->access$1700(Landroid/icu/impl/ICUResourceBundleReader;I)[C

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->keyOffsets:[C

    .line 1078
    iget-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->keyOffsets:[C

    array-length p1, p1

    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->size:I

    .line 1079
    iget p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->size:I

    add-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, -0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 1073
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    return p0
.end method
