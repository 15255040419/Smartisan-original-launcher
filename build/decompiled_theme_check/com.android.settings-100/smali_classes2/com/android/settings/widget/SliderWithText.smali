.class public Lcom/android/settings/widget/SliderWithText;
.super Landroid/widget/RelativeLayout;
.source "SliderWithText.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SliderWithText$OnResetClickListener;,
        Lcom/android/settings/widget/SliderWithText$OnProgressChangedListener;,
        Lcom/android/settings/widget/SliderWithText$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mLeftTips:Landroid/widget/TextView;

.field private mMax:I

.field private mMin:I

.field private mOnProgressChangedListener:Lcom/android/settings/widget/SliderWithText$OnProgressChangedListener;

.field private mProgress:I

.field private mRightTips:Landroid/widget/TextView;

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mTitleView:Landroid/widget/TextView;

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SliderWithText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SliderWithText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0d027a

    .line 57
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a041d

    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SliderWithText;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0a0419

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SliderWithText;->mLeftTips:Landroid/widget/TextView;

    const v2, 0x7f0a041b

    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SliderWithText;->mRightTips:Landroid/widget/TextView;

    const v2, 0x7f0a0416

    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/widget/SliderWithText;->mSeekbar:Landroid/widget/SeekBar;

    .line 62
    iget-object v0, p0, Lcom/android/settings/widget/SliderWithText;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 63
    sget-object v0, Lcom/android/settings/R$styleable;->SeekbarWithText:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SliderWithText;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 72
    iget-object p1, p0, Lcom/android/settings/widget/SliderWithText;->mLeftTips:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 75
    iget-object p0, p0, Lcom/android/settings/widget/SliderWithText;->mRightTips:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public callChangeListener(I)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/widget/SliderWithText;->mOnProgressChangedListener:Lcom/android/settings/widget/SliderWithText$OnProgressChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/settings/widget/SliderWithText$OnProgressChangedListener;->onChange(Lcom/android/settings/widget/SliderWithText;I)Z

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

.method public getLeftTips()Landroid/view/View;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/settings/widget/SliderWithText;->mLeftTips:Landroid/widget/TextView;

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/android/settings/widget/SliderWithText;->mProgress:I

    return p0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/settings/widget/SliderWithText;->mSeekbar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 160
    iget-boolean p2, p0, Lcom/android/settings/widget/SliderWithText;->mTrackingTouch:Z

    if-nez p2, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SliderWithText;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/android/settings/widget/SliderWithText;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/android/settings/widget/SliderWithText;->mTrackingTouch:Z

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SliderWithText;->syncProgress(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/widget/SliderWithText;->mLeftTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/widget/SliderWithText;->mRightTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/widget/SliderWithText;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 155
    iget-object p0, p0, Lcom/android/settings/widget/SliderWithText;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setAlpha(F)V

    return-void
.end method

.method public setLeftTips(Ljava/lang/CharSequence;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/settings/widget/SliderWithText;->mLeftTips:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 100
    iget v0, p0, Lcom/android/settings/widget/SliderWithText;->mMax:I

    if-eq p1, v0, :cond_0

    .line 101
    iput p1, p0, Lcom/android/settings/widget/SliderWithText;->mMax:I

    .line 102
    iget-object p0, p0, Lcom/android/settings/widget/SliderWithText;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setMin(I)V
    .locals 1

    .line 107
    iget v0, p0, Lcom/android/settings/widget/SliderWithText;->mMin:I

    if-eq p1, v0, :cond_0

    .line 108
    iput p1, p0, Lcom/android/settings/widget/SliderWithText;->mMin:I

    .line 109
    iget-object p0, p0, Lcom/android/settings/widget/SliderWithText;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMin(I)V

    :cond_0
    return-void
.end method

.method public setOnProgressChangedListener(Lcom/android/settings/widget/SliderWithText$OnProgressChangedListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/widget/SliderWithText;->mOnProgressChangedListener:Lcom/android/settings/widget/SliderWithText$OnProgressChangedListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 114
    iget v0, p0, Lcom/android/settings/widget/SliderWithText;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/SliderWithText;->mMin:I

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 120
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/SliderWithText;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 121
    iput p1, p0, Lcom/android/settings/widget/SliderWithText;->mProgress:I

    .line 122
    iget-object p0, p0, Lcom/android/settings/widget/SliderWithText;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/widget/SliderWithText;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightTips(Ljava/lang/CharSequence;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settings/widget/SliderWithText;->mRightTips:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/widget/SliderWithText;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 136
    iget v1, p0, Lcom/android/settings/widget/SliderWithText;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SliderWithText;->callChangeListener(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SliderWithText;->setProgress(I)V

    goto :goto_0

    .line 140
    :cond_0
    iget p0, p0, Lcom/android/settings/widget/SliderWithText;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
