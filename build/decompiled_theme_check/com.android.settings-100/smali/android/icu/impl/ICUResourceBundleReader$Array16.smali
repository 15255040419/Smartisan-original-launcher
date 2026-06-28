.class final Landroid/icu/impl/ICUResourceBundleReader$Array16;
.super Landroid/icu/impl/ICUResourceBundleReader$Array;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Array16"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 0

    .line 1006
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    .line 1007
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->access$600(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result p1

    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$Array16;->size:I

    add-int/lit8 p2, p2, 0x1

    .line 1008
    iput p2, p0, Landroid/icu/impl/ICUResourceBundleReader$Array16;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 0

    .line 1004
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Array16;->getContainer16Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    return p0
.end method
