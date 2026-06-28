.class public Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;
.super Ljava/lang/Object;
.source "XLocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistanceNode"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final distance:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    iget p1, p1, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    if-ne p0, p1, :cond_0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 249
    iget p0, p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ndistance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
