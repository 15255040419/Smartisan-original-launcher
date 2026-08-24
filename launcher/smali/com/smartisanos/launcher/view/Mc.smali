.class public Lcom/smartisanos/launcher/view/Mc;
.super Lcom/smartisanos/smengine/SceneNode;
.source "TextView.java"


# static fields
.field public static AO:Landroid/graphics/Paint;

.field public static BO:Landroid/graphics/Paint;

.field public static CO:Landroid/graphics/Paint;

.field public static DO:Landroid/graphics/Paint;

.field public static EO:Landroid/graphics/Paint;

.field public static FO:Landroid/graphics/Paint;

.field public static GO:Landroid/graphics/Paint;

.field public static final HO:Landroid/graphics/Paint;

.field private static final log:Lcom/smartisanos/launcher/va;

.field public static xO:Landroid/graphics/Paint;

.field public static yO:Landroid/graphics/Paint;

.field public static zO:Landroid/graphics/Paint;


# instance fields
.field private hN:Lcom/smartisanos/smengine/F;

.field private mBackground:Lcom/smartisanos/smengine/F;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Mc;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Mc;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/launcher/view/Mc;->GO:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/view/Mc;->HO:Landroid/graphics/Paint;

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->HO:Landroid/graphics/Paint;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->HO:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->HO:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->HO:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->HO:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, -0x56000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->HO:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, " "

    :cond_0
    move-object v2, p2

    if-nez p4, :cond_1

    .line 2
    sget-object p4, Lcom/smartisanos/launcher/view/Mc;->HO:Landroid/graphics/Paint;

    :cond_1
    move-object v4, p4

    .line 3
    iput-object v4, p0, Lcom/smartisanos/launcher/view/Mc;->mTextPaint:Landroid/graphics/Paint;

    .line 4
    iput p5, p0, Lcom/smartisanos/launcher/view/Mc;->mMaxWidth:I

    .line 5
    iput p6, p0, Lcom/smartisanos/launcher/view/Mc;->mMaxHeight:I

    .line 6
    iput-object v2, p0, Lcom/smartisanos/launcher/view/Mc;->mText:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setName(Ljava/lang/String;)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_mTextRect"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget v5, p0, Lcom/smartisanos/launcher/view/Mc;->mMaxWidth:I

    iget v6, p0, Lcom/smartisanos/launcher/view/Mc;->mMaxHeight:I

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/view/Mc;->a(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V

    return-void
.end method

.method public static Bi()V
    .locals 5

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v2, v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->yO:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 5
    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v2, v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->page_title_text_shadow_color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->yO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->page_title_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->DO:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 8
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_2

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->DO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 10
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->DO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    :cond_3
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->EO:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 12
    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v2, v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 13
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->EO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    :cond_4
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->FO:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    .line 15
    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v2, v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 16
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->FO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/smartisanos/launcher/view/Mc;->zO:Landroid/graphics/Paint;

    .line 18
    sput-object v0, Lcom/smartisanos/launcher/view/Mc;->AO:Landroid/graphics/Paint;

    return-void
.end method

.method private Me()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Mc;->mText:Ljava/lang/String;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v0, p0}, Lcom/smartisanos/smengine/Da;->a(Ljava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;II)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_mTextRect"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;ZII)Lcom/smartisanos/smengine/F;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/high16 p4, -0x40800000    # -1.0f

    const/high16 p5, -0x40000000    # -2.0f

    invoke-virtual {p1, p4, p5}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 p4, 0x2

    invoke-virtual {p1, p4}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2, p2}, Lcom/smartisanos/smengine/mymaterial/f;->r(IZ)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lcom/smartisanos/launcher/theme/v;)[I
    .locals 7

    .line 13
    iget-object v0, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v1, "color"

    const-string v2, "def_apps_text_color_light"

    invoke-virtual {p0, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 14
    iget-object v0, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v2, "def_apps_text_color"

    invoke-virtual {p0, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 15
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 16
    iget-object v2, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v3, "text_typeface_bold_light"

    const-string v4, "integer"

    invoke-virtual {p0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 17
    iget-object v2, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v3, "text_typeface_bold"

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 18
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 19
    iget-object v3, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v4, "def_apps_shadow_color_light"

    invoke-virtual {p0, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_2

    .line 20
    iget-object v3, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v4, "def_apps_shadow_color"

    invoke-virtual {p0, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 21
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 22
    iget-object v4, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v5, "page_title_text_color_light"

    invoke-virtual {p0, v5, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_3

    .line 23
    iget-object v4, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v5, "page_title_text_color"

    invoke-virtual {p0, v5, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 24
    :cond_3
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 25
    iget-object v5, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v6, "page_title_text_shadow_color_light"

    invoke-virtual {p0, v6, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_4

    .line 26
    iget-object p1, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v5, "page_title_text_shadow_color"

    invoke-virtual {p0, v5, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 27
    :cond_4
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    aput v2, p1, v0

    const/4 v0, 0x2

    aput v3, p1, v0

    const/4 v0, 0x3

    aput v4, p1, v0

    const/4 v0, 0x4

    aput p0, p1, v0

    return-object p1
.end method

.method public static hq()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    move-object v10, v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->text_font_size:I

    invoke-static {v10, v0}, Lcom/smartisanos/launcher/data/DesktopLabelMetrics;->resolveDesktopTextSize(Ljava/lang/Object;I)I

    move-result v0

    .line 2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    .line 3
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_bold:I

    if-ne v3, v1, :cond_0

    .line 7
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v6, v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 9
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/smartisanos/launcher/view/Mc;->yO:Landroid/graphics/Paint;

    .line 11
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_1

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_text_font_size:I

    .line 13
    sget-object v4, Lcom/smartisanos/launcher/view/Mc;->yO:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 14
    :cond_1
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->yO:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 15
    :goto_0
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->yO:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->yO:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 17
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->yO:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->yO:Landroid/graphics/Paint;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v6, v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->page_title_text_shadow_color:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 19
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->yO:Landroid/graphics/Paint;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->page_title_text_color:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/smartisanos/launcher/view/Mc;->BO:Landroid/graphics/Paint;

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->float_text_font_size:F

    .line 22
    sget-object v4, Lcom/smartisanos/launcher/view/Mc;->BO:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 23
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->BO:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->BO:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 25
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->BO:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 26
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->BO:Landroid/graphics/Paint;

    const v5, 0x3e19999a    # 0.15f

    const/high16 v6, 0x33000000

    const/high16 v7, -0x40000000    # -2.0f

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8, v7, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 27
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->BO:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 28
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/smartisanos/launcher/view/Mc;->DO:Landroid/graphics/Paint;

    .line 29
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->DO:Landroid/graphics/Paint;

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 30
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->DO:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->DO:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 32
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_2

    .line 33
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->DO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v6, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sget v9, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sget v10, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v0, v1, v6, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 34
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->DO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/view/Mc;->EO:Landroid/graphics/Paint;

    .line 36
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->EO:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->EO:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->EO:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->EO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v2, v2

    sget v6, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v6, v6

    sget v9, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    invoke-virtual {v0, v1, v2, v6, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 40
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->EO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/view/Mc;->CO:Landroid/graphics/Paint;

    .line 42
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->CO:Landroid/graphics/Paint;

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->flag_message_textsize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->CO:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 44
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->CO:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 45
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->CO:Landroid/graphics/Paint;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v0, v1, v8, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 46
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->CO:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->CO:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/view/Mc;->FO:Landroid/graphics/Paint;

    .line 49
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_text_font_size:I

    mul-int/lit8 v0, v0, 0x2

    .line 50
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->FO:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->FO:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    .line 53
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->FO:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    .line 54
    :cond_3
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->FO:Landroid/graphics/Paint;

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 55
    :goto_1
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->FO:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 56
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->FO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v2, v2

    sget v5, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_color:I

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 57
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->FO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE_FOLDER()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_text_font_size:I

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/smartisanos/launcher/view/Mc;->GO:Landroid/graphics/Paint;

    .line 60
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->GO:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->GO:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->GO:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    sget v0, Lcom/smartisanos/launcher/data/Constants;->app_text_bold:I

    if-ne v3, v0, :cond_4

    .line 64
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->GO:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    .line 65
    :cond_4
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->GO:Landroid/graphics/Paint;

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_2
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->GO:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 66
    sget-object v0, Lcom/smartisanos/launcher/view/Mc;->GO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_color_in_folder:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static o(Lcom/smartisanos/launcher/theme/v;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    move-object v10, p0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->h(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    sget p0, Lcom/smartisanos/launcher/hb;->def_apps_text_color:I

    .line 4
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 5
    sget v1, Lcom/smartisanos/launcher/lb;->text_typeface_bold:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 7
    sget v3, Lcom/smartisanos/launcher/hb;->def_apps_shadow_color:I

    .line 8
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 9
    sget v4, Lcom/smartisanos/launcher/hb;->page_title_text_color:I

    .line 10
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 11
    sget v5, Lcom/smartisanos/launcher/hb;->page_title_text_shadow_color:I

    .line 12
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 13
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_1

    .line 14
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->i(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sGaussianResSuffix:Ljava/lang/String;

    const-string v3, "_light"

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/view/Mc;->a(Landroid/content/res/Resources;Lcom/smartisanos/launcher/theme/v;)[I

    move-result-object p0

    const/4 v0, 0x0

    .line 17
    aget v0, p0, v0

    .line 18
    aget v1, p0, v2

    const/4 v3, 0x2

    .line 19
    aget v3, p0, v3

    const/4 v4, 0x3

    .line 20
    aget v4, p0, v4

    const/4 v5, 0x4

    .line 21
    aget p0, p0, v5

    move v9, v0

    move v0, p0

    move p0, v9

    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v3, "color"

    const-string v4, "def_apps_text_color"

    invoke-virtual {v0, v4, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 24
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v5, "text_typeface_bold"

    const-string v6, "integer"

    invoke-virtual {v0, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 25
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 26
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v6, "def_apps_shadow_color"

    invoke-virtual {v0, v6, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 27
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 28
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v7, "page_title_text_color"

    invoke-virtual {v0, v7, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 29
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 30
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v7, "page_title_text_shadow_color"

    invoke-virtual {v0, v7, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 31
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    move p0, v1

    move v1, v4

    move v3, v5

    move v4, v6

    .line 32
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v5

    .line 33
    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    move-object v6, v5

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->text_font_size:I

    invoke-static {v6, v5}, Lcom/smartisanos/launcher/data/DesktopLabelMetrics;->resolveDesktopTextSize(Ljava/lang/Object;I)I

    move-result v5

    .line 34
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sput-object v6, Lcom/smartisanos/launcher/view/Mc;->zO:Landroid/graphics/Paint;

    .line 35
    sget-object v6, Lcom/smartisanos/launcher/view/Mc;->zO:Landroid/graphics/Paint;

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    sget-object v6, Lcom/smartisanos/launcher/view/Mc;->zO:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    sget-object v6, Lcom/smartisanos/launcher/view/Mc;->zO:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-ne v2, v1, :cond_2

    .line 38
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->zO:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 39
    :cond_2
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->zO:Landroid/graphics/Paint;

    sget v6, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v6, v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v7, v7

    sget v8, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v8, v8

    invoke-virtual {v1, v6, v7, v8, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 40
    sget-object v1, Lcom/smartisanos/launcher/view/Mc;->zO:Landroid/graphics/Paint;

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    sput-object p0, Lcom/smartisanos/launcher/view/Mc;->AO:Landroid/graphics/Paint;

    .line 42
    sget-object p0, Lcom/smartisanos/launcher/view/Mc;->AO:Landroid/graphics/Paint;

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    sget-object p0, Lcom/smartisanos/launcher/view/Mc;->AO:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    sget-object p0, Lcom/smartisanos/launcher/view/Mc;->AO:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    sget-object p0, Lcom/smartisanos/launcher/view/Mc;->AO:Landroid/graphics/Paint;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_radius:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dx:I

    int-to-float v2, v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->app_text_shadow_dy:I

    int-to-float v3, v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 46
    sget-object p0, Lcom/smartisanos/launcher/view/Mc;->AO:Landroid/graphics/Paint;

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static ui()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Mc;->Bi()V

    return-void
.end method


# virtual methods
.method public b(IIIIZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    :cond_0
    return-void
.end method

.method public clear(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Mc;->Me()V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Mc;->mBackground:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_3
    return-void
.end method

.method public getHeight()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/F;->getHeight()F

    move-result p0

    return p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->mTextPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getTextView()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public getWidth()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/F;->getWidth()F

    move-result p0

    return p0
.end method

.method public setColor(FFFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->mBackground:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_1
    return-void
.end method

.method public setLayer(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->mBackground:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    :cond_1
    return-void
.end method

.method public setRenderQueue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->mBackground:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    :cond_1
    return-void
.end method

.method public setRenderTarget(Lcom/smartisanos/smengine/N;)V
    .locals 6

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, v0}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Mc;->mBackground:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result p1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Mc;->mBackground:Lcom/smartisanos/smengine/F;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 13
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setViewPort(IIII)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->mBackground:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    :cond_1
    return-void
.end method

.method public setViewPort(Lcom/smartisanos/smengine/Ga;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->mBackground:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    :cond_1
    return-void
.end method

.method public updateGeometricState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Mc;->mBackground:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Mc;->hN:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_1
    return-void
.end method
