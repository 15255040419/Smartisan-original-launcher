.class public Lcom/android/settings/widget/VerticalOptionsCheckView;
.super Landroid/widget/LinearLayout;
.source "VerticalOptionsCheckView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/VerticalOptionsCheckView$OptionSelectListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final MIDDLE:I = 0x1

.field public static final OPTIONS_COUNT_DEFAULT:I = 0x2

.field public static final TOP:I


# instance fields
.field private mBottomCheckIcon:Landroid/widget/ImageView;

.field private mBottomOptionView:Landroid/view/View;

.field private mBottomPreview:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mMiddleCheckIcon:Landroid/widget/ImageView;

.field private mMiddleOptionView:Landroid/view/View;

.field private mMiddlePreview:Landroid/widget/ImageView;

.field private mOptionSelectListener:Lcom/android/settings/widget/VerticalOptionsCheckView$OptionSelectListener;

.field private mOptionsCount:I

.field private mTitle:Landroid/widget/TextView;

.field private mTopCheckIcon:Landroid/widget/ImageView;

.field private mTopOptionView:Landroid/view/View;

.field private mTopPreview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/VerticalOptionsCheckView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/VerticalOptionsCheckView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d0332

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    sget-object p3, Lcom/android/settings/R$styleable;->VerticalOptionsCheckView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x2

    .line 57
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mOptionsCount:I

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0a0961

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f0a0982

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopOptionView:Landroid/view/View;

    const p1, 0x7f0a0983

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopPreview:Landroid/widget/ImageView;

    const p1, 0x7f0a097e

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopCheckIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a0100

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomOptionView:Landroid/view/View;

    const p1, 0x7f0a0101

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomPreview:Landroid/widget/ImageView;

    const p1, 0x7f0a00f8

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomCheckIcon:Landroid/widget/ImageView;

    .line 67
    iget-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopOptionView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomOptionView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mOptionsCount:I

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    const p1, 0x7f0a0647

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddleOptionView:Landroid/view/View;

    const p1, 0x7f0a0648

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddlePreview:Landroid/widget/ImageView;

    const p1, 0x7f0a0645

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddleCheckIcon:Landroid/widget/ImageView;

    .line 73
    iget-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddleOptionView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddleOptionView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindOptionPreview(II)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 89
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public bindOptionPreview(III)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->setTitle(I)V

    .line 94
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/widget/VerticalOptionsCheckView;->bindOptionPreview(II)V

    return-void
.end method

.method public bindOptionPreview(IIII)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->setTitle(I)V

    .line 100
    invoke-virtual {p0, p2, p4}, Lcom/android/settings/widget/VerticalOptionsCheckView;->bindOptionPreview(II)V

    if-eqz p3, :cond_0

    .line 101
    iget p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mOptionsCount:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddlePreview:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public getOptionPreview(I)Landroid/widget/ImageView;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopPreview:Landroid/widget/ImageView;

    return-object p0

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomPreview:Landroid/widget/ImageView;

    return-object p0

    .line 111
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddlePreview:Landroid/widget/ImageView;

    return-object p0

    .line 109
    :cond_2
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0100

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0647

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0982

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopCheckIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->setCheck(I)V

    .line 197
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mOptionSelectListener:Lcom/android/settings/widget/VerticalOptionsCheckView$OptionSelectListener;

    if-eqz p0, :cond_3

    .line 198
    invoke-interface {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView$OptionSelectListener;->onOptionSelected(I)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddleCheckIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->setCheck(I)V

    .line 206
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mOptionSelectListener:Lcom/android/settings/widget/VerticalOptionsCheckView$OptionSelectListener;

    if-eqz p0, :cond_3

    .line 207
    invoke-interface {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView$OptionSelectListener;->onOptionSelected(I)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomCheckIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->setCheck(I)V

    .line 215
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mOptionSelectListener:Lcom/android/settings/widget/VerticalOptionsCheckView$OptionSelectListener;

    if-eqz p0, :cond_3

    .line 216
    invoke-interface {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView$OptionSelectListener;->onOptionSelected(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setBottomMargin(I)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xe

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 165
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCheck(I)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopCheckIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomCheckIcon:Landroid/widget/ImageView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mOptionsCount:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 123
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddleCheckIcon:Landroid/widget/ImageView;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setContentDesc(II)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopOptionView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomOptionView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDesc(III)V
    .locals 0

    .line 174
    invoke-virtual {p0, p1, p3}, Lcom/android/settings/widget/VerticalOptionsCheckView;->setContentDesc(II)V

    .line 175
    iget p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mOptionsCount:I

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    .line 176
    iget-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddleOptionView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 182
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopOptionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomOptionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    iget v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mOptionsCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddleOptionView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOptionSelectListener(Lcom/android/settings/widget/VerticalOptionsCheckView$OptionSelectListener;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mOptionSelectListener:Lcom/android/settings/widget/VerticalOptionsCheckView$OptionSelectListener;

    return-void
.end method

.method public setPreviewHeight(I)V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopOptionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    iget-object v1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomOptionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 134
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 135
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 136
    iget v2, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mOptionsCount:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/widget/VerticalOptionsCheckView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070399

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, p1

    .line 138
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 139
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 140
    iget-object v2, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddleOptionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 142
    iget-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mMiddleOptionView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopOptionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mBottomOptionView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/widget/VerticalOptionsCheckView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VerticalOptionsCheckView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTitle:Landroid/widget/TextView;

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

.method public setTopMargin(I)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xe

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 155
    iget-object p0, p0, Lcom/android/settings/widget/VerticalOptionsCheckView;->mTopPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
