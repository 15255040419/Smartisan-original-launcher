.class public abstract Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;
.super Ljava/lang/Object;
.source "XLocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DistanceTable"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compact()Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;
    .locals 0

    return-object p0
.end method

.method abstract getCloser(I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract getDistance(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public getInternalMatches()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInternalNode(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method abstract toString(Z)Ljava/lang/String;
.end method
