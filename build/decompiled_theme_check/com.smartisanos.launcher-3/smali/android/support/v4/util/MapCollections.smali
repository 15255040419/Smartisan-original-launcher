.class abstract Landroid/support/v4/util/MapCollections;
.super Ljava/lang/Object;
.source "MapCollections.java"


# instance fields
.field mEntrySet:Landroid/support/v4/util/MapCollections$EntrySet;

.field mKeySet:Landroid/support/v4/util/MapCollections$KeySet;

.field mValues:Landroid/support/v4/util/MapCollections$ValuesCollection;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Ljava/util/Set;

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :catch_0
    :cond_2
    return v2
.end method

.method public static removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method protected abstract colClear()V
.end method

.method protected abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract colGetMap()Ljava/util/Map;
.end method

.method protected abstract colGetSize()I
.end method

.method protected abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method protected abstract colRemoveAt(I)V
.end method

.method protected abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public getEntrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/util/MapCollections;->mEntrySet:Landroid/support/v4/util/MapCollections$EntrySet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/util/MapCollections$EntrySet;

    invoke-direct {v0, p0}, Landroid/support/v4/util/MapCollections$EntrySet;-><init>(Landroid/support/v4/util/MapCollections;)V

    iput-object v0, p0, Landroid/support/v4/util/MapCollections;->mEntrySet:Landroid/support/v4/util/MapCollections$EntrySet;

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/v4/util/MapCollections;->mEntrySet:Landroid/support/v4/util/MapCollections$EntrySet;

    return-object p0
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/util/MapCollections;->mKeySet:Landroid/support/v4/util/MapCollections$KeySet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/util/MapCollections$KeySet;

    invoke-direct {v0, p0}, Landroid/support/v4/util/MapCollections$KeySet;-><init>(Landroid/support/v4/util/MapCollections;)V

    iput-object v0, p0, Landroid/support/v4/util/MapCollections;->mKeySet:Landroid/support/v4/util/MapCollections$KeySet;

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/v4/util/MapCollections;->mKeySet:Landroid/support/v4/util/MapCollections$KeySet;

    return-object p0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/util/MapCollections;->mValues:Landroid/support/v4/util/MapCollections$ValuesCollection;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/util/MapCollections$ValuesCollection;

    invoke-direct {v0, p0}, Landroid/support/v4/util/MapCollections$ValuesCollection;-><init>(Landroid/support/v4/util/MapCollections;)V

    iput-object v0, p0, Landroid/support/v4/util/MapCollections;->mValues:Landroid/support/v4/util/MapCollections$ValuesCollection;

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/v4/util/MapCollections;->mValues:Landroid/support/v4/util/MapCollections$ValuesCollection;

    return-object p0
.end method

.method public toArrayHelper(I)[Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v0

    .line 5
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    invoke-virtual {p0, v1, p2}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    array-length p0, p1

    if-le p0, v0, :cond_2

    const/4 p0, 0x0

    .line 9
    aput-object p0, p1, v0

    :cond_2
    return-object p1
.end method
