.class public Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;
.super Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;
.source "XLocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringDistanceTable"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final subtables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 426
    invoke-static {}, Landroid/icu/impl/locale/XLocaleDistance;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;",
            ">;>;)V"
        }
    .end annotation

    .line 421
    invoke-direct {p0}, Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;-><init>()V

    .line 422
    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    return-void
.end method

.method private getNode(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;
    .locals 0

    .line 502
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 506
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    return-object p0
.end method


# virtual methods
.method addSubtable(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;
    .locals 1

    .line 484
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 486
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-static {}, Landroid/icu/impl/locale/XLocaleDistance;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    if-eqz p0, :cond_1

    return-object p0

    .line 493
    :cond_1
    new-instance p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;

    invoke-direct {p0, p3}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;-><init>(I)V

    .line 494
    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addSubtables(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/XCldrStub$Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/XCldrStub$Predicate<",
            "Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;",
            ">;)V"
        }
    .end annotation

    .line 515
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->getNode(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Landroid/icu/util/Output;

    invoke-direct {v0}, Landroid/icu/util/Output;-><init>()V

    const/4 v1, 0x1

    .line 519
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->getDistance(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Z)I

    move-result v1

    .line 521
    invoke-virtual {p0, p1, p2, v1}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtable(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    move-result-object p0

    .line 522
    iget-object p1, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 523
    move-object p1, p0

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;

    iget-object p2, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast p2, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    invoke-virtual {p1, p2}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->copyTables(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)V

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 526
    :cond_1
    :goto_0
    invoke-interface {p3, p0}, Landroid/icu/impl/locale/XCldrStub$Predicate;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSubtables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 536
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 537
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 538
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "\ufffd"

    if-nez v2, :cond_1

    .line 539
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 540
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 541
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 542
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 544
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 545
    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    .line 546
    invoke-virtual {v4}, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->getDistanceTable()Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    invoke-virtual {v4, p3, p4, p5}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtable(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    goto :goto_0

    .line 552
    :cond_4
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    invoke-direct {v0}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;-><init>()V

    .line 553
    invoke-virtual {v0, p3, p4, p5}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtable(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    .line 554
    new-instance p3, Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;

    invoke-direct {p3, v0}, Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;-><init>(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)V

    .line 555
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtables(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/XCldrStub$Predicate;)V

    return-void
.end method

.method public addSubtables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 566
    iget-object v3, v0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 567
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 568
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "\ufffd"

    if-nez v5, :cond_1

    .line 569
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 570
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 571
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 572
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 574
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 575
    :cond_3
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;

    .line 576
    iget-object v7, v7, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    move-object v8, v7

    check-cast v8, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-virtual/range {v8 .. v13}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 583
    :cond_4
    new-instance v3, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    invoke-direct {v3}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;-><init>()V

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 584
    invoke-virtual {v3, v4, v5, v6}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtable(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    .line 585
    new-instance v4, Landroid/icu/impl/locale/XLocaleDistance$AddSub;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct {v4, v5, v6, v3}, Landroid/icu/impl/locale/XLocaleDistance$AddSub;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)V

    .line 586
    invoke-virtual {p0, p1, v2, v4}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtables(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/XCldrStub$Predicate;)V

    return-void
.end method

.method public bridge synthetic compact()Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;
    .locals 0

    .line 417
    invoke-virtual {p0}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->compact()Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    move-result-object p0

    return-object p0
.end method

.method public compact()Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;
    .locals 1

    .line 640
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;

    invoke-direct {v0}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;-><init>()V

    invoke-virtual {v0, p0}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;->compact(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    move-result-object p0

    return-object p0
.end method

.method public copy(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)V
    .locals 5

    .line 473
    iget-object p1, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 475
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    .line 477
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, v3, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtable(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    iget-object p1, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    .line 439
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

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

.method public getCloser(I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 646
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 647
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 648
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 649
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    iget v3, v3, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    if-ge v3, p1, :cond_1

    .line 650
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getDistance(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Z)I
    .locals 6
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

    .line 449
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "\ufffd"

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 454
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    if-nez v5, :cond_2

    .line 456
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    if-nez v0, :cond_1

    if-nez v4, :cond_1

    .line 458
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 459
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    if-nez v0, :cond_1

    .line 461
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    move-object v5, p0

    goto :goto_1

    :cond_1
    move-object v5, v0

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    if-eqz p3, :cond_3

    .line 467
    move-object p0, v5

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    iput-object p0, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_3
    if-eqz p4, :cond_4

    if-eqz v1, :cond_4

    .line 469
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    iget v2, v5, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    :goto_2
    return v2
.end method

.method public getInternalDistance(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 659
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 663
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    if-nez p0, :cond_1

    goto :goto_0

    .line 664
    :cond_1
    iget p0, p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getInternalMatches()Ljava/util/Map;
    .locals 4
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

    .line 678
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 679
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 680
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getInternalNode(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;
    .locals 0

    .line 669
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 673
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 443
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 431
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 591
    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3

    .line 596
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;

    const-string v1, "interner"

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->toString(ZLjava/lang/String;Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(ZLjava/lang/String;Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 600
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "\t"

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 601
    iget-object v3, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-virtual {p3, v3}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->getOldAndAdd(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    const/16 v4, 0x23

    const/16 v5, 0xa

    if-eqz v3, :cond_2

    .line 603
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 604
    :cond_2
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 605
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 606
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    .line 608
    invoke-virtual {p3, v6}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->getOldAndAdd(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_4

    .line 610
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 611
    :cond_4
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v1

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 612
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    .line 613
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    .line 614
    invoke-virtual {p3, v7}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->getOldAndAdd(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object v3, v2

    :goto_5
    const/16 v6, 0x9

    if-eqz v3, :cond_6

    .line 616
    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 618
    :cond_6
    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v7, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v7}, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->getDistanceTable()Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    move-result-object v3

    if-eqz v3, :cond_9

    if-eqz p1, :cond_7

    .line 621
    invoke-virtual {p3, v3}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->getOldAndAdd(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6

    :cond_7
    move-object v7, v2

    :goto_6
    if-eqz v7, :cond_8

    .line 623
    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 625
    :cond_8
    check-cast v3, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\t\t\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p1, v7, p3, p4}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->toString(ZLjava/lang/String;Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 628
    :cond_9
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    :cond_a
    :goto_8
    move-object v0, p2

    goto/16 :goto_2

    :cond_b
    :goto_9
    return-object p4
.end method
