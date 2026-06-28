.class public Lcom/android/settings/widget/SettingItemCheckSimpleText;
.super Lsmartisanos/widget/ListContentItemCustom;
.source "SettingItemCheckSimpleText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SettingItemCheckSimpleText$IcArrowClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingItemCheckSimpleText"


# instance fields
.field private mData:Landroid/content/Intent;

.field private mIcArrow:Landroid/widget/ImageView;

.field private mIcArrowListener:Lcom/android/settings/widget/SettingItemCheckSimpleText$IcArrowClickListener;

.field private mIcChecked:Landroid/widget/ImageView;

.field private mItemTitle:Landroid/widget/TextView;

.field private mShowIconArrow:Z

.field private mSubTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lsmartisanos/widget/ListContentItemCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-object v0, Lcom/android/settings/R$styleable;->SettingItemCheckSimpleText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 56
    iget-object p3, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p2, 0x1

    .line 58
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mShowIconArrow:Z

    .line 59
    iget-boolean p2, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mShowIconArrow:Z

    if-eqz p2, :cond_1

    .line 60
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/SettingItemCheckSimpleText;)Lcom/android/settings/widget/SettingItemCheckSimpleText$IcArrowClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrowListener:Lcom/android/settings/widget/SettingItemCheckSimpleText$IcArrowClickListener;

    return-object p0
.end method


# virtual methods
.method public enableIcArrow(Z)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public getData()Landroid/content/Intent;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mData:Landroid/content/Intent;

    return-object p0
.end method

.method protected getDefaultLeftLayout()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getDefaultMidLayout()I
    .locals 0

    const p0, 0x7f0d0286

    return p0
.end method

.method public getIcArrow()Landroid/view/View;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected initMidWidget()V
    .locals 2

    const v0, 0x7f0a04a4

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcChecked:Landroid/widget/ImageView;

    const v0, 0x7f0a057f

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mItemTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0496

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrow:Landroid/widget/ImageView;

    const v0, 0x7f0a0564

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mSubTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0565

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mSummary:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/widget/SettingItemCheckSimpleText$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/SettingItemCheckSimpleText$1;-><init>(Lcom/android/settings/widget/SettingItemCheckSimpleText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcChecked:Landroid/widget/ImageView;

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

    .line 165
    invoke-super {p0, p1}, Lsmartisanos/widget/ListContentItemCustom;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->setSelected(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcChecked:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setData(Landroid/content/Intent;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mData:Landroid/content/Intent;

    .line 143
    iget-object p1, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrow:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrow:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcChecked:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 160
    invoke-super {p0, p1}, Lsmartisanos/widget/ListContentItemCustom;->setEnabled(Z)V

    return-void
.end method

.method public setIconArrowListener(Lcom/android/settings/widget/SettingItemCheckSimpleText$IcArrowClickListener;)V
    .locals 1

    .line 133
    iput-object p1, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrowListener:Lcom/android/settings/widget/SettingItemCheckSimpleText$IcArrowClickListener;

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIconArrowListener: l:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingItemCheckSimpleText"

    invoke-static {p1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSubTitle(I)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mSubTitle:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mSubTitle:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTitleText(I)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showIconArrow(Z)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText;->mIcArrowListener:Lcom/android/settings/widget/SettingItemCheckSimpleText$IcArrowClickListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->setIconArrowListener(Lcom/android/settings/widget/SettingItemCheckSimpleText$IcArrowClickListener;)V

    :cond_1
    return-void
.end method
