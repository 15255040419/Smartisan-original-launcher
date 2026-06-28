.class Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;
.super Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceTable"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;I)V
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V

    .line 307
    iget-object p1, p1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .line 299
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 300
    iget-object p1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p1, p1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    return-void
.end method


# virtual methods
.method findString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 291
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 292
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v1, v0, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 296
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getKey(I)Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 2
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

    .line 244
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0

    .line 246
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 2
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

    .line 235
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 256
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 257
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v1, v0, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 259
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v2, v0, v1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v1

    .line 261
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 266
    :cond_0
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 268
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    move-result v2

    .line 269
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ne v4, v2, :cond_1

    return-object v3

    .line 274
    :cond_1
    invoke-virtual {v1, v0, v4}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 281
    :cond_2
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 225
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 226
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast p0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    const/4 v2, 0x0

    .line 227
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 228
    invoke-virtual {p0, v0, v2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
