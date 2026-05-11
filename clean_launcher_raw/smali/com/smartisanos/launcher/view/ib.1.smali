.class public Lcom/smartisanos/launcher/view/ib;
.super Lcom/smartisanos/smengine/SceneNode;
.source "IconWithTextView.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private _M:Lcom/smartisanos/smengine/F;

.field private aN:I

.field private bN:I

.field private cN:I

.field private dN:Lcom/smartisanos/smengine/F;

.field private eN:I

.field private fN:I

.field private gN:Ljava/lang/String;

.field private hN:Lcom/smartisanos/launcher/view/Mc;

.field private iN:I

.field private jN:I

.field private kN:I

.field private lN:I

.field private mContentText:Ljava/lang/String;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private rL:Lcom/smartisanos/smengine/F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/ib;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/ib;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/ib;->mPaint:Landroid/graphics/Paint;

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ib;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private Yy()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_create_folder_bg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/view/ib;->mMaxWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/smartisanos/launcher/view/ib;->mMaxHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    const-string v1, "TextureModularColorMaterial"

    .line 3
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    .line 4
    iget-object v5, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget v5, p0, Lcom/smartisanos/launcher/view/ib;->bN:I

    iget v6, p0, Lcom/smartisanos/launcher/view/ib;->mMaxWidth:I

    iget v7, p0, Lcom/smartisanos/launcher/view/ib;->mMaxHeight:I

    invoke-static {v5, v6, v7}, Lcom/smartisanos/launcher/e/s;->a(III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 9
    new-instance v6, Lcom/smartisanos/smengine/Da;

    invoke-direct {v6, v5}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 11
    invoke-virtual {v2, v0, v6}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 12
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v0, v6, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    iget v8, p0, Lcom/smartisanos/launcher/view/ib;->cN:I

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_create_folder_bg_cover_"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    iget v8, p0, Lcom/smartisanos/launcher/view/ib;->mMaxWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/smartisanos/launcher/view/ib;->mMaxHeight:I

    int-to-float v9, v9

    invoke-static {v0, v8, v9, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    .line 25
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 26
    iget-object v3, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 27
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 30
    :cond_1
    iget v3, p0, Lcom/smartisanos/launcher/view/ib;->aN:I

    iget v8, p0, Lcom/smartisanos/launcher/view/ib;->mMaxWidth:I

    iget v9, p0, Lcom/smartisanos/launcher/view/ib;->mMaxHeight:I

    invoke-static {v3, v8, v9}, Lcom/smartisanos/launcher/e/s;->a(III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 31
    new-instance v8, Lcom/smartisanos/smengine/Da;

    invoke-direct {v8, v3}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 32
    invoke-virtual {v8, v4}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 33
    invoke-virtual {v1, v0, v8}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 34
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v5, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 38
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 41
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 42
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 43
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    iget v1, p0, Lcom/smartisanos/launcher/view/ib;->cN:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 44
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 45
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ib;->_M:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method private Zy()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/view/ib;->eN:I

    int-to-float v2, v1

    int-to-float v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v1, v3, v4}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->gN:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    iget v1, p0, Lcom/smartisanos/launcher/view/ib;->cN:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 17
    iget v1, p0, Lcom/smartisanos/launcher/view/ib;->fN:I

    int-to-float v1, v1

    iget v2, p0, Lcom/smartisanos/launcher/view/ib;->mMaxWidth:I

    iget v4, p0, Lcom/smartisanos/launcher/view/ib;->eN:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/a/i;->x:F

    .line 18
    iput v3, v0, Lcom/smartisanos/smengine/a/i;->y:F

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    iget v2, v0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 20
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ib;->dN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method private _y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->hN:Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ib;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Mc;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/Da;->a(Ljava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/view/ib;->hN:Lcom/smartisanos/launcher/view/Mc;

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ib;->az()V

    return-void
.end method

.method private az()V
    .locals 8

    .line 1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/ib;->mPaint:Landroid/graphics/Paint;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->mContentText:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/smartisanos/smengine/Da;->a(Ljava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v7, Lcom/smartisanos/launcher/view/Mc;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/ib;->mContentText:Ljava/lang/String;

    const/4 v3, 0x0

    iget v5, p0, Lcom/smartisanos/launcher/view/ib;->kN:I

    iget v6, p0, Lcom/smartisanos/launcher/view/ib;->lN:I

    const-string v1, "IconWithText"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/view/Mc;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    iput-object v7, p0, Lcom/smartisanos/launcher/view/ib;->hN:Lcom/smartisanos/launcher/view/Mc;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->hN:Lcom/smartisanos/launcher/view/Mc;

    iget v1, p0, Lcom/smartisanos/launcher/view/ib;->cN:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Mc;->setLayer(I)V

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 10
    iget v1, p0, Lcom/smartisanos/launcher/view/ib;->iN:I

    int-to-float v1, v1

    iget v2, p0, Lcom/smartisanos/launcher/view/ib;->mMaxWidth:I

    iget v3, p0, Lcom/smartisanos/launcher/view/ib;->kN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/smartisanos/smengine/a/i;->x:F

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/smartisanos/smengine/a/i;->y:F

    .line 12
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ib;->hN:Lcom/smartisanos/launcher/view/Mc;

    iget v3, v0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v2, v3, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 13
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ib;->hN:Lcom/smartisanos/launcher/view/Mc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Mc;->updateGeometricState()V

    return-void
.end method


# virtual methods
.method public E(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/ib;->eN:I

    .line 2
    iput p2, p0, Lcom/smartisanos/launcher/view/ib;->fN:I

    return-void
.end method

.method public a(IIIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ib;->mPaint:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iput p4, p0, Lcom/smartisanos/launcher/view/ib;->iN:I

    .line 4
    iput p5, p0, Lcom/smartisanos/launcher/view/ib;->jN:I

    .line 5
    iput p3, p0, Lcom/smartisanos/launcher/view/ib;->lN:I

    return-void
.end method

.method public a(ILjava/lang/String;IIII)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/ib;->mContentText:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/smartisanos/launcher/view/ib;->gN:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/smartisanos/launcher/view/ib;->mMaxHeight:I

    .line 9
    iput p3, p0, Lcom/smartisanos/launcher/view/ib;->bN:I

    .line 10
    iput p4, p0, Lcom/smartisanos/launcher/view/ib;->aN:I

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/ib;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/smartisanos/launcher/view/ib;->mContentText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    add-double/2addr p1, p3

    double-to-int p1, p1

    .line 12
    iput p1, p0, Lcom/smartisanos/launcher/view/ib;->kN:I

    .line 13
    iget p1, p0, Lcom/smartisanos/launcher/view/ib;->iN:I

    iget p2, p0, Lcom/smartisanos/launcher/view/ib;->jN:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/smartisanos/launcher/view/ib;->kN:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/smartisanos/launcher/view/ib;->mMaxWidth:I

    .line 14
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ib;->Yy()V

    .line 15
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ib;->_y()V

    .line 16
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/ib;->Zy()V

    .line 17
    iget p1, p0, Lcom/smartisanos/launcher/view/ib;->mMaxWidth:I

    neg-int p2, p1

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    neg-int p4, p6

    int-to-float p4, p4

    div-float/2addr p4, p3

    int-to-float p1, p1

    div-float/2addr p1, p3

    iget p5, p0, Lcom/smartisanos/launcher/view/ib;->mMaxHeight:I

    int-to-float p5, p5

    div-float/2addr p5, p3

    invoke-virtual {p0, p2, p4, p1, p5}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IFFLcom/smartisanos/smengine/g;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 19
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 20
    new-instance p1, Lcom/smartisanos/launcher/view/hb;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/view/hb;-><init>(Lcom/smartisanos/launcher/view/ib;)V

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a;)V

    .line 21
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object p0

    .line 22
    invoke-virtual {p6, p5, p0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method public getColor(Lcom/smartisanos/smengine/a/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ib;->rL:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLayer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/ib;->cN:I

    return-void
.end method
