.class public Lcom/smartisanos/launcher/view/a/aa;
.super Ljava/lang/Object;
.source "CellHelperUtils.java"


# direct methods
.method public static a(IIZ)F
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/a;->sq()F

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_1_3X3_MODE(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    :cond_0
    if-eqz p2, :cond_2

    .line 5
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    int-to-float p0, p0

    .line 6
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-nez p2, :cond_1

    .line 7
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y_without_app_name:I

    int-to-float p0, p0

    .line 8
    :cond_1
    sget-object p2, Lcom/smartisanos/launcher/data/Constants;->pageSizeScale:[Lcom/smartisanos/smengine/a/i;

    aget-object v1, p2, p1

    iget v1, v1, Lcom/smartisanos/smengine/a/i;->y:F

    mul-float/2addr v0, v1

    .line 9
    aget-object p1, p2, p1

    iget p1, p1, Lcom/smartisanos/smengine/a/i;->y:F

    mul-float/2addr p0, p1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    int-to-float p1, p1

    .line 11
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-nez p2, :cond_3

    .line 12
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y_without_app_name:I

    int-to-float p0, p0

    goto :goto_0

    :cond_3
    move p0, p1

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method public static a(Lcom/smartisanos/launcher/data/ItemInfo;IILjava/util/ArrayList;Lcom/smartisanos/launcher/data/LayoutProperty;Z)Lcom/smartisanos/launcher/view/a/ka;
    .locals 6

    if-eqz p3, :cond_4

    .line 39
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-eqz p4, :cond_4

    .line 40
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    .line 41
    check-cast p0, Lcom/smartisanos/launcher/data/FolderInfo;

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->vt()J

    move-result-wide v2

    .line 43
    new-instance p4, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-direct {p4}, Lcom/smartisanos/launcher/data/FolderInfo;-><init>()V

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 44
    iput-wide v2, p4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 45
    iput-boolean v1, p4, Lcom/smartisanos/launcher/data/FolderInfo;->isGenIdInGL:Z

    .line 46
    sget v2, Lcom/smartisanos/launcher/ob;->folder_name:I

    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    const-string v2, "com.smartisan.folder"

    .line 47
    iput-object v2, p4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.smartisan.folder.folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    const/4 v2, 0x2

    .line 49
    iput-byte v2, p4, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 50
    iget v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iput v2, p4, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 51
    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    iput p0, p4, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 52
    iput v0, p4, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    .line 53
    iput v0, p4, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 54
    iput-boolean v0, p4, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 55
    invoke-static {p4}, Lcom/smartisanos/launcher/Aa;->c(Lcom/smartisanos/launcher/data/ItemInfo;)V

    move-object p0, p4

    :goto_0
    move p4, v0

    .line 56
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p4, v2, :cond_1

    .line 57
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 58
    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {p0, v2, v3}, Lcom/smartisanos/launcher/data/FolderInfo;->add(J)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_3

    .line 59
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 60
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result p5

    invoke-static {p5}, Lcom/smartisanos/launcher/data/Constants;->cellCount(I)I

    move-result p5

    :goto_2
    if-ge v0, p4, :cond_2

    .line 61
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 62
    div-int v3, v0, p5

    iput v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 63
    rem-int v3, v0, p5

    iput v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 64
    :cond_2
    invoke-static {p3}, Lcom/smartisanos/launcher/data/K;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 65
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Folder_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 66
    new-instance p4, Lcom/smartisanos/launcher/view/a/ba;

    invoke-direct {p4}, Lcom/smartisanos/launcher/view/a/ba;-><init>()V

    const-string p5, "itemInfo"

    .line 67
    invoke-virtual {p4, p5, p0}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "rowIndex"

    .line 68
    invoke-virtual {p4, p0, p1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const-string p0, "columnIndex"

    .line 69
    invoke-virtual {p4, p0, p2}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const-string p0, "RenderWithBatch"

    .line 70
    invoke-virtual {p4, p0, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const-string p0, "RenderUsePageBatch"

    .line 71
    invoke-virtual {p4, p0, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const-string p0, "PageCell"

    .line 72
    invoke-virtual {p4, p0, v1}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    .line 73
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p0

    const-string p1, "singlePageMode"

    invoke-virtual {p4, p1, p0}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 74
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result p0

    const-string p1, "multiPageMode"

    invoke-virtual {p4, p1, p0}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 75
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p0

    const-string p1, "KeyCurrentPageMode"

    invoke-virtual {p4, p1, p0}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 76
    new-instance p0, Lcom/smartisanos/launcher/view/a/ka;

    invoke-direct {p0, p3, p4}, Lcom/smartisanos/launcher/view/a/ka;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    .line 77
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->lb(I)V

    return-object p0

    .line 78
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### folder children is null, or childe count is 0."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/util/ArrayList;IILandroid/graphics/Paint;)Lcom/smartisanos/launcher/view/a/ka;
    .locals 3

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    check-cast p0, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 82
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/FolderInfo;->clear()V

    const/4 v0, 0x0

    .line 83
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 84
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 85
    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/launcher/data/FolderInfo;->add(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Folder_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v0, Lcom/smartisanos/launcher/view/a/ba;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/a/ba;-><init>()V

    const-string v1, "itemInfo"

    .line 88
    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "paint"

    .line 89
    invoke-virtual {v0, p0, p4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "singlePageMode"

    .line 90
    invoke-virtual {v0, p0, p2}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const-string p0, "multiPageMode"

    .line 91
    invoke-virtual {v0, p0, p3}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const-string p0, "KeyCurrentPageMode"

    .line 92
    invoke-virtual {v0, p0, p2}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 93
    new-instance p0, Lcom/smartisanos/launcher/view/a/ka;

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/a/ka;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    return-object p0

    .line 94
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "only init dockview can be call this method. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### folder children is null, or childe count is 0."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/j;[I)V
    .locals 7

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/h;->Bt()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, p4, Lcom/smartisanos/smengine/a/j;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, p4, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 15
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, p4, Lcom/smartisanos/smengine/a/j;->x:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget p4, p4, Lcom/smartisanos/smengine/a/j;->y:F

    div-float/2addr p4, v4

    sub-float/2addr v5, p4

    iget p4, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v2, v3, v5, p4, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 16
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p4

    invoke-virtual {p4}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object p4

    invoke-virtual {p4}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object p4

    .line 17
    invoke-virtual {p4}, Lcom/smartisanos/smengine/Camera;->Rj()Lcom/smartisanos/smengine/a/f;

    move-result-object p4

    .line 18
    new-instance v3, Lcom/smartisanos/smengine/a/k;

    iget v4, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-static {p4, v3, p5}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/a/f;Lcom/smartisanos/smengine/a/k;[I)Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    .line 19
    invoke-static {p4, v1, p5}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/a/f;Lcom/smartisanos/smengine/a/k;[I)Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    .line 20
    invoke-static {p4, v2, p5}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/a/f;Lcom/smartisanos/smengine/a/k;[I)Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    .line 21
    iget v3, v2, Lcom/smartisanos/smengine/a/i;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/i;->x:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p2, Lcom/smartisanos/smengine/a/i;->x:F

    .line 22
    iget v2, v2, Lcom/smartisanos/smengine/a/i;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/i;->y:F

    sub-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    iput v1, p2, Lcom/smartisanos/smengine/a/i;->y:F

    .line 23
    iget p2, v0, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 24
    iget p2, v0, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/h;->Bt()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 27
    new-instance p1, Lcom/smartisanos/smengine/a/k;

    iget p2, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {p1, p2, v1, p0, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 28
    invoke-static {p4, p1, p5}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/a/f;Lcom/smartisanos/smengine/a/k;[I)Lcom/smartisanos/smengine/a/i;

    move-result-object p0

    .line 29
    iget p1, p0, Lcom/smartisanos/smengine/a/i;->x:F

    iget p2, v0, Lcom/smartisanos/smengine/a/i;->x:F

    sub-float/2addr p1, p2

    iput p1, p3, Lcom/smartisanos/smengine/a/i;->x:F

    .line 30
    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    iget p1, v0, Lcom/smartisanos/smengine/a/i;->y:F

    sub-float/2addr p0, p1

    iput p0, p3, Lcom/smartisanos/smengine/a/i;->y:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 31
    iput p0, p3, Lcom/smartisanos/smengine/a/i;->x:F

    .line 32
    iput p0, p3, Lcom/smartisanos/smengine/a/i;->y:F

    :goto_0
    return-void
.end method

.method public static a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/smengine/a/j;[I)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/h;->Bt()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 34
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->Rj()Lcom/smartisanos/smengine/a/f;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    iget v2, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget p0, p0, Lcom/smartisanos/smengine/a/j;->z:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-static {v0, v1, p2}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/smengine/a/f;Lcom/smartisanos/smengine/a/k;[I)Lcom/smartisanos/smengine/a/i;

    move-result-object p0

    .line 37
    iget p2, p0, Lcom/smartisanos/smengine/a/i;->x:F

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p1, Lcom/smartisanos/smengine/a/j;->x:F

    .line 38
    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    float-to-int p0, p0

    int-to-float p0, p0

    iput p0, p1, Lcom/smartisanos/smengine/a/j;->y:F

    return-void
.end method

.method public static k(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/smartisanos/launcher/view/a/g;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/smartisanos/launcher/view/a/ka;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static l(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 3

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/FolderInfo;->kf()Ljava/util/ArrayList;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 5
    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->af()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->naa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0, v2, v1}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v0}, Lcom/smartisanos/launcher/Aa;->a(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->daa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0, v2, v1}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static o(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/a/i;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 3
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->pageSizeScale:[Lcom/smartisanos/smengine/a/i;

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->hH:I

    aget-object p0, v2, p0

    .line 4
    new-instance v2, Lcom/smartisanos/smengine/a/i;

    iget v3, p0, Lcom/smartisanos/smengine/a/i;->x:F

    div-float/2addr v0, v3

    iget p0, p0, Lcom/smartisanos/smengine/a/i;->y:F

    div-float/2addr v1, p0

    invoke-direct {v2, v0, v1}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    return-object v2
.end method

.method public static p(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/a/i;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/aa;->o(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Dl()I

    move-result p0

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p0

    .line 3
    iget v1, v0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v2, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_width:F

    iget v3, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_content_width:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 4
    iget v1, v0, Lcom/smartisanos/smengine/a/i;->y:F

    iget v2, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_height:F

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_content_height:F

    div-float/2addr v2, p0

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/a/i;->y:F

    return-object v0
.end method

.method public static q(Lcom/smartisanos/launcher/view/a/g;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/g;->IH:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r(Lcom/smartisanos/launcher/view/a/g;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    instance-of p0, p0, Lcom/smartisanos/launcher/view/a/ka;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s(Lcom/smartisanos/launcher/view/a/g;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/g;->HH:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
