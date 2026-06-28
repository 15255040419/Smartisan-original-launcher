.class Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;
.super Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceArray"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 211
    iget-object p1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p1, p1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    return-void
.end method


# virtual methods
.method public getStringArray()[Ljava/lang/String;
    .locals 0

    .line 196
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->handleGetStringArray()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method protected handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 202
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method protected handleGetStringArray()[Ljava/lang/String;
    .locals 5

    .line 182
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 183
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    move-result v1

    .line 184
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 186
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v4, v0, v3}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 190
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v2
.end method
