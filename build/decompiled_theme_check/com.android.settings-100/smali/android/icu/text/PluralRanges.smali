.class public final Landroid/icu/text/PluralRanges;
.super Ljava/lang/Object;
.source "PluralRanges.java"

# interfaces
.implements Landroid/icu/util/Freezable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralRanges$Matrix;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/PluralRanges;",
        ">;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/text/PluralRanges;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private explicit:[Z

.field private volatile isFrozen:Z

.field private matrix:Landroid/icu/text/PluralRanges$Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/icu/text/PluralRanges$Matrix;

    invoke-direct {v0}, Landroid/icu/text/PluralRanges$Matrix;-><init>()V

    iput-object v0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    .line 33
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    return-void
.end method


# virtual methods
.method public add(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    iget-boolean v0, p0, Landroid/icu/text/PluralRanges;->isFrozen:Z

    if-nez v0, :cond_5

    .line 208
    iget-object v0, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p3}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 210
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object p1

    array-length v1, p1

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    if-nez p2, :cond_0

    .line 212
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v5

    array-length v6, v5

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 213
    iget-object v9, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v9, v4, v8, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 216
    :cond_0
    iget-object v5, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v6

    aput-boolean v2, v5, v6

    .line 217
    iget-object v5, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v5, v4, p2, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 221
    iget-object p2, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aput-boolean v2, p2, v1

    .line 222
    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object p2

    array-length v1, p2

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v2, p2, v0

    .line 223
    iget-object v3, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v3, p1, v2, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 226
    :cond_3
    iget-object v0, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aput-boolean v2, v0, v1

    .line 227
    iget-object v0, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aput-boolean v2, v0, v1

    .line 228
    iget-object p0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    :cond_4
    return-void

    .line 206
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public cloneAsThawed()Landroid/icu/text/PluralRanges;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    new-instance v0, Landroid/icu/text/PluralRanges;

    invoke-direct {v0}, Landroid/icu/text/PluralRanges;-><init>()V

    .line 353
    iget-object v1, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, v0, Landroid/icu/text/PluralRanges;->explicit:[Z

    .line 354
    iget-object p0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0}, Landroid/icu/text/PluralRanges$Matrix;->clone()Landroid/icu/text/PluralRanges$Matrix;

    move-result-object p0

    iput-object p0, v0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    invoke-virtual {p0}, Landroid/icu/text/PluralRanges;->cloneAsThawed()Landroid/icu/text/PluralRanges;

    move-result-object p0

    return-object p0
.end method

.method public compareTo(Landroid/icu/text/PluralRanges;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    iget-object p0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    iget-object p1, p1, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRanges$Matrix;->compareTo(Landroid/icu/text/PluralRanges$Matrix;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    check-cast p1, Landroid/icu/text/PluralRanges;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRanges;->compareTo(Landroid/icu/text/PluralRanges;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 292
    :cond_0
    instance-of v1, p1, Landroid/icu/text/PluralRanges;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 295
    :cond_1
    check-cast p1, Landroid/icu/text/PluralRanges;

    .line 296
    iget-object v1, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    iget-object v3, p1, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v1, v3}, Landroid/icu/text/PluralRanges$Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    iget-object p1, p1, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public freeze()Landroid/icu/text/PluralRanges;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Landroid/icu/text/PluralRanges;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    invoke-virtual {p0}, Landroid/icu/text/PluralRanges;->freeze()Landroid/icu/text/PluralRanges;

    move-result-object p0

    return-object p0
.end method

.method public get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    iget-object p0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, p2

    :cond_0
    return-object p0
.end method

.method public hashCode()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 307
    iget-object p0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0}, Landroid/icu/text/PluralRanges$Matrix;->hashCode()I

    move-result p0

    return p0
.end method

.method public isExplicit(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    iget-object p0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExplicitlySet(Landroid/icu/impl/StandardPlural;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    iget-object p0, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isFrozen()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    iget-boolean p0, p0, Landroid/icu/text/PluralRanges;->isFrozen:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    iget-object p0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0}, Landroid/icu/text/PluralRanges$Matrix;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
