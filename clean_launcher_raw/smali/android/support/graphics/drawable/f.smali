.class public Landroid/support/graphics/drawable/f;
.super Landroid/support/graphics/drawable/m;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/support/graphics/drawable/b;


# instance fields
.field private Mb:Landroid/support/graphics/drawable/d;

.field private Nb:Landroid/animation/ArgbEvaluator;

.field private Ob:Landroid/animation/Animator$AnimatorListener;

.field private Pb:Ljava/util/ArrayList;

.field final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Landroid/support/graphics/drawable/f;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/d;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Landroid/support/graphics/drawable/f;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/d;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/graphics/drawable/d;Landroid/content/res/Resources;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Landroid/support/graphics/drawable/m;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/support/graphics/drawable/f;->Nb:Landroid/animation/ArgbEvaluator;

    .line 5
    iput-object v0, p0, Landroid/support/graphics/drawable/f;->Ob:Landroid/animation/Animator$AnimatorListener;

    .line 6
    iput-object v0, p0, Landroid/support/graphics/drawable/f;->Pb:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Landroid/support/graphics/drawable/c;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/c;-><init>(Landroid/support/graphics/drawable/f;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/f;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 8
    iput-object p1, p0, Landroid/support/graphics/drawable/f;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 9
    iput-object p2, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/support/graphics/drawable/d;

    iget-object v1, p0, Landroid/support/graphics/drawable/f;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/support/graphics/drawable/d;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/d;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/f;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/graphics/drawable/f;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/f;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private a(Landroid/animation/Animator;)V
    .locals 3

    .line 3
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-direct {p0, v2}, Landroid/support/graphics/drawable/f;->a(Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 9
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fillColor"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "strokeColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/f;->Nb:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/f;->Nb:Landroid/animation/ArgbEvaluator;

    .line 13
    :cond_2
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Nb:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/animation/Animator;)V
    .locals 2

    .line 14
    iget-object v0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object v0, v0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/u;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 17
    invoke-direct {p0, p2}, Landroid/support/graphics/drawable/f;->a(Landroid/animation/Animator;)V

    .line 18
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    invoke-static {v0}, Landroid/support/graphics/drawable/d;->a(Landroid/support/graphics/drawable/d;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Landroid/support/graphics/drawable/d;->a(Landroid/support/graphics/drawable/d;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 20
    iget-object v0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v1, v0, Landroid/support/graphics/drawable/d;->mTargetNameMap:Landroid/support/v4/util/ArrayMap;

    .line 21
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    invoke-static {v0}, Landroid/support/graphics/drawable/d;->a(Landroid/support/graphics/drawable/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mTargetNameMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

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
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object v0, v0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/u;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object p1, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p1, p1, Landroid/support/graphics/drawable/d;->Eb:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
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
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->getAlpha()I

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

    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget p0, p0, Landroid/support/graphics/drawable/d;->mChangingConfigurations:I

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
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/support/graphics/drawable/e;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/e;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

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
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->getIntrinsicHeight()I

    move-result p0

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
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->getIntrinsicWidth()I

    move-result p0

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
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->getOpacity()I

    move-result p0

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

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/graphics/drawable/m;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :goto_0
    if-eq v0, v2, :cond_8

    .line 5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "animated-vector"

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 8
    sget-object v0, Landroid/support/graphics/drawable/a;->bc:[I

    .line 9
    invoke-static {p1, p4, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-static {p1, v3, p4}, Landroid/support/graphics/drawable/u;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/u;

    move-result-object v3

    .line 12
    invoke-virtual {v3, v4}, Landroid/support/graphics/drawable/u;->setAllowCaching(Z)V

    .line 13
    iget-object v4, p0, Landroid/support/graphics/drawable/f;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14
    iget-object v4, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object v4, v4, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    .line 15
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 16
    :cond_2
    iget-object v4, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iput-object v3, v4, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    .line 17
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_4
    const-string v3, "target"

    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    sget-object v0, Landroid/support/graphics/drawable/a;->cc:[I

    .line 20
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_6

    .line 23
    iget-object v5, p0, Landroid/support/graphics/drawable/f;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_5

    .line 24
    invoke-static {v5, v4}, Landroid/support/graphics/drawable/j;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    .line 25
    invoke-direct {p0, v3, v4}, Landroid/support/graphics/drawable/f;->a(Ljava/lang/String;Landroid/animation/Animator;)V

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Context can\'t be null when inflating animators"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    :cond_7
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 30
    :cond_8
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/d;->D()V

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
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->isAutoMirrored()Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->Eb:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

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
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/u;->isStateful()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/graphics/drawable/m;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0, p1}, Landroid/support/graphics/drawable/u;->setState([I)Z

    move-result p0

    return p0
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
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0, p1}, Landroid/support/graphics/drawable/u;->setAlpha(I)V

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
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0, p1}, Landroid/support/graphics/drawable/u;->setAutoMirrored(Z)V

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
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0, p1}, Landroid/support/graphics/drawable/u;->setColorFilter(Landroid/graphics/ColorFilter;)V

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
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0, p1}, Landroid/support/graphics/drawable/u;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0, p1}, Landroid/support/graphics/drawable/u;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {p0, p1}, Landroid/support/graphics/drawable/u;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

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
    iget-object v0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object v0, v0, Landroid/support/graphics/drawable/d;->mVectorDrawable:Landroid/support/graphics/drawable/u;

    invoke-virtual {v0, p1, p2}, Landroid/support/graphics/drawable/u;->setVisible(ZZ)Z

    .line 4
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object v0, v0, Landroid/support/graphics/drawable/d;->Eb:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object v0, v0, Landroid/support/graphics/drawable/d;->Eb:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/support/graphics/drawable/f;->Mb:Landroid/support/graphics/drawable/d;

    iget-object p0, p0, Landroid/support/graphics/drawable/d;->Eb:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method
