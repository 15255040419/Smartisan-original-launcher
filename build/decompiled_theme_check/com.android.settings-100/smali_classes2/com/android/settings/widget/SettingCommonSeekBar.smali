.class public Lcom/android/settings/widget/SettingCommonSeekBar;
.super Landroid/widget/RelativeLayout;
.source "SettingCommonSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SettingCommonSeekBar$OnResetClickListener;,
        Lcom/android/settings/widget/SettingCommonSeekBar$OnProgressChangedListener;,
        Lcom/android/settings/widget/SettingCommonSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mGapView:Landroid/view/View;

.field private mLeftTips:Landroid/widget/TextView;

.field private mMax:I

.field private mMin:I

.field private mOnProgressChangedListener:Lcom/android/settings/widget/SettingCommonSeekBar$OnProgressChangedListener;

.field private mOnResetClickListener:Lcom/android/settings/widget/SettingCommonSeekBar$OnResetClickListener;

.field private mProgress:I

.field private mResetBtn:Landroid/widget/Button;

.field private mResetBtnContainer:Lsmartisanos/widget/ListContentItemCustom;

.field private mRightTips:Landroid/widget/TextView;

.field private mSeekBarContainer:Lsmartisanos/widget/ListContentItemCustom;

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mTipsView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingCommonSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingCommonSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0d0284

    .line 68
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0418

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lsmartisanos/widget/ListContentItemCustom;

    iput-object v2, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mSeekBarContainer:Lsmartisanos/widget/ListContentItemCustom;

    const v2, 0x7f0a041d

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0a041c

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mTipsView:Landroid/widget/TextView;

    const v2, 0x7f0a0419

    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mLeftTips:Landroid/widget/TextView;

    const v2, 0x7f0a041b

    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mRightTips:Landroid/widget/TextView;

    const v2, 0x7f0a0416

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    const v2, 0x7f0a03c7

    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mGapView:Landroid/view/View;

    const v2, 0x7f0a03a4

    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemCustom;

    iput-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mResetBtnContainer:Lsmartisanos/widget/ListContentItemCustom;

    const v0, 0x7f0a041a

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingCommonSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mResetBtn:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 79
    sget-object v0, Lcom/android/settings/R$styleable;->SettingCommonSeekBar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x5

    .line 80
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 81
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    .line 82
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 83
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 84
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 86
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {p0, p3}, Lcom/android/settings/widget/SettingCommonSeekBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/SettingCommonSeekBar;->setTipsText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    .line 92
    iget-object p2, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mLeftTips:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 95
    iget-object p2, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mRightTips:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const p2, 0x7f12157b

    if-eqz v5, :cond_3

    new-array p3, v1, [Ljava/lang/Object;

    aput-object v5, p3, v2

    .line 98
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingCommonSeekBar;->restBtnText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p3, v0, v2

    .line 100
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingCommonSeekBar;->restBtnText(Ljava/lang/String;)V

    .line 102
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/settings/widget/SettingCommonSeekBar;->setResetButtonVisible(Z)V

    .line 103
    invoke-direct {p0}, Lcom/android/settings/widget/SettingCommonSeekBar;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/SettingCommonSeekBar;)Lcom/android/settings/widget/SettingCommonSeekBar$OnResetClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mOnResetClickListener:Lcom/android/settings/widget/SettingCommonSeekBar$OnResetClickListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mResetBtnContainer:Lsmartisanos/widget/ListContentItemCustom;

    new-instance v1, Lcom/android/settings/widget/SettingCommonSeekBar$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/SettingCommonSeekBar$1;-><init>(Lcom/android/settings/widget/SettingCommonSeekBar;)V

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ListContentItemCustom;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public callChangeListener(I)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mOnProgressChangedListener:Lcom/android/settings/widget/SettingCommonSeekBar$OnProgressChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/settings/widget/SettingCommonSeekBar$OnProgressChangedListener;->onChange(Lcom/android/settings/widget/SettingCommonSeekBar;I)Z

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

    .line 251
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mLeftTips:Landroid/widget/TextView;

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    .line 201
    iget p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mProgress:I

    return p0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 234
    iget-boolean p2, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mTrackingTouch:Z

    if-nez p2, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingCommonSeekBar;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 241
    iput-boolean p1, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mTrackingTouch:Z

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingCommonSeekBar;->syncProgress(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public restBtnText(I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingCommonSeekBar;->restBtnText(Ljava/lang/String;)V

    return-void
.end method

.method public restBtnText(Ljava/lang/String;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mResetBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 225
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mLeftTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mRightTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 229
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mSeekbar:Landroid/widget/SeekBar;

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

    .line 153
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mLeftTips:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 174
    iget v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mMax:I

    if-eq p1, v0, :cond_0

    .line 175
    iput p1, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mMax:I

    .line 176
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setMin(I)V
    .locals 1

    .line 181
    iget v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mMin:I

    if-eq p1, v0, :cond_0

    .line 182
    iput p1, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mMin:I

    .line 183
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMin(I)V

    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/android/settings/widget/SettingCommonSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingCommonSeekBar;->setOnResetClickListener(Lcom/android/settings/widget/SettingCommonSeekBar$OnResetClickListener;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingCommonSeekBar;->setOnProgressChangedListener(Lcom/android/settings/widget/SettingCommonSeekBar$OnProgressChangedListener;)V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/android/settings/widget/SettingCommonSeekBar$OnProgressChangedListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mOnProgressChangedListener:Lcom/android/settings/widget/SettingCommonSeekBar$OnProgressChangedListener;

    return-void
.end method

.method public setOnResetClickListener(Lcom/android/settings/widget/SettingCommonSeekBar$OnResetClickListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mOnResetClickListener:Lcom/android/settings/widget/SettingCommonSeekBar$OnResetClickListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 188
    iget v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 191
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mMin:I

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 194
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 195
    iput p1, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mProgress:I

    .line 196
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setResetButtonVisible(Z)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mResetBtnContainer:Lsmartisanos/widget/ListContentItemCustom;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lsmartisanos/widget/ListContentItemCustom;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mGapView:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mSeekBarContainer:Lsmartisanos/widget/ListContentItemCustom;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lsmartisanos/widget/ListContentItemCustom;->setBackgroundStyle(I)V

    return-void
.end method

.method public setRightTips(Ljava/lang/CharSequence;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mRightTips:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTipsText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mTipsView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    .line 209
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 210
    iget v1, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingCommonSeekBar;->callChangeListener(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingCommonSeekBar;->setProgress(I)V

    goto :goto_0

    .line 214
    :cond_0
    iget p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
