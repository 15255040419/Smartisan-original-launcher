.class public Landroidx/appcompat/widget/AppCompatRadioButton;
.super Landroid/widget/RadioButton;
.source "AppCompatRadioButton.java"

# interfaces
.implements Landroidx/core/widget/TintableCompoundButton;
.implements Landroidx/core/view/TintableBackgroundView;


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private final mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    sget v0, Landroidx/appcompat/R$attr;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance p1, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    .line 71
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 73
    new-instance p1, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 74
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 76
    new-instance p1, Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 77
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 225
    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    .line 226
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 229
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz p0, :cond_1

    .line 230
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 96
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getCompoundPaddingLeft(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 175
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 203
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 121
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 146
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 209
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 217
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 218
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->onSetButtonDrawable()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 160
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 188
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 108
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 133
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
