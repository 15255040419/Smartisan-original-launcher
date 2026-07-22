.class Landroid/support/graphics/drawable/p;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# instance fields
.field private final kc:Landroid/graphics/Matrix;

.field lc:F

.field mChangingConfigurations:I

.field final mChildren:Ljava/util/ArrayList;

.field private mPivotX:F

.field private mPivotY:F

.field private mThemeAttrs:[I

.field private mc:F

.field private nc:F

.field private oc:F

.field private pc:F

.field private final qc:Landroid/graphics/Matrix;

.field private rc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/p;->kc:Landroid/graphics/Matrix;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/p;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroid/support/graphics/drawable/p;->lc:F

    .line 44
    iput v0, p0, Landroid/support/graphics/drawable/p;->mPivotX:F

    .line 45
    iput v0, p0, Landroid/support/graphics/drawable/p;->mPivotY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    iput v1, p0, Landroid/support/graphics/drawable/p;->mc:F

    .line 47
    iput v1, p0, Landroid/support/graphics/drawable/p;->nc:F

    .line 48
    iput v0, p0, Landroid/support/graphics/drawable/p;->oc:F

    .line 49
    iput v0, p0, Landroid/support/graphics/drawable/p;->pc:F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/p;->qc:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Landroid/support/graphics/drawable/p;->rc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/p;Landroid/support/v4/util/ArrayMap;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/p;->kc:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/p;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/support/graphics/drawable/p;->lc:F

    .line 5
    iput v0, p0, Landroid/support/graphics/drawable/p;->mPivotX:F

    .line 6
    iput v0, p0, Landroid/support/graphics/drawable/p;->mPivotY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, p0, Landroid/support/graphics/drawable/p;->mc:F

    .line 8
    iput v1, p0, Landroid/support/graphics/drawable/p;->nc:F

    .line 9
    iput v0, p0, Landroid/support/graphics/drawable/p;->oc:F

    .line 10
    iput v0, p0, Landroid/support/graphics/drawable/p;->pc:F

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/p;->qc:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/support/graphics/drawable/p;->rc:Ljava/lang/String;

    .line 13
    iget v0, p1, Landroid/support/graphics/drawable/p;->lc:F

    iput v0, p0, Landroid/support/graphics/drawable/p;->lc:F

    .line 14
    iget v0, p1, Landroid/support/graphics/drawable/p;->mPivotX:F

    iput v0, p0, Landroid/support/graphics/drawable/p;->mPivotX:F

    .line 15
    iget v0, p1, Landroid/support/graphics/drawable/p;->mPivotY:F

    iput v0, p0, Landroid/support/graphics/drawable/p;->mPivotY:F

    .line 16
    iget v0, p1, Landroid/support/graphics/drawable/p;->mc:F

    iput v0, p0, Landroid/support/graphics/drawable/p;->mc:F

    .line 17
    iget v0, p1, Landroid/support/graphics/drawable/p;->nc:F

    iput v0, p0, Landroid/support/graphics/drawable/p;->nc:F

    .line 18
    iget v0, p1, Landroid/support/graphics/drawable/p;->oc:F

    iput v0, p0, Landroid/support/graphics/drawable/p;->oc:F

    .line 19
    iget v0, p1, Landroid/support/graphics/drawable/p;->pc:F

    iput v0, p0, Landroid/support/graphics/drawable/p;->pc:F

    .line 20
    iget-object v0, p1, Landroid/support/graphics/drawable/p;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/support/graphics/drawable/p;->mThemeAttrs:[I

    .line 21
    iget-object v0, p1, Landroid/support/graphics/drawable/p;->rc:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/p;->rc:Ljava/lang/String;

    .line 22
    iget v0, p1, Landroid/support/graphics/drawable/p;->mChangingConfigurations:I

    iput v0, p0, Landroid/support/graphics/drawable/p;->mChangingConfigurations:I

    .line 23
    iget-object v0, p0, Landroid/support/graphics/drawable/p;->rc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p2, v0, p0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/p;->qc:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/support/graphics/drawable/p;->qc:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 26
    iget-object p1, p1, Landroid/support/graphics/drawable/p;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 28
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 29
    instance-of v2, v1, Landroid/support/graphics/drawable/p;

    if-eqz v2, :cond_1

    .line 30
    check-cast v1, Landroid/support/graphics/drawable/p;

    .line 31
    iget-object v2, p0, Landroid/support/graphics/drawable/p;->mChildren:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/graphics/drawable/p;

    invoke-direct {v3, v1, p2}, Landroid/support/graphics/drawable/p;-><init>(Landroid/support/graphics/drawable/p;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 32
    :cond_1
    instance-of v2, v1, Landroid/support/graphics/drawable/o;

    if-eqz v2, :cond_2

    .line 33
    new-instance v2, Landroid/support/graphics/drawable/o;

    check-cast v1, Landroid/support/graphics/drawable/o;

    invoke-direct {v2, v1}, Landroid/support/graphics/drawable/o;-><init>(Landroid/support/graphics/drawable/o;)V

    goto :goto_1

    .line 34
    :cond_2
    instance-of v2, v1, Landroid/support/graphics/drawable/n;

    if-eqz v2, :cond_4

    .line 35
    new-instance v2, Landroid/support/graphics/drawable/n;

    check-cast v1, Landroid/support/graphics/drawable/n;

    invoke-direct {v2, v1}, Landroid/support/graphics/drawable/n;-><init>(Landroid/support/graphics/drawable/n;)V

    .line 36
    :goto_1
    iget-object v1, p0, Landroid/support/graphics/drawable/p;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, v2, Landroid/support/graphics/drawable/q;->mPathName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 38
    invoke-virtual {p2, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown object in the tree!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method

.method private Gu()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/p;->qc:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Landroid/support/graphics/drawable/p;->qc:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/p;->mPivotX:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/graphics/drawable/p;->mPivotY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3
    iget-object v0, p0, Landroid/support/graphics/drawable/p;->qc:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/p;->mc:F

    iget v2, p0, Landroid/support/graphics/drawable/p;->nc:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 4
    iget-object v0, p0, Landroid/support/graphics/drawable/p;->qc:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/p;->lc:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 5
    iget-object v0, p0, Landroid/support/graphics/drawable/p;->qc:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/p;->oc:F

    iget v2, p0, Landroid/support/graphics/drawable/p;->mPivotX:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/graphics/drawable/p;->pc:F

    iget p0, p0, Landroid/support/graphics/drawable/p;->mPivotY:F

    add-float/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method static synthetic a(Landroid/support/graphics/drawable/p;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/p;->kc:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/support/graphics/drawable/p;->mThemeAttrs:[I

    .line 6
    iget v0, p0, Landroid/support/graphics/drawable/p;->lc:F

    const-string v1, "rotation"

    const/4 v2, 0x5

    invoke-static {p1, p2, v1, v2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/p;->lc:F

    .line 7
    iget v0, p0, Landroid/support/graphics/drawable/p;->mPivotX:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/p;->mPivotX:F

    .line 8
    iget v0, p0, Landroid/support/graphics/drawable/p;->mPivotY:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/p;->mPivotY:F

    .line 9
    iget v0, p0, Landroid/support/graphics/drawable/p;->mc:F

    const-string v1, "scaleX"

    const/4 v2, 0x3

    invoke-static {p1, p2, v1, v2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/p;->mc:F

    .line 10
    iget v0, p0, Landroid/support/graphics/drawable/p;->nc:F

    const-string v1, "scaleY"

    const/4 v2, 0x4

    invoke-static {p1, p2, v1, v2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/p;->nc:F

    .line 11
    iget v0, p0, Landroid/support/graphics/drawable/p;->oc:F

    const-string v1, "translateX"

    const/4 v2, 0x6

    invoke-static {p1, p2, v1, v2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/p;->oc:F

    .line 12
    iget v0, p0, Landroid/support/graphics/drawable/p;->pc:F

    const-string v1, "translateY"

    const/4 v2, 0x7

    invoke-static {p1, p2, v1, v2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Landroid/support/graphics/drawable/p;->pc:F

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    iput-object p1, p0, Landroid/support/graphics/drawable/p;->rc:Ljava/lang/String;

    .line 15
    :cond_0
    invoke-direct {p0}, Landroid/support/graphics/drawable/p;->Gu()V

    return-void
.end method

.method static synthetic b(Landroid/support/graphics/drawable/p;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/p;->qc:Landroid/graphics/Matrix;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 2
    sget-object v0, Landroid/support/graphics/drawable/a;->Zb:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p4}, Landroid/support/graphics/drawable/p;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/p;->rc:Ljava/lang/String;

    return-object p0
.end method
