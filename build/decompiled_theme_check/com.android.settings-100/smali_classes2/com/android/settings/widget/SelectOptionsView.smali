.class public Lcom/android/settings/widget/SelectOptionsView;
.super Landroid/widget/LinearLayout;
.source "SelectOptionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SelectOptionsView$OptionsSelectedCallback;
    }
.end annotation


# static fields
.field private static final INVALID_TEXT_SIZE:I = -0x1


# instance fields
.field private mAnimNameArray:[Ljava/lang/String;

.field private mCheckImmediately:Z

.field private mOptionsSelectedCallback:Lcom/android/settings/widget/SelectOptionsView$OptionsSelectedCallback;

.field private mOriginIndex:I

.field private mTitleTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SelectOptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SelectOptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/android/settings/widget/SelectOptionsView;->mOriginIndex:I

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/android/settings/widget/SelectOptionsView;->mCheckImmediately:Z

    .line 25
    iput p1, p0, Lcom/android/settings/widget/SelectOptionsView;->mTitleTextSize:I

    return-void
.end method

.method private updateViewTitle()V
    .locals 3

    const/4 v0, 0x0

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SelectOptionsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/PreviewOptionItemView;

    .line 128
    iget v2, p0, Lcom/android/settings/widget/SelectOptionsView;->mOriginIndex:I

    if-ne v0, v2, :cond_0

    const v2, 0x7f120544

    .line 129
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/PreviewOptionItemView;->setTitle(I)V

    goto :goto_1

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/SelectOptionsView;->mAnimNameArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/PreviewOptionItemView;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 2

    const/4 v0, 0x0

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SelectOptionsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/PreviewOptionItemView;

    .line 155
    invoke-virtual {v1}, Lcom/android/settings/widget/PreviewOptionItemView;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public initTitleSize(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/settings/widget/SelectOptionsView;->mTitleTextSize:I

    return-void
.end method

.method public initView(IIII)V
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 47
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/SelectOptionsView;->mAnimNameArray:[Ljava/lang/String;

    .line 50
    iget-object p2, p0, Lcom/android/settings/widget/SelectOptionsView;->mAnimNameArray:[Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/settings/widget/SelectOptionsView;->initView([Landroid/graphics/drawable/Drawable;[Ljava/lang/String;II)V

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public initView(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 58
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/settings/widget/SelectOptionsView;->initView([Landroid/graphics/drawable/Drawable;[Ljava/lang/String;II)V

    return-void
.end method

.method public initView([Landroid/graphics/drawable/Drawable;[Ljava/lang/String;II)V
    .locals 6

    .line 63
    iput-object p2, p0, Lcom/android/settings/widget/SelectOptionsView;->mAnimNameArray:[Ljava/lang/String;

    .line 64
    array-length p2, p1

    iget-object v0, p0, Lcom/android/settings/widget/SelectOptionsView;->mAnimNameArray:[Ljava/lang/String;

    array-length v0, v0

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    move v0, p2

    .line 67
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 68
    new-instance v1, Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/widget/PreviewOptionItemView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070297

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 71
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 72
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    if-lez p3, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 78
    :cond_0
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/PreviewOptionItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 84
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 87
    invoke-virtual {v1}, Lcom/android/settings/widget/PreviewOptionItemView;->getIconAreaFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 90
    invoke-virtual {v1}, Lcom/android/settings/widget/PreviewOptionItemView;->getTitleView()Landroid/widget/TextView;

    move-result-object v3

    .line 91
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    invoke-virtual {v5, p2, v2, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v2, p0, Lcom/android/settings/widget/SelectOptionsView;->mAnimNameArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/PreviewOptionItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget v2, p0, Lcom/android/settings/widget/SelectOptionsView;->mTitleTextSize:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 97
    invoke-virtual {v1}, Lcom/android/settings/widget/PreviewOptionItemView;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/widget/SelectOptionsView;->mTitleTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, p2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/PreviewOptionItemView;->setItemImage(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f08034c

    .line 100
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/PreviewOptionItemView;->setSelectedImageRes(I)V

    .line 101
    invoke-virtual {v1, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SelectOptionsView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "got different array size between images and names!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 164
    instance-of v0, p1, Lcom/android/settings/widget/PreviewOptionItemView;

    if-eqz v0, :cond_5

    .line 165
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PreviewOptionItemView;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    .line 166
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 167
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SelectOptionsView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/PreviewOptionItemView;

    if-ne v4, p1, :cond_2

    .line 169
    iget-boolean v5, p0, Lcom/android/settings/widget/SelectOptionsView;->mCheckImmediately:Z

    if-eqz v5, :cond_1

    .line 170
    iget v5, p0, Lcom/android/settings/widget/SelectOptionsView;->mOriginIndex:I

    if-ne v3, v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {v4, v1, v5}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(ZZ)V

    :cond_1
    if-eqz v0, :cond_4

    .line 172
    iget-object v4, p0, Lcom/android/settings/widget/SelectOptionsView;->mOptionsSelectedCallback:Lcom/android/settings/widget/SelectOptionsView$OptionsSelectedCallback;

    if-eqz v4, :cond_4

    .line 173
    invoke-interface {v4, v3}, Lcom/android/settings/widget/SelectOptionsView$OptionsSelectedCallback;->onSelectIndex(I)V

    goto :goto_3

    .line 176
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/widget/SelectOptionsView;->mCheckImmediately:Z

    if-eqz v5, :cond_4

    .line 177
    iget v5, p0, Lcom/android/settings/widget/SelectOptionsView;->mOriginIndex:I

    if-ne v3, v5, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    invoke-virtual {v4, v2, v5}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(ZZ)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setCallback(Lcom/android/settings/widget/SelectOptionsView$OptionsSelectedCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SelectOptionsView;->setCallback(Lcom/android/settings/widget/SelectOptionsView$OptionsSelectedCallback;Z)V

    return-void
.end method

.method public setCallback(Lcom/android/settings/widget/SelectOptionsView$OptionsSelectedCallback;Z)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/settings/widget/SelectOptionsView;->mOptionsSelectedCallback:Lcom/android/settings/widget/SelectOptionsView$OptionsSelectedCallback;

    .line 142
    iput-boolean p2, p0, Lcom/android/settings/widget/SelectOptionsView;->mCheckImmediately:Z

    return-void
.end method

.method public setOriginIndex(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/android/settings/widget/SelectOptionsView;->mOriginIndex:I

    .line 122
    invoke-direct {p0}, Lcom/android/settings/widget/SelectOptionsView;->updateViewTitle()V

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SelectOptionsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/PreviewOptionItemView;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    .line 148
    :goto_1
    iget v5, p0, Lcom/android/settings/widget/SelectOptionsView;->mOriginIndex:I

    if-ne v1, v5, :cond_1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_2
    invoke-virtual {v2, v4, v3}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateIcons(I)V
    .locals 3

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SelectOptionsView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SelectOptionsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/PreviewOptionItemView;

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/PreviewOptionItemView;->setItemImage(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
