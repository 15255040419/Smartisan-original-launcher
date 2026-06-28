.class final Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceString"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 113
    iget-object p1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p1, p1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0xc

    if-lt p2, p3, :cond_0

    .line 116
    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 117
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->resource:I

    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
