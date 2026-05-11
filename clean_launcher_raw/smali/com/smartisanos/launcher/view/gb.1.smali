.class public Lcom/smartisanos/launcher/view/gb;
.super Lcom/smartisanos/smengine/SceneNode;
.source "FolderCreatorForMultiSelect.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private YM:Lcom/smartisanos/smengine/a/j;

.field private ZM:Lcom/smartisanos/smengine/F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/gb;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/gb;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/gb;->init()V

    return-void
.end method


# virtual methods
.method public Hp()Lcom/smartisanos/smengine/g;
    .locals 12

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 2
    new-instance v9, Lcom/smartisanos/smengine/oa;

    invoke-direct {v9, p0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v2

    const/4 v10, 0x1

    invoke-virtual {v1, v2, v10}, Lcom/smartisanos/launcher/view/V;->l(IZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/view/V;->l(IZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    const v11, 0x3e99999a    # 0.3f

    .line 5
    invoke-virtual {v9, v11}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xe

    .line 6
    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 7
    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->z:F

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v2, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v2, 0x0

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 8
    new-instance v1, Lcom/smartisanos/launcher/view/fb;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/fb;-><init>(Lcom/smartisanos/launcher/view/gb;)V

    invoke-virtual {v9, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const/4 p0, 0x0

    .line 9
    invoke-virtual {v0, p0, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0, v10, v0, v11}, Lcom/smartisanos/launcher/view/V;->a(ZLcom/smartisanos/smengine/g;F)V

    :cond_0
    return-object v0
.end method

.method public Ip()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Ha;->qp()Lcom/smartisanos/launcher/view/ec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/ec;->Mp()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_4

    const/4 v1, 0x0

    .line 9
    :cond_4
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/pb;->a(IZLcom/smartisanos/launcher/data/Constants$IconType;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->isPAGE_9_3X3_MODE(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    const v1, 0x3f2e147b    # 0.68f

    .line 14
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float v2, v0, v1

    mul-float/2addr v0, v1

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_5
    return-void
.end method

.method public Jp()Lcom/smartisanos/smengine/g;
    .locals 13

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/gb;->Ip()V

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/view/V;->l(IZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v5

    invoke-virtual {v3, v5, v0}, Lcom/smartisanos/launcher/view/V;->l(IZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 7
    new-instance v3, Lcom/smartisanos/smengine/oa;

    invoke-direct {v3, p0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v5, 0x3e4ccccd    # 0.2f

    .line 8
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v5, 0xe

    .line 9
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 10
    iget v7, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v2, Lcom/smartisanos/smengine/a/j;->z:F

    iget v10, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v0, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v6, 0x0

    move-object v5, v3

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 11
    new-instance v0, Lcom/smartisanos/launcher/view/eb;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/eb;-><init>(Lcom/smartisanos/launcher/view/gb;)V

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    const/4 p0, 0x0

    .line 12
    invoke-virtual {v1, p0, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v4, v1, p0}, Lcom/smartisanos/launcher/view/V;->a(ZLcom/smartisanos/smengine/g;F)V

    :cond_0
    return-object v1
.end method

.method public _o()Lcom/smartisanos/smengine/g;
    .locals 12

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_width:F

    .line 3
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/g;

    invoke-direct {v1}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    .line 6
    new-instance v11, Lcom/smartisanos/smengine/oa;

    invoke-direct {v11, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 7
    new-instance v3, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v3}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 8
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 9
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object p0

    .line 10
    new-instance v2, Lcom/smartisanos/smengine/a/j;

    iget v4, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v3, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    add-float/2addr v5, v0

    iget v0, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v2, v4, v5, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 11
    iget v5, p0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, p0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, p0, Lcom/smartisanos/smengine/a/j;->z:F

    iget v8, v2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v10, v2, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v4, 0x0

    move-object v3, v11

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/16 p0, 0xf

    .line 12
    invoke-virtual {v11, p0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const p0, 0x3e4ccccd    # 0.2f

    .line 13
    invoke-virtual {v11, p0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 p0, 0x0

    .line 14
    invoke-virtual {v1, p0, v11}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-object v1
.end method

.method protected init()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 2
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/4 v1, 0x1

    const-string v2, "FolderCreatorForMultiSelect"

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v0, v0, v3, v1}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    const-string v2, "TextureModularColorMaterial"

    .line 4
    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 8
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    .line 9
    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 10
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const/4 v3, 0x2

    .line 11
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE()I

    move-result v2

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-static {v2, v1, v3}, Lcom/smartisanos/launcher/pb;->a(IZLcom/smartisanos/launcher/data/Constants$IconType;)Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Tl()I

    move-result v1

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/nb;->ua(I)Lcom/smartisanos/launcher/view/kb;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    iget v1, v1, Lcom/smartisanos/launcher/view/kb;->ow:I

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    neg-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v3, v0

    div-float/2addr v3, v2

    div-float v4, v0, v2

    div-float/2addr v0, v2

    .line 19
    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/gb;->ZM:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/V;->l(IZ)Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/gb;->YM:Lcom/smartisanos/smengine/a/j;

    .line 23
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/gb;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### hidepos.x = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/gb;->YM:Lcom/smartisanos/smengine/a/j;

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/gb;->YM:Lcom/smartisanos/smengine/a/j;

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " .z = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/gb;->YM:Lcom/smartisanos/smengine/a/j;

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/gb;->YM:Lcom/smartisanos/smengine/a/j;

    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, v1, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method
