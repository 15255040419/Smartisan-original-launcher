.class public Lcom/android/settings/widget/OptionCardView;
.super Landroid/widget/LinearLayout;
.source "OptionCardView.java"


# instance fields
.field private mCheckView:Landroid/widget/ImageView;

.field private mIconView:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/OptionCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/OptionCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0095

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a094b

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/OptionCardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/OptionCardView;->mIconView:Landroid/widget/ImageView;

    const p1, 0x7f0a094c

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/OptionCardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/OptionCardView;->mTitleView:Landroid/widget/TextView;

    const p1, 0x7f0a07fa

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/OptionCardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/OptionCardView;->mCheckView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/widget/OptionCardView;->mCheckView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/widget/OptionCardView;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    return-void
.end method

.method public setCheck(Z)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/widget/OptionCardView;->mCheckView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/android/settings/widget/OptionCardView;->mIconView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 68
    iget-object p0, p0, Lcom/android/settings/widget/OptionCardView;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/widget/OptionCardView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/widget/OptionCardView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/widget/OptionCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/OptionCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
