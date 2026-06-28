.class public Lcom/android/settings/widget/RoundCornerListView;
.super Landroid/widget/ListView;
.source "RoundCornerListView.java"


# static fields
.field private static final DEFAULT_RADIUS:F = 16.0f


# instance fields
.field mClip:Landroid/graphics/Path;

.field private mContentBottomShadow:Landroid/graphics/drawable/Drawable;

.field private mContentBottomShadowHeight:I

.field private mContentTopShadow:Landroid/graphics/drawable/Drawable;

.field private mContentTopShadowHeight:I

.field private mMaxHeight:I

.field private mParentBgStateChangeable:Z

.field private mParentPressedResourceId:I

.field private mParentResourceId:I

.field private mRadius:F

.field private mUseShadow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 24
    iput v0, p0, Lcom/android/settings/widget/RoundCornerListView;->mRadius:F

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/android/settings/widget/RoundCornerListView;->mMaxHeight:I

    .line 26
    iput v0, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentResourceId:I

    .line 27
    iput v0, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentPressedResourceId:I

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentBgStateChangeable:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/widget/RoundCornerListView;->mUseShadow:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/widget/RoundCornerListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41800000    # 16.0f

    .line 24
    iput p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mRadius:F

    const/4 p2, -0x1

    .line 25
    iput p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mMaxHeight:I

    .line 26
    iput p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentResourceId:I

    .line 27
    iput p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentPressedResourceId:I

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentBgStateChangeable:Z

    .line 33
    iput-boolean p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mUseShadow:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/widget/RoundCornerListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x41800000    # 16.0f

    .line 24
    iput p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mRadius:F

    const/4 p2, -0x1

    .line 25
    iput p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mMaxHeight:I

    .line 26
    iput p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentResourceId:I

    .line 27
    iput p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentPressedResourceId:I

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentBgStateChangeable:Z

    .line 33
    iput-boolean p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mUseShadow:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/widget/RoundCornerListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/RoundCornerListView;->mContentTopShadow:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0802f4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/RoundCornerListView;->mContentBottomShadow:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object p1, p0, Lcom/android/settings/widget/RoundCornerListView;->mContentTopShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/RoundCornerListView;->mContentTopShadowHeight:I

    .line 54
    iget-object p1, p0, Lcom/android/settings/widget/RoundCornerListView;->mContentBottomShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/RoundCornerListView;->mContentBottomShadowHeight:I

    .line 55
    new-instance p1, Lcom/android/settings/widget/RoundCornerListView$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/RoundCornerListView$1;-><init>(Lcom/android/settings/widget/RoundCornerListView;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RoundCornerListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/android/settings/widget/RoundCornerListView;->mClip:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 98
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/widget/RoundCornerListView;->getFirstVisiblePosition()I

    move-result v1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/widget/RoundCornerListView;->getWidth()I

    move-result v2

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/widget/RoundCornerListView;->getHeight()I

    move-result v3

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/widget/RoundCornerListView;->getScrollX()I

    move-result v4

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/widget/RoundCornerListView;->getScrollY()I

    move-result v5

    .line 106
    iget-object v6, p0, Lcom/android/settings/widget/RoundCornerListView;->mContentTopShadow:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v7, p0, Lcom/android/settings/widget/RoundCornerListView;->mContentBottomShadow:Landroid/graphics/drawable/Drawable;

    .line 108
    iget v8, p0, Lcom/android/settings/widget/RoundCornerListView;->mContentTopShadowHeight:I

    .line 109
    iget v9, p0, Lcom/android/settings/widget/RoundCornerListView;->mContentBottomShadowHeight:I

    const/4 v10, 0x0

    .line 111
    invoke-virtual {p0, v10, v8}, Lcom/android/settings/widget/RoundCornerListView;->pointToPosition(II)I

    move-result v11

    sub-int/2addr v11, v1

    .line 112
    invoke-virtual {p0, v11}, Lcom/android/settings/widget/RoundCornerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 113
    iget-boolean v12, p0, Lcom/android/settings/widget/RoundCornerListView;->mUseShadow:Z

    if-eqz v12, :cond_0

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/view/View;->isPressed()Z

    move-result v11

    if-nez v11, :cond_0

    .line 114
    new-instance v11, Landroid/graphics/Rect;

    add-int v12, v4, v2

    add-int/2addr v8, v5

    invoke-direct {v11, v4, v5, v12, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 115
    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 116
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    sub-int/2addr v3, v9

    .line 119
    invoke-virtual {p0, v10, v3}, Lcom/android/settings/widget/RoundCornerListView;->pointToPosition(II)I

    move-result v6

    sub-int/2addr v6, v1

    .line 120
    invoke-virtual {p0, v6}, Lcom/android/settings/widget/RoundCornerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 121
    iget-boolean p0, p0, Lcom/android/settings/widget/RoundCornerListView;->mUseShadow:Z

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result p0

    if-nez p0, :cond_1

    add-int/2addr v3, v5

    .line 123
    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr v2, v4

    add-int/2addr v9, v3

    invoke-direct {p0, v4, v3, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 124
    invoke-virtual {v7, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 125
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 133
    iget v0, p0, Lcom/android/settings/widget/RoundCornerListView;->mMaxHeight:I

    if-lez v0, :cond_1

    .line 134
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 136
    iget v1, p0, Lcom/android/settings/widget/RoundCornerListView;->mMaxHeight:I

    if-le v0, v1, :cond_0

    move v0, v1

    .line 139
    :cond_0
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 141
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 89
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/settings/widget/RoundCornerListView;->mClip:Landroid/graphics/Path;

    .line 90
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/widget/RoundCornerListView;->mClip:Landroid/graphics/Path;

    iget p0, p0, Lcom/android/settings/widget/RoundCornerListView;->mRadius:F

    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p3, p0, p0, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/android/settings/widget/RoundCornerListView;->mMaxHeight:I

    return-void
.end method

.method public setParentBackgroundResource(II)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentResourceId:I

    .line 79
    iput p2, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentPressedResourceId:I

    return-void
.end method

.method public setParentBackgroundStateChangeable(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentBgStateChangeable:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ListView;->setPressed(Z)V

    .line 148
    iget-boolean v0, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentBgStateChangeable:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentResourceId:I

    if-ltz v0, :cond_4

    iget v1, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentPressedResourceId:I

    if-gez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const p1, 0x7f0802f7

    if-ne v0, p1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/widget/RoundCornerListView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/widget/RoundCornerListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 162
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RoundCornerListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    move v1, p1

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/RoundCornerListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    .line 167
    iget p0, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentPressedResourceId:I

    goto :goto_1

    :cond_3
    iget p0, p0, Lcom/android/settings/widget/RoundCornerListView;->mParentResourceId:I

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/settings/widget/RoundCornerListView;->mRadius:F

    return-void
.end method

.method public setUseShadow(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/android/settings/widget/RoundCornerListView;->mUseShadow:Z

    return-void
.end method
