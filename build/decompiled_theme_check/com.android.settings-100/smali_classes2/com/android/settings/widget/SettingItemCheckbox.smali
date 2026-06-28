.class public Lcom/android/settings/widget/SettingItemCheckbox;
.super Lsmartisanos/widget/SettingItemCheck;
.source "SettingItemCheckbox.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mRightSlotView:Landroid/widget/LinearLayout;

.field private mSubtitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingItemCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingItemCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lsmartisanos/widget/SettingItemCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object v0, Lcom/android/settings/R$styleable;->SettingItemCheckbox:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 49
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 50
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingItemCheckbox;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p2, 0x3

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingItemCheckbox;->setSubtitle(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 56
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 57
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingItemCheckbox;->setClickable(Z)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingItemCheckbox;->setEnabled(Z)V

    const/4 p2, 0x2

    .line 60
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingItemCheckbox;->setArrowVisible(Z)V

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingItemCheckbox;->setArrowDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p2, 0x4

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingItemCheckbox;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    new-instance p2, Lcom/android/settings/widget/SettingItemCheckbox$1;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/SettingItemCheckbox$1;-><init>(Lcom/android/settings/widget/SettingItemCheckbox;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingItemCheckbox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    return-void
.end method

.method private adjustTitleTextSizeIfNeeded()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckbox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0702cb

    invoke-static {v0, v1, v2}, Lsmartisanos/util/Utils;->resetTextViewFontSizeAttr(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 241
    invoke-direct {p0}, Lcom/android/settings/widget/SettingItemCheckbox;->calculateMaxTitleWidth()I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mTitle:Landroid/widget/TextView;

    invoke-static {v1}, Lsmartisanos/util/Utils;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckbox;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700b7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0}, Lsmartisanos/util/Utils;->setMaxTextSizeForTextView(Landroid/widget/TextView;F)V

    :cond_2
    return-void
.end method

.method private calculateMaxTitleWidth()I
    .locals 5

    .line 249
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckbox;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 251
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckbox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckbox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckbox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070197

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckbox;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f0700b5

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 256
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public getArrowView()Landroid/view/View;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method protected getDefaultLeftLayout()I
    .locals 0

    const p0, 0x7f0d0287

    return p0
.end method

.method protected getDefaultRightLayout()I
    .locals 0

    const p0, 0x206000d

    return p0
.end method

.method public getSubtitleView()Landroid/widget/TextView;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mSubtitle:Landroid/widget/TextView;

    return-object p0
.end method

.method protected initLeftWidget()V
    .locals 1

    const v0, 0x7f0a04aa

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemCheckbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method protected initRightWidget()V
    .locals 3

    const v0, 0x2080005

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemCheckbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mSubtitle:Landroid/widget/TextView;

    const v0, 0x208000a

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemCheckbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mSummary:Landroid/widget/TextView;

    const v0, 0x2080006

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemCheckbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mArrow:Landroid/widget/ImageView;

    const v0, 0x2080011

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemCheckbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mRightSlotView:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckbox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20701c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    const v0, 0x7f080436

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemCheckbox;->setArrowDrawableResource(I)V

    return-void
.end method

.method public isCheckboxEnabled()Z
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    return p0
.end method

.method public setArrowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setArrowDrawableResource(I)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setArrowOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setArrowVisible(Z)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setCheckboxDrawable(I)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    return-void
.end method

.method public setCheckboxDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckboxEnabled(Z)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 219
    invoke-super {p0, p1}, Lsmartisanos/widget/SettingItemCheck;->setEnabled(Z)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingItemCheckbox;->setCheckboxEnabled(Z)V

    .line 221
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    const/4 p1, 0x1

    .line 93
    invoke-super {p0, p1}, Lsmartisanos/widget/SettingItemCheck;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x1

    .line 98
    invoke-super {p0, p1}, Lsmartisanos/widget/SettingItemCheck;->setIcon(I)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lsmartisanos/widget/SettingItemCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 211
    invoke-super {p0, p1}, Lsmartisanos/widget/SettingItemCheck;->setPressed(Z)V

    .line 212
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mPressable:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public setRightExpandView(Landroid/view/View;)V
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-nez p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 172
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mRightSlotView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mRightSlotView:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 155
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mIsCustomRightView:Z

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mSubtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lsmartisanos/widget/SettingItemCheck;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckbox;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckbox;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
