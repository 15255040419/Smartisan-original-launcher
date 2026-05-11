.class public Landroid/support/graphics/drawable/u;
.super Landroid/support/graphics/drawable/m;
.source "VectorDrawableCompat.java"


# static fields
.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private Qb:Landroid/support/graphics/drawable/s;

.field private Rb:Landroid/graphics/PorterDuffColorFilter;

.field private Sb:Z

.field private Tb:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final Ub:Landroid/graphics/Rect;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mMutated:Z

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/graphics/drawable/u;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/graphics/drawable/m;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/graphics/drawable/u;->Sb:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Landroid/support/graphics/drawable/u;->mTmpFloats:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/u;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/u;->Ub:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/support/graphics/drawable/s;

    invoke-direct {v0}, Landroid/support/graphics/drawable/s;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    return-void
.end method

.method constructor <init>(Landroid/support/graphics/drawable/s;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Landroid/support/graphics/drawable/m;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/support/graphics/drawable/u;->Sb:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Landroid/support/graphics/drawable/u;->mTmpFloats:[F

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/u;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/u;->Ub:Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    .line 13
    iget-object v0, p0, Landroid/support/graphics/drawable/u;->Rb:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/graphics/drawable/u;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/graphics/drawable/u;->Rb:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method private Fu()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->isAutoMirrored()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method static a(IF)I
    .locals 2

    .line 13
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object p1

    .line 14
    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 15
    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 16
    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 17
    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 18
    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 19
    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/u;
    .locals 6

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 2
    new-instance v0, Landroid/support/graphics/drawable/u;

    invoke-direct {v0}, Landroid/support/graphics/drawable/u;-><init>()V

    .line 3
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    .line 4
    new-instance p0, Landroid/support/graphics/drawable/t;

    iget-object p1, v0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/t;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object p0, v0, Landroid/support/graphics/drawable/u;->Tb:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 8
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    .line 9
    invoke-static {p0, p1, v2, p2}, Landroid/support/graphics/drawable/u;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/u;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 11
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 12
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 9

    .line 45
    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    .line 46
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    .line 47
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 48
    iget-object v2, v0, Landroid/support/graphics/drawable/r;->mRootGroup:Landroid/support/graphics/drawable/p;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 49
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 50
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    move v5, v4

    :goto_0
    if-eq v2, v4, :cond_8

    .line 51
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v3, :cond_0

    if-eq v2, v7, :cond_8

    :cond_0
    const/4 v6, 0x2

    const-string v8, "group"

    if-ne v2, v6, :cond_6

    .line 52
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/graphics/drawable/p;

    const-string v7, "path"

    .line 54
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 55
    new-instance v2, Landroid/support/graphics/drawable/o;

    invoke-direct {v2}, Landroid/support/graphics/drawable/o;-><init>()V

    .line 56
    invoke-virtual {v2, p1, p3, p4, p2}, Landroid/support/graphics/drawable/o;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 57
    iget-object v5, v6, Landroid/support/graphics/drawable/p;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v2}, Landroid/support/graphics/drawable/q;->getPathName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 59
    iget-object v5, v0, Landroid/support/graphics/drawable/r;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/graphics/drawable/q;->getPathName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v5, 0x0

    .line 60
    iget v6, p0, Landroid/support/graphics/drawable/s;->mChangingConfigurations:I

    iget v2, v2, Landroid/support/graphics/drawable/q;->mChangingConfigurations:I

    or-int/2addr v2, v6

    iput v2, p0, Landroid/support/graphics/drawable/s;->mChangingConfigurations:I

    goto :goto_1

    :cond_2
    const-string v7, "clip-path"

    .line 61
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 62
    new-instance v2, Landroid/support/graphics/drawable/n;

    invoke-direct {v2}, Landroid/support/graphics/drawable/n;-><init>()V

    .line 63
    invoke-virtual {v2, p1, p3, p4, p2}, Landroid/support/graphics/drawable/n;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 64
    iget-object v6, v6, Landroid/support/graphics/drawable/p;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v2}, Landroid/support/graphics/drawable/q;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 66
    iget-object v6, v0, Landroid/support/graphics/drawable/r;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/graphics/drawable/q;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_3
    iget v6, p0, Landroid/support/graphics/drawable/s;->mChangingConfigurations:I

    iget v2, v2, Landroid/support/graphics/drawable/q;->mChangingConfigurations:I

    or-int/2addr v2, v6

    iput v2, p0, Landroid/support/graphics/drawable/s;->mChangingConfigurations:I

    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 69
    new-instance v2, Landroid/support/graphics/drawable/p;

    invoke-direct {v2}, Landroid/support/graphics/drawable/p;-><init>()V

    .line 70
    invoke-virtual {v2, p1, p3, p4, p2}, Landroid/support/graphics/drawable/p;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 71
    iget-object v6, v6, Landroid/support/graphics/drawable/p;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v2}, Landroid/support/graphics/drawable/p;->getGroupName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 74
    iget-object v6, v0, Landroid/support/graphics/drawable/r;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/graphics/drawable/p;->getGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_5
    iget v6, p0, Landroid/support/graphics/drawable/s;->mChangingConfigurations:I

    iget v2, v2, Landroid/support/graphics/drawable/p;->mChangingConfigurations:I

    or-int/2addr v2, v6

    iput v2, p0, Landroid/support/graphics/drawable/s;->mChangingConfigurations:I

    goto :goto_1

    :cond_6
    if-ne v2, v7, :cond_7

    .line 76
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 79
    :cond_7
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_0

    :cond_8
    if-nez v5, :cond_9

    return-void

    .line 80
    :cond_9
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "no path defined"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 20
    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    .line 21
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    const-string v1, "tintMode"

    const/4 v2, 0x6

    const/4 v3, -0x1

    .line 22
    invoke-static {p1, p2, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 23
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/graphics/drawable/u;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    iput-object v1, p0, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v1, 0x5

    .line 26
    iget-boolean v2, p0, Landroid/support/graphics/drawable/s;->mAutoMirrored:Z

    const-string v3, "autoMirrored"

    invoke-static {p1, p2, v3, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/graphics/drawable/s;->mAutoMirrored:Z

    const/4 p0, 0x7

    .line 27
    iget v1, v0, Landroid/support/graphics/drawable/r;->mViewportWidth:F

    const-string v2, "viewportWidth"

    invoke-static {p1, p2, v2, p0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p0

    iput p0, v0, Landroid/support/graphics/drawable/r;->mViewportWidth:F

    const/16 p0, 0x8

    .line 28
    iget v1, v0, Landroid/support/graphics/drawable/r;->mViewportHeight:F

    const-string v2, "viewportHeight"

    invoke-static {p1, p2, v2, p0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p0

    iput p0, v0, Landroid/support/graphics/drawable/r;->mViewportHeight:F

    .line 29
    iget p0, v0, Landroid/support/graphics/drawable/r;->mViewportWidth:F

    const/4 v1, 0x0

    cmpg-float p0, p0, v1

    if-lez p0, :cond_5

    .line 30
    iget p0, v0, Landroid/support/graphics/drawable/r;->mViewportHeight:F

    cmpg-float p0, p0, v1

    if-lez p0, :cond_4

    const/4 p0, 0x3

    .line 31
    iget v2, v0, Landroid/support/graphics/drawable/r;->mBaseWidth:F

    invoke-virtual {p1, p0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    iput p0, v0, Landroid/support/graphics/drawable/r;->mBaseWidth:F

    const/4 p0, 0x2

    .line 32
    iget v2, v0, Landroid/support/graphics/drawable/r;->mBaseHeight:F

    invoke-virtual {p1, p0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    iput p0, v0, Landroid/support/graphics/drawable/r;->mBaseHeight:F

    .line 33
    iget p0, v0, Landroid/support/graphics/drawable/r;->mBaseWidth:F

    cmpg-float p0, p0, v1

    if-lez p0, :cond_3

    .line 34
    iget p0, v0, Landroid/support/graphics/drawable/r;->mBaseHeight:F

    cmpg-float p0, p0, v1

    if-lez p0, :cond_2

    const/4 p0, 0x4

    .line 35
    invoke-virtual {v0}, Landroid/support/graphics/drawable/r;->getAlpha()F

    move-result v1

    const-string v2, "alpha"

    .line 36
    invoke-static {p1, p2, v2, p0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p0

    .line 37
    invoke-virtual {v0, p0}, Landroid/support/graphics/drawable/r;->setAlpha(F)V

    const/4 p0, 0x0

    .line 38
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 39
    iput-object p0, v0, Landroid/support/graphics/drawable/r;->mRootName:Ljava/lang/String;

    .line 40
    iget-object p1, v0, Landroid/support/graphics/drawable/r;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1, p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 41
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires height > 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires width > 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/u;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/graphics/drawable/u;

    invoke-direct {v0}, Landroid/support/graphics/drawable/u;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/graphics/drawable/u;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/m;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/graphics/drawable/m;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/u;->Ub:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Landroid/support/graphics/drawable/u;->Ub:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroid/support/graphics/drawable/u;->Ub:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/u;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/graphics/drawable/u;->Rb:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    :cond_2
    iget-object v1, p0, Landroid/support/graphics/drawable/u;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object v1, p0, Landroid/support/graphics/drawable/u;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/support/graphics/drawable/u;->mTmpFloats:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    iget-object v1, p0, Landroid/support/graphics/drawable/u;->mTmpFloats:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 9
    iget-object v3, p0, Landroid/support/graphics/drawable/u;->mTmpFloats:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 10
    iget-object v4, p0, Landroid/support/graphics/drawable/u;->mTmpFloats:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 11
    iget-object v5, p0, Landroid/support/graphics/drawable/u;->mTmpFloats:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v4, :cond_3

    cmpl-float v4, v5, v6

    if-eqz v4, :cond_4

    :cond_3
    move v1, v7

    move v3, v1

    .line 12
    :cond_4
    iget-object v4, p0, Landroid/support/graphics/drawable/u;->Ub:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    .line 13
    iget-object v4, p0, Landroid/support/graphics/drawable/u;->Ub:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    .line 14
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_9

    if-gtz v3, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 17
    iget-object v5, p0, Landroid/support/graphics/drawable/u;->Ub:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    invoke-direct {p0}, Landroid/support/graphics/drawable/u;->Fu()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 19
    iget-object v5, p0, Landroid/support/graphics/drawable/u;->Ub:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    .line 20
    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 21
    :cond_6
    iget-object v5, p0, Landroid/support/graphics/drawable/u;->Ub:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 22
    iget-object v2, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    invoke-virtual {v2, v1, v3}, Landroid/support/graphics/drawable/s;->c(II)V

    .line 23
    iget-boolean v2, p0, Landroid/support/graphics/drawable/u;->Sb:Z

    if-nez v2, :cond_7

    .line 24
    iget-object v2, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    invoke-virtual {v2, v1, v3}, Landroid/support/graphics/drawable/s;->d(II)V

    goto :goto_0

    .line 25
    :cond_7
    iget-object v2, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    invoke-virtual {v2}, Landroid/support/graphics/drawable/s;->canReuseCache()Z

    move-result v2

    if-nez v2, :cond_8

    .line 26
    iget-object v2, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    invoke-virtual {v2, v1, v3}, Landroid/support/graphics/drawable/s;->d(II)V

    .line 27
    iget-object v1, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/s;->updateCacheStates()V

    .line 28
    :cond_8
    :goto_0
    iget-object v1, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Ub:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, p0}, Landroid/support/graphics/drawable/s;->a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 29
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    iget-object p0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/r;->J()I

    move-result p0

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/s;->getChangingConfigurations()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/graphics/drawable/m;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 2
    new-instance p0, Landroid/support/graphics/drawable/t;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/t;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/graphics/drawable/s;->mChangingConfigurations:I

    .line 4
    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    return-object p0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/graphics/drawable/m;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    iget-object p0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    iget p0, p0, Landroid/support/graphics/drawable/r;->mBaseHeight:F

    float-to-int p0, p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    iget-object p0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    iget p0, p0, Landroid/support/graphics/drawable/r;->mBaseWidth:F

    float-to-int p0, p0

    return p0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/graphics/drawable/m;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/graphics/drawable/m;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/m;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getState()[I
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/graphics/drawable/m;->getState()[I

    move-result-object p0

    return-object p0
.end method

.method getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    iget-object p0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    iget-object p0, p0, Landroid/support/graphics/drawable/r;->mVGTargetsMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/graphics/drawable/m;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/u;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 4
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    .line 7
    new-instance v1, Landroid/support/graphics/drawable/r;

    invoke-direct {v1}, Landroid/support/graphics/drawable/r;-><init>()V

    .line 8
    iput-object v1, v0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    .line 9
    sget-object v1, Landroid/support/graphics/drawable/a;->Yb:[I

    invoke-static {p1, p4, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 10
    invoke-direct {p0, v1, p2}, Landroid/support/graphics/drawable/u;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/graphics/drawable/s;->mChangingConfigurations:I

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Landroid/support/graphics/drawable/s;->mCacheDirty:Z

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/u;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 15
    iget-object p1, p0, Landroid/support/graphics/drawable/u;->Rb:Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, v0, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    iget-object p3, v0, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/graphics/drawable/u;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/graphics/drawable/u;->Rb:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    iget-boolean p0, p0, Landroid/support/graphics/drawable/s;->mAutoMirrored:Z

    return p0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/graphics/drawable/m;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/support/graphics/drawable/u;->mMutated:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 4
    new-instance v0, Landroid/support/graphics/drawable/s;

    iget-object v1, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/s;-><init>(Landroid/support/graphics/drawable/s;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/support/graphics/drawable/u;->mMutated:Z

    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    .line 4
    iget-object v0, p1, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    .line 5
    iget-object v1, p0, Landroid/support/graphics/drawable/u;->Rb:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/graphics/drawable/u;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/graphics/drawable/u;->Rb:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->invalidateSelf()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method setAllowCaching(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/graphics/drawable/u;->Sb:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    iget-object v0, v0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/r;->J()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 4
    iget-object v0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    iget-object v0, v0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/r;->u(I)V

    .line 5
    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    iput-boolean p1, p0, Landroid/support/graphics/drawable/s;->mAutoMirrored:Z

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/m;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/m;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Landroid/support/graphics/drawable/u;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 5
    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/m;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/m;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/m;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/m;->setState([I)Z

    move-result p0

    return p0
.end method

.method public setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/graphics/drawable/u;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    .line 4
    iget-object v1, v0, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 5
    iput-object p1, v0, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    .line 6
    iget-object v1, p0, Landroid/support/graphics/drawable/u;->Rb:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, Landroid/support/graphics/drawable/u;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/graphics/drawable/u;->Rb:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/u;->Qb:Landroid/support/graphics/drawable/s;

    .line 4
    iget-object v1, v0, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    .line 5
    iput-object p1, v0, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 6
    iget-object v1, p0, Landroid/support/graphics/drawable/u;->Rb:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/graphics/drawable/u;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Landroid/support/graphics/drawable/u;->Rb:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->getState()[I

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    .line 2
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
