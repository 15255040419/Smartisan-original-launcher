.class public Lcom/android/settings/widget/SettingItemButton;
.super Lsmartisanos/widget/ListContentItemText;
.source "SettingItemButton.java"


# instance fields
.field private mMiddleTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingItemButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingItemButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lsmartisanos/widget/ListContentItemText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget-object v0, Lcom/android/settings/R$styleable;->SettingItemButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 37
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingItemButton;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SettingItemButton;->setArrowVisible(Z)V

    return-void
.end method


# virtual methods
.method protected getDefaultMidLayout()I
    .locals 0

    const p0, 0x7f0d018f

    return p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemButton;->mMiddleTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method protected initMidWidget()V
    .locals 1

    const v0, 0x7f0a0649

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingItemButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemButton;->mMiddleTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setText(I)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingItemButton;->setTitle(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingItemButton;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemButton;->mMiddleTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
