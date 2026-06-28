.class public Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;
.super Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICULocaleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleLocaleKeyFactory"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final kind:I

.field private final obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 489
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;-><init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZLjava/lang/String;)V
    .locals 0

    .line 493
    invoke-direct {p0, p4, p5}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(ZLjava/lang/String;)V

    .line 495
    iput-object p1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->obj:Ljava/lang/Object;

    .line 496
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    .line 497
    iput p3, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    return-void
.end method


# virtual methods
.method public create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 2

    .line 505
    instance-of p2, p1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 509
    :cond_0
    check-cast p1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    .line 510
    iget p2, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v1

    if-eq p2, v1, :cond_1

    return-object v0

    .line 513
    :cond_1
    iget-object p2, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/ICULocaleService$LocaleKey;->currentID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 517
    :cond_2
    iget-object p0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method protected isSupportedID(Ljava/lang/String;)Z
    .locals 0

    .line 522
    iget-object p0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", id: "

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind: "

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget p0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateVisibleIDs(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;)V"
        }
    .end annotation

    .line 527
    iget-boolean v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->visible:Z

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 530
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
