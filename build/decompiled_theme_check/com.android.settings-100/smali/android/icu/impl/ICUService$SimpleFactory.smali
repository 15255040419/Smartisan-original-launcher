.class public Landroid/icu/impl/ICUService$SimpleFactory;
.super Ljava/lang/Object;
.source "ICUService.java"

# interfaces
.implements Landroid/icu/impl/ICUService$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleFactory"
.end annotation


# instance fields
.field protected id:Ljava/lang/String;

.field protected instance:Ljava/lang/Object;

.field protected visible:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 281
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/ICUService$SimpleFactory;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 293
    iput-object p1, p0, Landroid/icu/impl/ICUService$SimpleFactory;->instance:Ljava/lang/Object;

    .line 294
    iput-object p2, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    .line 295
    iput-boolean p3, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    return-void

    .line 291
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Instance or id is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    .line 304
    iget-object p2, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 305
    iget-object p0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->instance:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 330
    iget-boolean p2, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", id: "

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v1, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", visible: "

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-boolean p0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 343
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

    .line 316
    iget-boolean v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->visible:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 319
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
