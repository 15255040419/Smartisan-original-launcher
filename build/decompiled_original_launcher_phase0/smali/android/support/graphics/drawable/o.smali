.class Landroid/support/graphics/drawable/o;
.super Landroid/support/graphics/drawable/q;
.source "VectorDrawableCompat.java"


# instance fields
.field Ac:F

.field Bc:Landroid/graphics/Paint$Cap;

.field Cc:Landroid/graphics/Paint$Join;

.field Dc:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field tc:I

.field uc:I

.field vc:F

.field wc:I

.field xc:F

.field yc:F

.field zc:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/support/graphics/drawable/q;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/graphics/drawable/o;->tc:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Landroid/support/graphics/drawable/o;->mStrokeWidth:F

    .line 4
    iput v0, p0, Landroid/support/graphics/drawable/o;->uc:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    iput v2, p0, Landroid/support/graphics/drawable/o;->vc:F

    .line 6
    iput v0, p0, Landroid/support/graphics/drawable/o;->wc:I

    .line 7
    iput v2, p0, Landroid/support/graphics/drawable/o;->xc:F

    .line 8
    iput v1, p0, Landroid/support/graphics/drawable/o;->yc:F

    .line 9
    iput v2, p0, Landroid/support/graphics/drawable/o;->zc:F

    .line 10
    iput v1, p0, Landroid/support/graphics/drawable/o;->Ac:F

    .line 11
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/o;->Bc:Landroid/graphics/Paint$Cap;

    .line 12
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/o;->Cc:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 13
    iput v0, p0, Landroid/support/graphics/drawable/o;->Dc:F

    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/o;)V
    .locals 3

    .line 14
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/q;-><init>(Landroid/support/graphics/drawable/q;)V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroid/support/graphics/drawable/o;->tc:I

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Landroid/support/graphics/drawable/o;->mStrokeWidth:F

    .line 17
    iput v0, p0, Landroid/support/graphics/drawable/o;->uc:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    iput v2, p0, Landroid/support/graphics/drawable/o;->vc:F

    .line 19
    iput v0, p0, Landroid/support/graphics/drawable/o;->wc:I

    .line 20
    iput v2, p0, Landroid/support/graphics/drawable/o;->xc:F

    .line 21
    iput v1, p0, Landroid/support/graphics/drawable/o;->yc:F

    .line 22
    iput v2, p0, Landroid/support/graphics/drawable/o;->zc:F

    .line 23
    iput v1, p0, Landroid/support/graphics/drawable/o;->Ac:F

    .line 24
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/o;->Bc:Landroid/graphics/Paint$Cap;

    .line 25
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/o;->Cc:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 26
    iput v0, p0, Landroid/support/graphics/drawable/o;->Dc:F

    .line 27
    iget-object v0, p1, Landroid/support/graphics/drawable/o;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/support/graphics/drawable/o;->mThemeAttrs:[I

    .line 28
    iget v0, p1, Landroid/support/graphics/drawable/o;->tc:I

    iput v0, p0, Landroid/support/graphics/drawable/o;->tc:I

    .line 29
    iget v0, p1, Landroid/support/graphics/drawable/o;->mStrokeWidth:F

    iput v0, p0, Landroid/support/graphics/drawable/o;->mStrokeWidth:F

    .line 30
    iget v0, p1, Landroid/support/graphics/drawable/o;->vc:F

    iput v0, p0, Landroid/support/graphics/drawable/o;->vc:F

    .line 31
    iget v0, p1, Landroid/support/graphics/drawable/o;->uc:I

    iput v0, p0, Landroid/support/graphics/drawable/o;->uc:I

    .line 32
    iget v0, p1, Landroid/support/graphics/drawable/o;->wc:I

    iput v0, p0, Landroid/support/graphics/drawable/o;->wc:I

    .line 33
    iget v0, p1, Landroid/support/graphics/drawable/o;->xc:F

    iput v0, p0, Landroid/support/graphics/drawable/o;->xc:F

    .line 34
    iget v0, p1, Landroid/support/graphics/drawable/o;->yc:F

    iput v0, p0, Landroid/support/graphics/drawable/o;->yc:F

    .line 35
    iget v0, p1, Landroid/support/graphics/drawable/o;->zc:F

    iput v0, p0, Landroid/support/graphics/drawable/o;->zc:F

    .line 36
    iget v0, p1, Landroid/support/graphics/drawable/o;->Ac:F

    iput v0, p0, Landroid/support/graphics/drawable/o;->Ac:F

    .line 37
    iget-object v0, p1, Landroid/support/graphics/drawable/o;->Bc:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/o;->Bc:Landroid/graphics/Paint$Cap;

    .line 38
    iget-object v0, p1, Landroid/support/graphics/drawable/o;->Cc:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/o;->Cc:Landroid/graphics/Paint$Join;

    .line 39
    iget p1, p1, Landroid/support/graphics/drawable/o;->Dc:F

    iput p1, p0, Landroid/support/graphics/drawable/o;->Dc:F

    return-void
.end method

.method private a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method private a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    return-object p2

    .line 4
    :cond_0
    sget-object p0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p0

    .line 6
    :cond_2
    sget-object p0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p0
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroid/support/graphics/drawable/o;->mThemeAttrs:[I

    const-string v0, "pathData"

    .line 11
    invoke-static {p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iput-object v0, p0, Landroid/support/graphics/drawable/q;->mPathName:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/q;->sc:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    :cond_2
    const/4 v0, 0x1

    .line 16
    iget v1, p0, Landroid/support/graphics/drawable/o;->uc:I

    const-string v2, "fillColor"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/o;->uc:I

    const/16 v0, 0xc

    .line 17
    iget v1, p0, Landroid/support/graphics/drawable/o;->xc:F

    const-string v2, "fillAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/o;->xc:F

    const/16 v0, 0x8

    const/4 v1, -0x1

    const-string v2, "strokeLineCap"

    .line 18
    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 19
    iget-object v2, p0, Landroid/support/graphics/drawable/o;->Bc:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v2}, Landroid/support/graphics/drawable/o;->a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/o;->Bc:Landroid/graphics/Paint$Cap;

    const/16 v0, 0x9

    const-string v2, "strokeLineJoin"

    .line 20
    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 21
    iget-object v1, p0, Landroid/support/graphics/drawable/o;->Cc:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Landroid/support/graphics/drawable/o;->a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/o;->Cc:Landroid/graphics/Paint$Join;

    const/16 v0, 0xa

    .line 22
    iget v1, p0, Landroid/support/graphics/drawable/o;->Dc:F

    const-string v2, "strokeMiterLimit"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/o;->Dc:F

    const/4 v0, 0x3

    .line 23
    iget v1, p0, Landroid/support/graphics/drawable/o;->tc:I

    const-string v2, "strokeColor"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/o;->tc:I

    const/16 v0, 0xb

    .line 24
    iget v1, p0, Landroid/support/graphics/drawable/o;->vc:F

    const-string v2, "strokeAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/o;->vc:F

    const/4 v0, 0x4

    .line 25
    iget v1, p0, Landroid/support/graphics/drawable/o;->mStrokeWidth:F

    const-string v2, "strokeWidth"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/o;->mStrokeWidth:F

    const/4 v0, 0x6

    .line 26
    iget v1, p0, Landroid/support/graphics/drawable/o;->zc:F

    const-string v2, "trimPathEnd"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/o;->zc:F

    const/4 v0, 0x7

    .line 27
    iget v1, p0, Landroid/support/graphics/drawable/o;->Ac:F

    const-string v2, "trimPathOffset"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/o;->Ac:F

    const/4 v0, 0x5

    .line 28
    iget v1, p0, Landroid/support/graphics/drawable/o;->yc:F

    const-string v2, "trimPathStart"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/o;->yc:F

    const/16 v0, 0xd

    .line 29
    iget v1, p0, Landroid/support/graphics/drawable/o;->wc:I

    const-string v2, "fillType"

    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Landroid/support/graphics/drawable/o;->wc:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 7
    sget-object v0, Landroid/support/graphics/drawable/a;->_b:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1, p4}, Landroid/support/graphics/drawable/o;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
