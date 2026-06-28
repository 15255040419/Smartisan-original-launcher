.class public Landroid/icu/util/UResourceBundleIterator;
.super Ljava/lang/Object;
.source "UResourceBundleIterator.java"


# instance fields
.field private bundle:Landroid/icu/util/UResourceBundle;

.field private index:I

.field private size:I


# direct methods
.method public constructor <init>(Landroid/icu/util/UResourceBundle;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    .line 42
    iput v0, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    .line 50
    iput-object p1, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    .line 51
    iget-object p1, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    invoke-virtual {p1}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result p1

    iput p1, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 91
    iget v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    iget p0, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Landroid/icu/util/UResourceBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 60
    iget v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Landroid/icu/util/UResourceTypeMismatchException;
        }
    .end annotation

    .line 72
    iget v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    iget v1, p0, Landroid/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Landroid/icu/util/UResourceBundleIterator;->bundle:Landroid/icu/util/UResourceBundle;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Landroid/icu/util/UResourceBundleIterator;->index:I

    return-void
.end method
