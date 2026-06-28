.class public Lcom/android/settings/widget/SettingItemCheckEx;
.super Landroid/widget/RelativeLayout;
.source "SettingItemCheckEx.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingItemCheckEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingItemCheckEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0285

    const/4 p3, 0x1

    .line 34
    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0961

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/widget/SettingItemCheckEx;->mTitleView:Landroid/widget/TextView;

    const p2, 0x7f0a08c8

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/widget/SettingItemCheckEx;->mSummaryView:Landroid/widget/TextView;

    const p2, 0x7f0a019c

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/widget/SettingItemCheckEx;->mCheckbox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckEx;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    return p0
.end method

.method public setCheckboxEnabled(Z)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckEx;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckEx;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckEx;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingItemCheckEx;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckEx;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckEx;->mSummaryView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingItemCheckEx;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckEx;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
