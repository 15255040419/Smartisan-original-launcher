.class Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;
.super Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;
.source "XLocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringDistanceNode"
.end annotation


# instance fields
.field final distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 374
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    invoke-direct {v0}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;-><init>(ILandroid/icu/impl/locale/XLocaleDistance$DistanceTable;)V

    return-void
.end method

.method public constructor <init>(ILandroid/icu/impl/locale/XLocaleDistance$DistanceTable;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;-><init>(I)V

    .line 355
    iput-object p2, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    return-void
.end method


# virtual methods
.method public addSubtables(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;)V
    .locals 0

    .line 378
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtables(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/XCldrStub$Predicate;)V

    return-void
.end method

.method public copyTables(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 387
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->copy(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distance:I

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;

    iget v1, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distance:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    iget-object v1, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    .line 365
    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-super {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->equals(Ljava/lang/Object;)Z

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

.method public getDistanceTable()Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;
    .locals 0

    .line 393
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 370
    iget v0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distance:I

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    invoke-static {p0}, Landroid/icu/impl/Utility;->hashCode(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "distance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
