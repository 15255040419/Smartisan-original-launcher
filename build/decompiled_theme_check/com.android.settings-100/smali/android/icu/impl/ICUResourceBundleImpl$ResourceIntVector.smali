.class final Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceIntVector"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getIntVector()[I
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->resource:I

    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundleReader;->getIntVector(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/16 p0, 0xe

    return p0
.end method
