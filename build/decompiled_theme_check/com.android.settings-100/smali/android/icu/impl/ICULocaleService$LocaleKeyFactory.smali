.class public abstract Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.super Ljava/lang/Object;
.source "ICULocaleService.java"

# interfaces
.implements Landroid/icu/impl/ICUService$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICULocaleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LocaleKeyFactory"
.end annotation


# static fields
.field public static final INVISIBLE:Z = false

.field public static final VISIBLE:Z = true


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final visible:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-boolean p1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    const/4 p1, 0x0

    .line 365
    iput-object p1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-boolean p1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    .line 373
    iput-object p2, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 1

    .line 383
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->handlesKey(Landroid/icu/impl/ICUService$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    check-cast p1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    .line 385
    invoke-virtual {p1}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v0

    .line 387
    invoke-virtual {p1}, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentLocale()Landroid/icu/util/ULocale;

    move-result-object p1

    .line 388
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    return-object p1

    .line 430
    :cond_0
    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0, p2}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSupportedIDs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 460
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method protected handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handlesKey(Landroid/icu/impl/ICUService$Key;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object p0

    .line 400
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isSupportedID(Ljava/lang/String;)Z
    .locals 0

    .line 451
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", name: "

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", visible: "

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    iget-boolean p0, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateVisibleIDs(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;)V"
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 412
    iget-boolean v2, p0, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    if-eqz v2, :cond_0

    .line 413
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 415
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
