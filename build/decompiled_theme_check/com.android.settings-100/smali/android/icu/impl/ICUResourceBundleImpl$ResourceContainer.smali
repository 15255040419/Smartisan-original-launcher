.class abstract Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ResourceContainer"
.end annotation


# instance fields
.field protected value:Landroid/icu/impl/ICUResourceBundleReader$Container;


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->getContainerResource(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 165
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method protected getContainerResource(I)I
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    return p0
.end method

.method public getSize()I
    .locals 0

    .line 142
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    move-result p0

    return p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 146
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 154
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
