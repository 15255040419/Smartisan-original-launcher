.class public Lsmartisan/widget/SmartisanBottomBar;
.super Landroid/widget/LinearLayout;
.source "SmartisanBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanBottomBar$BottomBarInnerClickCallBack;
    }
.end annotation


# instance fields
.field public a:[I

.field public b:Z

.field public c:[Landroid/widget/ImageButton;

.field public d:Lsmartisan/widget/SmartisanBottomBar$BottomBarInnerClickCallBack;

.field public e:Li/t/b;

.field public f:I

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lsmartisan/widget/R$styleable;->SmartisanBottomBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget v0, Lsmartisan/widget/R$styleable;->SmartisanBottomBar_bottomBarIconArray:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 6
    sget v1, Lsmartisan/widget/R$styleable;->SmartisanBottomBar_bottomBarIconShowBackgroudMode:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lsmartisan/widget/SmartisanBottomBar;->b:Z

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    new-instance p1, Lsmartisan/widget/SmartisanBottomBar$a;

    invoke-direct {p1, p0, p0, p2, p3}, Lsmartisan/widget/SmartisanBottomBar$a;-><init>(Lsmartisan/widget/SmartisanBottomBar;Landroid/view/View;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lsmartisan/widget/SmartisanBottomBar;->e:Li/t/b;

    .line 9
    sget p1, Lsmartisan/widget/R$drawable;->bottom_bar:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->smartisan_small_blank_spacing_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 11
    invoke-virtual {p0, p1, v2, p1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->samrtisan_button_fixed_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmartisanBottomBar;->h:I

    if-ltz v0, :cond_0

    .line 13
    iget-boolean p1, p0, Lsmartisan/widget/SmartisanBottomBar;->b:Z

    invoke-virtual {p0, v0, p1}, Lsmartisan/widget/SmartisanBottomBar;->a(IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanBottomBar;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanBottomBar;->a()V

    return-void
.end method

.method public static synthetic b(Lsmartisan/widget/SmartisanBottomBar;)Lsmartisan/widget/SmartisanBottomBar$BottomBarInnerClickCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanBottomBar;->d:Lsmartisan/widget/SmartisanBottomBar$BottomBarInnerClickCallBack;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 14
    :cond_0
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanBottomBar;->i:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gtz v1, :cond_2

    .line 15
    :cond_1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 16
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final a()V
    .locals 9

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SmartisanBottomBar;->f:I

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanBottomBar;->f:I

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    .line 6
    array-length v1, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v6, v0, v4

    .line 7
    invoke-virtual {p0, v6, v3}, Lsmartisan/widget/SmartisanBottomBar;->a(Landroid/view/View;Z)I

    move-result v7

    .line 8
    invoke-virtual {p0, v6, v2}, Lsmartisan/widget/SmartisanBottomBar;->a(Landroid/view/View;Z)I

    move-result v8

    if-ne v7, v8, :cond_2

    move v8, v3

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    if-eqz v8, :cond_3

    .line 9
    iget v7, p0, Lsmartisan/widget/SmartisanBottomBar;->h:I

    :cond_3
    add-int/2addr v5, v7

    .line 10
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_4
    iget v0, p0, Lsmartisan/widget/SmartisanBottomBar;->f:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    array-length v1, v1

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lsmartisan/widget/SmartisanBottomBar;->g:I

    .line 12
    :cond_5
    :goto_2
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    array-length v1, v0

    if-ge v2, v1, :cond_6

    .line 13
    aget-object v0, v0, v2

    invoke-virtual {p0, v2}, Lsmartisan/widget/SmartisanBottomBar;->c(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanBottomBar;->a(I)[I

    move-result-object p1

    .line 25
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanBottomBar;->b:Z

    .line 26
    iget-boolean p2, p0, Lsmartisan/widget/SmartisanBottomBar;->b:Z

    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/SmartisanBottomBar;->a([IZ)V

    return-void
.end method

.method public a([IZ)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 19
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanBottomBar;->b:Z

    .line 21
    iput-object p1, p0, Lsmartisan/widget/SmartisanBottomBar;->a:[I

    .line 22
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanBottomBar;->b()V

    .line 23
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanBottomBar;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(I)[I
    .locals 4

    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 29
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, -0x1

    .line 30
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public b(I)Landroid/widget/ImageButton;
    .locals 1

    .line 14
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 15
    :cond_0
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b()V
    .locals 5

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanBottomBar;->a:[I

    array-length v1, v1

    if-eq v0, v1, :cond_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar;->a:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lsmartisan/widget/SmartisanBottomBar;->a:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 7
    iget-object v2, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    new-instance v3, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 8
    iget-object v2, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 9
    iget-boolean v2, p0, Lsmartisan/widget/SmartisanBottomBar;->b:Z

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    aget-object v2, v2, v1

    iget-object v3, p0, Lsmartisan/widget/SmartisanBottomBar;->a:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v2, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    aget-object v2, v2, v1

    iget-object v3, p0, Lsmartisan/widget/SmartisanBottomBar;->a:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 12
    :goto_1
    iget-object v2, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    aget-object v2, v2, v1

    new-instance v3, Lsmartisan/widget/SmartisanBottomBar$c;

    invoke-direct {v3, p0, v1}, Lsmartisan/widget/SmartisanBottomBar$c;-><init>(Lsmartisan/widget/SmartisanBottomBar;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v2, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final c(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    aget-object v1, v1, p1

    .line 2
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lsmartisan/widget/SmartisanBottomBar;->h:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    :goto_0
    iget v2, p0, Lsmartisan/widget/SmartisanBottomBar;->h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3
    iget-object v1, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 4
    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 p1, 0x11

    .line 5
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_1
    const/16 v1, 0x10

    .line 6
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 7
    :cond_2
    iget p1, p0, Lsmartisan/widget/SmartisanBottomBar;->g:I

    :goto_1
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getBottomItems()[Landroid/widget/ImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar;->c:[Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getShadowView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar;->e:Li/t/b;

    invoke-virtual {v0}, Li/t/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    new-instance p1, Lsmartisan/widget/SmartisanBottomBar$b;

    invoke-direct {p1, p0}, Lsmartisan/widget/SmartisanBottomBar$b;-><init>(Lsmartisan/widget/SmartisanBottomBar;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBottomInnerClickListener(Lsmartisan/widget/SmartisanBottomBar$BottomBarInnerClickCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanBottomBar;->d:Lsmartisan/widget/SmartisanBottomBar$BottomBarInnerClickCallBack;

    return-void
.end method

.method public setForceRemeasureChild(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanBottomBar;->i:Z

    return-void
.end method

.method public setIconRefArray(I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanBottomBar;->a(I)[I

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanBottomBar;->setIconRefArray([I)V

    return-void
.end method

.method public setIconRefArray([I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanBottomBar;->a([IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar;->e:Li/t/b;

    invoke-virtual {v0, p1}, Li/t/b;->a(I)V

    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar;->e:Li/t/b;

    invoke-virtual {v0, p1}, Li/t/b;->a(Z)V

    return-void
.end method
