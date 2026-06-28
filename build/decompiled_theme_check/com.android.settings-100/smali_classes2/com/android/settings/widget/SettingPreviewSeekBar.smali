.class public Lcom/android/settings/widget/SettingPreviewSeekBar;
.super Landroid/widget/RelativeLayout;
.source "SettingPreviewSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;,
        Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;,
        Lcom/android/settings/widget/SettingPreviewSeekBar$OnItemCheckListener;,
        Lcom/android/settings/widget/SettingPreviewSeekBar$OnSeekBarChangeListener;,
        Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;
    }
.end annotation


# instance fields
.field private final FOCUS_COLOR:I

.field private final NON_FOCUS_COLOR:I

.field private mAnimMgr:Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;

.field private mAnimView:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

.field private mCenterTips:Landroid/widget/TextView;

.field private mItemCheckListener:Lcom/android/settings/widget/SettingPreviewSeekBar$OnItemCheckListener;

.field private mItemCheckViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsmartisanos/widget/SettingItemCheck;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftTips:Landroid/widget/TextView;

.field private mMax:I

.field private mOnChangeListener:Lcom/android/settings/widget/SettingPreviewSeekBar$OnSeekBarChangeListener;

.field private mPreviewMode:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

.field private mProgress:I

.field private mRightTips:Landroid/widget/TextView;

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mTipsView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mToolsContainer:Landroid/widget/FrameLayout;

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingPreviewSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingPreviewSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mProgress:I

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0d028a

    .line 75
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a041d

    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0a041c

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mTipsView:Landroid/widget/TextView;

    const v2, 0x7f0a0419

    .line 78
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mLeftTips:Landroid/widget/TextView;

    const v2, 0x7f0a041b

    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mRightTips:Landroid/widget/TextView;

    const v2, 0x7f0a0417

    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mCenterTips:Landroid/widget/TextView;

    const v2, 0x7f0a0416

    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mItemCheckViews:Ljava/util/ArrayList;

    const v2, 0x7f0a03c3

    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lsmartisanos/widget/SettingItemCheck;

    const v3, 0x7f0a03c4

    .line 84
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lsmartisanos/widget/SettingItemCheck;

    const v4, 0x7f0a03c2

    .line 85
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lsmartisanos/widget/SettingItemCheck;

    .line 86
    iget-object v5, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mItemCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v5, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mItemCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v5, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mItemCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f0a0306

    .line 90
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mAnimView:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    .line 92
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    sget-object v0, Lcom/android/settings/R$styleable;->SettingPreviewSeekBar:[I

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x9

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x4

    .line 95
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x7

    .line 97
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    .line 98
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    .line 99
    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x3

    .line 100
    invoke-virtual {p1, v9, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    if-ne v8, v1, :cond_0

    .line 101
    sget-object v8, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;->SIMPLE_ITEM:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    goto :goto_0

    :cond_0
    sget-object v8, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;->PROGRESS:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    :goto_0
    iput-object v8, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mPreviewMode:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 104
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1

    .line 106
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v7, :cond_2

    .line 109
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 112
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mLeftTips:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 115
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mCenterTips:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v6, :cond_5

    .line 118
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mRightTips:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 121
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    if-eqz v8, :cond_7

    .line 124
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v8}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_7
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mPreviewMode:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    sget-object p2, Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;->SIMPLE_ITEM:Lcom/android/settings/widget/SettingPreviewSeekBar$MODE;

    if-ne p1, p2, :cond_8

    const p1, 0x7f0a040d

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-virtual {v2, p0}, Lsmartisanos/widget/SettingItemCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v3, p0}, Lsmartisanos/widget/SettingItemCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {v4, p0}, Lsmartisanos/widget/SettingItemCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_8
    const p1, 0x7f0a040c

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingPreviewSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060063

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->NON_FOCUS_COLOR:I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingPreviewSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060062

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->FOCUS_COLOR:I

    .line 138
    invoke-direct {p0}, Lcom/android/settings/widget/SettingPreviewSeekBar;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/SettingPreviewSeekBar;I)Landroid/widget/TextView;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->getTipsView(I)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/SettingPreviewSeekBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->FOCUS_COLOR:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/SettingPreviewSeekBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->NON_FOCUS_COLOR:I

    return p0
.end method

.method private getTipsView(I)Landroid/widget/TextView;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 288
    iget-object p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mLeftTips:Landroid/widget/TextView;

    goto :goto_0

    .line 285
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mRightTips:Landroid/widget/TextView;

    goto :goto_0

    .line 282
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mCenterTips:Landroid/widget/TextView;

    goto :goto_0

    .line 279
    :cond_2
    iget-object p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mLeftTips:Landroid/widget/TextView;

    :goto_0
    return-object p0
.end method

.method private init()V
    .locals 2

    .line 142
    new-instance v0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;

    iget-object v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;-><init>(Lcom/android/settings/widget/SettingPreviewSeekBar;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mAnimMgr:Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;

    return-void
.end method

.method private resetViewState()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mLeftTips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mLeftTips:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->NON_FOCUS_COLOR:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mRightTips:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mRightTips:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->NON_FOCUS_COLOR:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mCenterTips:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mCenterTips:Landroid/widget/TextView;

    iget p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->NON_FOCUS_COLOR:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTextViewStyleBold(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    .line 214
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 215
    iget p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->FOCUS_COLOR:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateViewStateByProgress(I)V
    .locals 1

    .line 190
    invoke-direct {p0}, Lcom/android/settings/widget/SettingPreviewSeekBar;->resetViewState()V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mRightTips:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->setTextViewStyleBold(Landroid/widget/TextView;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mCenterTips:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->setTextViewStyleBold(Landroid/widget/TextView;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mLeftTips:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->setTextViewStyleBold(Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public callChangeListener(I)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mOnChangeListener:Lcom/android/settings/widget/SettingPreviewSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar$OnSeekBarChangeListener;->onChange(Lcom/android/settings/widget/SettingPreviewSeekBar;I)Z

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

.method public getProgress()I
    .locals 0

    .line 219
    iget p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mProgress:I

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 266
    instance-of v0, p1, Lsmartisanos/widget/SettingItemCheck;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mItemCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 268
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mItemCheckListener:Lcom/android/settings/widget/SettingPreviewSeekBar$OnItemCheckListener;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar$OnItemCheckListener;->onItemCheck(I)Z

    .line 271
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->setSelect(I)V

    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mTrackingTouch:Z

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->syncProgress(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 239
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mLeftTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mRightTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 243
    iget-object p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setAlpha(F)V

    return-void
.end method

.method public setItenCheckListener(Lcom/android/settings/widget/SettingPreviewSeekBar$OnItemCheckListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mItemCheckListener:Lcom/android/settings/widget/SettingPreviewSeekBar$OnItemCheckListener;

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 158
    iget v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mMax:I

    if-eq p1, v0, :cond_0

    .line 159
    iput p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mMax:I

    .line 160
    iget-object p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/android/settings/widget/SettingPreviewSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mOnChangeListener:Lcom/android/settings/widget/SettingPreviewSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 165
    iget v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 171
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 172
    iput p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mProgress:I

    .line 173
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 175
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->updateViewStateByProgress(I)V

    .line 176
    iget-object p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mAnimMgr:Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->onProgressChanged(I)V

    return-void
.end method

.method public setSelect(I)V
    .locals 4

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mItemCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    move p1, v0

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mItemCheckViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisanos/widget/SettingItemCheck;

    const/4 v3, 0x0

    .line 184
    invoke-virtual {v2, v3}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mItemCheckViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsmartisanos/widget/SettingItemCheck;

    invoke-virtual {p0, v0}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    .line 227
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 228
    iget v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingPreviewSeekBar;->callChangeListener(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingPreviewSeekBar;->setProgress(I)V

    goto :goto_0

    .line 232
    :cond_0
    iget p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
