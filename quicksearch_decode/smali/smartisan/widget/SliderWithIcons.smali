.class public Lsmartisan/widget/SliderWithIcons;
.super Landroid/widget/RelativeLayout;
.source "SliderWithIcons.java"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Lsmartisan/widget/SmoothSeekBar;

.field public d:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lsmartisan/widget/SliderWithIcons;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SliderWithIcons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SliderWithIcons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x10

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$layout;->slider_with_icons_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6
    sget v1, Lsmartisan/widget/R$id;->left_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lsmartisan/widget/SliderWithIcons;->a:Landroid/widget/ImageView;

    .line 7
    sget v1, Lsmartisan/widget/R$id;->right_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lsmartisan/widget/SliderWithIcons;->b:Landroid/widget/ImageView;

    .line 8
    sget v1, Lsmartisan/widget/R$id;->seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/SmoothSeekBar;

    iput-object v0, p0, Lsmartisan/widget/SliderWithIcons;->c:Lsmartisan/widget/SmoothSeekBar;

    .line 9
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->c:Lsmartisan/widget/SmoothSeekBar;

    new-instance v1, Lsmartisan/widget/SliderWithIcons$a;

    invoke-direct {v1, p0}, Lsmartisan/widget/SliderWithIcons$a;-><init>(Lsmartisan/widget/SliderWithIcons;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 10
    sget-object v0, Lsmartisan/widget/R$styleable;->SliderWithIcons:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lsmartisan/widget/R$styleable;->SliderWithIcons_left_icon_src:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 12
    sget v0, Lsmartisan/widget/R$styleable;->SliderWithIcons_right_icon_src:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 13
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object p2, p0, Lsmartisan/widget/SliderWithIcons;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Lsmartisan/widget/SliderWithIcons;->a:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p2, p0, Lsmartisan/widget/SliderWithIcons;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    :goto_0
    sget p2, Lsmartisan/widget/R$styleable;->SliderWithIcons_android_progressDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 18
    iget-object p3, p0, Lsmartisan/widget/SliderWithIcons;->c:Lsmartisan/widget/SmoothSeekBar;

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :cond_1
    sget p2, Lsmartisan/widget/R$styleable;->SliderWithIcons_android_thumb:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 20
    iget-object p3, p0, Lsmartisan/widget/SliderWithIcons;->c:Lsmartisan/widget/SmoothSeekBar;

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SliderWithIcons;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SliderWithIcons;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method


# virtual methods
.method public getLeftImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->c:Lsmartisan/widget/SmoothSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->c:Lsmartisan/widget/SmoothSeekBar;

    invoke-virtual {v0}, Lsmartisan/widget/SmoothSeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public getRightImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->c:Lsmartisan/widget/SmoothSeekBar;

    return-object v0
.end method

.method public setLeftIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setLeftIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftIconVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->c:Lsmartisan/widget/SmoothSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SliderWithIcons;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->c:Lsmartisan/widget/SmoothSeekBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmoothSeekBar;->setProgress(I)V

    return-void
.end method

.method public setProgressSmooth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->c:Lsmartisan/widget/SmoothSeekBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmoothSeekBar;->setProgressSmooth(I)V

    return-void
.end method

.method public setRightIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setRightIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightIconVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
