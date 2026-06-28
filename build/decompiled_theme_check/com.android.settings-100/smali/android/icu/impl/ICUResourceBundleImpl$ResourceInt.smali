.class final Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceInt"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getInt()I
    .locals 0

    .line 88
    iget p0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;->resource:I

    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_INT(I)I

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public getUInt()I
    .locals 0

    .line 92
    iget p0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;->resource:I

    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_UINT(I)I

    move-result p0

    return p0
.end method
