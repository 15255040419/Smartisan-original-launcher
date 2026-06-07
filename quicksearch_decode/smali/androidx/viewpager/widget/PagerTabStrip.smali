.class public Landroidx/viewpager/widget/PagerTabStrip;
.super Landroidx/viewpager/widget/PagerTitleStrip;
.source "PagerTabStrip.java"


# instance fields
.field public A:Z

.field public B:I

.field public C:Z

.field public D:F

.field public E:F

.field public F:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public final w:Landroid/graphics/Paint;

.field public final x:Landroid/graphics/Rect;

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->w:Landroid/graphics/Paint;

    .line 4
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->x:Landroid/graphics/Rect;

    const/16 p2, 0xff

    .line 5
    iput p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->y:I

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    .line 7
    iput-boolean p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->A:Z

    .line 8
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->n:I

    iput v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->q:I

    .line 9
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->w:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 11
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->r:I

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 12
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->s:I

    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 13
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->t:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 14
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:I

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 15
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->B:I

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 16
    iput v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->u:I

    .line 17
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->F:I

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/viewpager/widget/PagerTabStrip;->setPadding(IIII)V

    .line 19
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getTextSpacing()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerTabStrip;->setTextSpacing(I)V

    .line 20
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 21
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 22
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    new-instance v0, Landroidx/viewpager/widget/PagerTabStrip$a;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/PagerTabStrip$a;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 24
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    new-instance v0, Landroidx/viewpager/widget/PagerTabStrip$b;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/PagerTabStrip$b;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 26
    iput-boolean p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IFZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->x:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 3
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:I

    sub-int/2addr v2, v3

    .line 4
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    iget v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:I

    add-int/2addr v3, v4

    .line 5
    iget v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->r:I

    sub-int v4, v1, v4

    .line 6
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->a(IFZ)V

    const/high16 p1, 0x3f000000    # 0.5f

    sub-float/2addr p2, p1

    .line 8
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->y:I

    .line 9
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p1

    iget p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:I

    sub-int/2addr p1, p2

    .line 10
    iget-object p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getRight()I

    move-result p2

    iget p3, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:I

    add-int/2addr p2, p3

    .line 11
    invoke-virtual {v0, p1, v4, p2, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDrawFullUnderline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->u:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTabIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->q:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:I

    sub-int/2addr v1, v2

    .line 4
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v2

    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:I

    add-int/2addr v2, v3

    .line 5
    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->r:I

    sub-int v3, v0, v3

    .line 6
    iget-object v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->w:Landroid/graphics/Paint;

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->y:I

    shl-int/lit8 v5, v5, 0x18

    iget v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->q:I

    const v7, 0xffffff

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v1

    int-to-float v10, v3

    int-to-float v11, v2

    int-to-float v5, v0

    .line 7
    iget-object v13, p0, Landroidx/viewpager/widget/PagerTabStrip;->w:Landroid/graphics/Paint;

    move-object v8, p1

    move v12, v5

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget-boolean v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->w:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->q:I

    and-int/2addr v3, v7

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    int-to-float v2, v1

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->B:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->w:Landroid/graphics/Paint;

    move-object v1, p1

    .line 12
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->C:Z

    if-eqz v2, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->D:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->F:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->E:F

    sub-float/2addr p1, v0

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->F:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 7
    :cond_2
    iput-boolean v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->C:Z

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p1

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_4

    .line 9
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result p1

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_6

    .line 11
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 12
    :cond_5
    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->D:F

    .line 13
    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->E:F

    .line 14
    iput-boolean v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->C:Z

    :cond_6
    :goto_0
    return v3
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 2
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->A:Z

    if-nez v0, :cond_1

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->A:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    :cond_1
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->A:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    :cond_1
    return-void
.end method

.method public setDrawFullUnderline(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->A:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->s:I

    if-ge p4, v0, :cond_0

    move p4, v0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public setTabIndicatorColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->q:I

    .line 2
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->w:Landroid/graphics/Paint;

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->q:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/g/b/a;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerTabStrip;->setTabIndicatorColor(I)V

    return-void
.end method

.method public setTextSpacing(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->t:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSpacing(I)V

    return-void
.end method
