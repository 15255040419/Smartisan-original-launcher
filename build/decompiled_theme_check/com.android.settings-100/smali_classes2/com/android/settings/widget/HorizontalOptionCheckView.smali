.class public Lcom/android/settings/widget/HorizontalOptionCheckView;
.super Landroid/widget/RelativeLayout;
.source "HorizontalOptionCheckView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/HorizontalOptionCheckView$OptionSelectListener;,
        Lcom/android/settings/widget/HorizontalOptionCheckView$Position;
    }
.end annotation


# static fields
.field private static final DEF_OPTIONS_COUNT:I = 0x2


# instance fields
.field private mCurrentSelect:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

.field private mLeftItem:Lcom/android/settings/PreviewSettingItemView;

.field private mMiddleItem:Lcom/android/settings/PreviewSettingItemView;

.field private mOptionListener:Lcom/android/settings/widget/HorizontalOptionCheckView$OptionSelectListener;

.field private mOptionsCount:I

.field private mRightItem:Lcom/android/settings/PreviewSettingItemView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/HorizontalOptionCheckView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/HorizontalOptionCheckView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/widget/HorizontalOptionCheckView;->init()V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0d013f

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    sget-object v0, Lcom/android/settings/R$styleable;->HorizontalOptionCheckView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    .line 57
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mOptionsCount:I

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0a03a8

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HorizontalOptionCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0961

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HorizontalOptionCheckView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0548

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HorizontalOptionCheckView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PreviewSettingItemView;

    iput-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mLeftItem:Lcom/android/settings/PreviewSettingItemView;

    const v0, 0x7f0a0549

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HorizontalOptionCheckView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PreviewSettingItemView;

    iput-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mMiddleItem:Lcom/android/settings/PreviewSettingItemView;

    const v0, 0x7f0a054a

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HorizontalOptionCheckView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PreviewSettingItemView;

    iput-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mRightItem:Lcom/android/settings/PreviewSettingItemView;

    const v0, 0x7f08007b

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mLeftItem:Lcom/android/settings/PreviewSettingItemView;

    invoke-virtual {v0, p0}, Lcom/android/settings/PreviewSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mMiddleItem:Lcom/android/settings/PreviewSettingItemView;

    invoke-virtual {v0, p0}, Lcom/android/settings/PreviewSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mRightItem:Lcom/android/settings/PreviewSettingItemView;

    invoke-virtual {v0, p0}, Lcom/android/settings/PreviewSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mOptionsCount:I

    if-ne v0, p3, :cond_0

    .line 72
    iget-object p3, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mMiddleItem:Lcom/android/settings/PreviewSettingItemView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Lcom/android/settings/PreviewSettingItemView;->setVisibility(I)V

    const p3, 0x7f08034b

    .line 73
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/HorizontalOptionCheckView;->setTitle(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/widget/HorizontalOptionCheckView;->clearCheck()V

    return-void
.end method

.method private clearCheck()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mLeftItem:Lcom/android/settings/PreviewSettingItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/PreviewSettingItemView;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mMiddleItem:Lcom/android/settings/PreviewSettingItemView;

    invoke-virtual {v0, v1}, Lcom/android/settings/PreviewSettingItemView;->setChecked(Z)V

    .line 189
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mRightItem:Lcom/android/settings/PreviewSettingItemView;

    invoke-virtual {p0, v1}, Lcom/android/settings/PreviewSettingItemView;->setChecked(Z)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 81
    sget-object v0, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->LEFT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    iput-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mCurrentSelect:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    return-void
.end method


# virtual methods
.method public getItemView(Lcom/android/settings/widget/HorizontalOptionCheckView$Position;)Lcom/android/settings/PreviewSettingItemView;
    .locals 1

    .line 149
    sget-object v0, Lcom/android/settings/widget/HorizontalOptionCheckView$1;->$SwitchMap$com$android$settings$widget$HorizontalOptionCheckView$Position:[I

    invoke-virtual {p1}, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 156
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mRightItem:Lcom/android/settings/PreviewSettingItemView;

    return-object p0

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mMiddleItem:Lcom/android/settings/PreviewSettingItemView;

    return-object p0

    .line 151
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mLeftItem:Lcom/android/settings/PreviewSettingItemView;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 172
    sget-object p1, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->RIGHT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    goto :goto_0

    .line 168
    :pswitch_0
    sget-object p1, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->MIDDLE:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    goto :goto_0

    .line 165
    :pswitch_1
    sget-object p1, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->LEFT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mCurrentSelect:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    if-ne p1, v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/HorizontalOptionCheckView;->clearCheck()V

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HorizontalOptionCheckView;->getItemView(Lcom/android/settings/widget/HorizontalOptionCheckView$Position;)Lcom/android/settings/PreviewSettingItemView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/PreviewSettingItemView;->setChecked(Z)V

    .line 180
    iput-object p1, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mCurrentSelect:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    .line 181
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mOptionListener:Lcom/android/settings/widget/HorizontalOptionCheckView$OptionSelectListener;

    if-eqz p0, :cond_1

    .line 182
    invoke-interface {p0, p1}, Lcom/android/settings/widget/HorizontalOptionCheckView$OptionSelectListener;->select(Lcom/android/settings/widget/HorizontalOptionCheckView$Position;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0548
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCheck(Lcom/android/settings/widget/HorizontalOptionCheckView$Position;)V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mLeftItem:Lcom/android/settings/PreviewSettingItemView;

    sget-object v1, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->LEFT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/PreviewSettingItemView;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mMiddleItem:Lcom/android/settings/PreviewSettingItemView;

    sget-object v1, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->MIDDLE:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/PreviewSettingItemView;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mRightItem:Lcom/android/settings/PreviewSettingItemView;

    sget-object v1, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->RIGHT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/settings/PreviewSettingItemView;->setChecked(Z)V

    .line 145
    iput-object p1, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mCurrentSelect:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    return-void
.end method

.method public setOptionListener(Lcom/android/settings/widget/HorizontalOptionCheckView$OptionSelectListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mOptionListener:Lcom/android/settings/widget/HorizontalOptionCheckView$OptionSelectListener;

    return-void
.end method

.method public setPreview(Lcom/android/settings/widget/HorizontalOptionCheckView$Position;I)V
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HorizontalOptionCheckView;->getItemView(Lcom/android/settings/widget/HorizontalOptionCheckView$Position;)Lcom/android/settings/PreviewSettingItemView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/settings/PreviewSettingItemView;->setPreview(I)V

    return-void
.end method

.method public setPreviewHeight(I)V
    .locals 1

    const v0, 0x7f0a03a8

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HorizontalOptionCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 101
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSubtitle(Lcom/android/settings/widget/HorizontalOptionCheckView$Position;I)V
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HorizontalOptionCheckView;->getItemView(Lcom/android/settings/widget/HorizontalOptionCheckView$Position;)Lcom/android/settings/PreviewSettingItemView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/settings/PreviewSettingItemView;->setTitle(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mTitle:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mTitle:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mTitle:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updatePreviews(II)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mLeftItem:Lcom/android/settings/PreviewSettingItemView;

    invoke-virtual {v0, p1}, Lcom/android/settings/PreviewSettingItemView;->setPreview(I)V

    .line 119
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mRightItem:Lcom/android/settings/PreviewSettingItemView;

    invoke-virtual {p0, p2}, Lcom/android/settings/PreviewSettingItemView;->setPreview(I)V

    return-void
.end method

.method public updatePreviews(III)V
    .locals 0

    .line 123
    invoke-virtual {p0, p1, p3}, Lcom/android/settings/widget/HorizontalOptionCheckView;->updatePreviews(II)V

    .line 124
    iget p1, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mOptionsCount:I

    const/4 p3, 0x2

    if-le p1, p3, :cond_0

    .line 125
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mMiddleItem:Lcom/android/settings/PreviewSettingItemView;

    invoke-virtual {p0, p2}, Lcom/android/settings/PreviewSettingItemView;->setPreview(I)V

    :cond_0
    return-void
.end method

.method public updateSubTitles(II)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mLeftItem:Lcom/android/settings/PreviewSettingItemView;

    invoke-virtual {v0, p1}, Lcom/android/settings/PreviewSettingItemView;->setTitle(I)V

    .line 107
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mRightItem:Lcom/android/settings/PreviewSettingItemView;

    invoke-virtual {p0, p2}, Lcom/android/settings/PreviewSettingItemView;->setTitle(I)V

    return-void
.end method

.method public updateSubTitles(III)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p3}, Lcom/android/settings/widget/HorizontalOptionCheckView;->updateSubTitles(II)V

    .line 112
    iget p1, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mOptionsCount:I

    const/4 p3, 0x2

    if-le p1, p3, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalOptionCheckView;->mMiddleItem:Lcom/android/settings/PreviewSettingItemView;

    invoke-virtual {p0, p2}, Lcom/android/settings/PreviewSettingItemView;->setTitle(I)V

    :cond_0
    return-void
.end method
