.class Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;
.super Ljava/lang/Object;
.source "XLocaleDistance.java"

# interfaces
.implements Landroid/icu/impl/locale/XCldrStub$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CopyIfEmpty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/locale/XCldrStub$Predicate<",
        "Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final toCopy:Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;


# direct methods
.method constructor <init>(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)V
    .locals 0

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;->toCopy:Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    return-void
.end method


# virtual methods
.method public test(Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;)Z
    .locals 1

    .line 693
    invoke-virtual {p1}, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->getDistanceTable()Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    .line 694
    iget-object v0, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;->toCopy:Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    invoke-virtual {p1, p0}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->copy(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 686
    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;->test(Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;)Z

    move-result p0

    return p0
.end method
