.class Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;
.super Ljava/lang/Object;
.source "XLocaleDistance.java"

# interfaces
.implements Landroid/icu/impl/locale/XLocaleDistance$IdMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdMakerFull"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/icu/impl/locale/XLocaleDistance$IdMapper<",
        "TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final intToObject:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field private final objectToInt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "unnamed"

    .line 271
    invoke-direct {p0, v0}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->objectToInt:Ljava/util/Map;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->intToObject:Ljava/util/List;

    .line 267
    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->name:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, p2}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->add(Ljava/lang/Object;)Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->objectToInt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->intToObject:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 286
    iget-object v1, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->objectToInt:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->intToObject:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->intToObject:Ljava/util/List;

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;

    iget-object p1, p1, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->intToObject:Ljava/util/List;

    .line 342
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public fromId(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 307
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->intToObject:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getOldAndAdd(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->objectToInt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 326
    iget-object v1, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->intToObject:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 327
    iget-object v2, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->objectToInt:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->intToObject:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 0

    .line 346
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->intToObject:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method

.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 314
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->add(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->fromId(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 318
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->intToObject:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public toId(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 299
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->objectToInt:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic toId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->toId(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->intToObject:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
