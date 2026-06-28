.class Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/legacy/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideDrawable"
.end annotation


# instance fields
.field private final mHasMirroring:Z

.field private mOffset:F

.field private mPosition:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/legacy/app/ActionBarDrawerToggle;


# direct methods
.method constructor <init>(Landroidx/legacy/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 550
    iput-object p1, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroidx/legacy/app/ActionBarDrawerToggle;

    const/4 p1, 0x0

    .line 551
    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 544
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-le p2, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    .line 545
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 582
    iget-object v0, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 583
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 586
    iget-object v0, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroidx/legacy/app/ActionBarDrawerToggle;

    iget-object v0, v0, Landroidx/legacy/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;

    .line 587
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 586
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 589
    :cond_1
    iget-object v2, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 590
    iget v3, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    neg-float v3, v3

    int-to-float v2, v2

    mul-float/2addr v3, v2

    iget v4, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    mul-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v3, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_2

    .line 593
    iget-boolean v0, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    if-nez v0, :cond_2

    .line 594
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 595
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 598
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 599
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getPosition()F
    .locals 0

    .line 565
    iget p0, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    return p0
.end method

.method public setOffset(F)V
    .locals 0

    .line 576
    iput p1, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    .line 577
    invoke-virtual {p0}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPosition(F)V
    .locals 0

    .line 560
    iput p1, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    .line 561
    invoke-virtual {p0}, Landroidx/legacy/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    return-void
.end method
