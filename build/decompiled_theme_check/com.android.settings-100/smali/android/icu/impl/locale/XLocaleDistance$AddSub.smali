.class Landroid/icu/impl/locale/XLocaleDistance$AddSub;
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
    name = "AddSub"
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
.field private final desiredSub:Ljava/lang/String;

.field private final r:Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;

.field private final supportedSub:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)V
    .locals 1

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;

    invoke-direct {v0, p3}, Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;-><init>(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)V

    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$AddSub;->r:Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;

    .line 708
    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleDistance$AddSub;->desiredSub:Ljava/lang/String;

    .line 709
    iput-object p2, p0, Landroid/icu/impl/locale/XLocaleDistance$AddSub;->supportedSub:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public test(Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 716
    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;

    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$AddSub;->desiredSub:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/locale/XLocaleDistance$AddSub;->supportedSub:Ljava/lang/String;

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$AddSub;->r:Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;

    invoke-virtual {p1, v0, v1, p0}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->addSubtables(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;)V

    const/4 p0, 0x1

    return p0

    .line 714
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad structure"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 701
    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$AddSub;->test(Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;)Z

    move-result p0

    return p0
.end method
