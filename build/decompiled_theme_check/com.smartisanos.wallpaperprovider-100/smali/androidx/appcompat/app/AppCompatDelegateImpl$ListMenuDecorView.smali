.class Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;
.super Landroidx/appcompat/widget/ContentFrameLayout;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V
    .locals 0

    .line 2771
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 2772
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isOutOfBounds(II)Z
    .locals 1

    const/4 v0, -0x5

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 2801
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getHeight()I

    move-result p0

    add-int/lit8 p0, p0, 0x5

    if-le p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2777
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2778
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2787
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->isOutOfBounds(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2788
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(I)V

    const/4 p0, 0x1

    return p0

    .line 2792
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 2797
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
