.class public Landroidx/preference/CheckBoxPreference;
.super Landroidx/preference/TwoStatePreference;
.source "CheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/CheckBoxPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Landroidx/preference/CheckBoxPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 67
    sget v0, Landroidx/preference/R$attr;->checkBoxPreferenceStyle:I

    const v1, 0x101008f

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    new-instance v0, Landroidx/preference/CheckBoxPreference$Listener;

    invoke-direct {v0, p0}, Landroidx/preference/CheckBoxPreference$Listener;-><init>(Landroidx/preference/CheckBoxPreference;)V

    iput-object v0, p0, Landroidx/preference/CheckBoxPreference;->mListener:Landroidx/preference/CheckBoxPreference$Listener;

    .line 51
    sget-object v0, Landroidx/preference/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    sget p2, Landroidx/preference/R$styleable;->CheckBoxPreference_summaryOn:I

    sget p3, Landroidx/preference/R$styleable;->CheckBoxPreference_android_summaryOn:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 57
    sget p2, Landroidx/preference/R$styleable;->CheckBoxPreference_summaryOff:I

    sget p3, Landroidx/preference/R$styleable;->CheckBoxPreference_android_summaryOff:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 60
    sget p2, Landroidx/preference/R$styleable;->CheckBoxPreference_disableDependentsState:I

    sget p3, Landroidx/preference/R$styleable;->CheckBoxPreference_android_disableDependentsState:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/CheckBoxPreference;->setDisableDependentsState(Z)V

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private syncCheckboxView(Landroid/view/View;)V
    .locals 3

    .line 109
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 110
    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 113
    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Landroidx/preference/CheckBoxPreference;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 116
    check-cast p1, Landroid/widget/CompoundButton;

    iget-object p0, p0, Landroidx/preference/CheckBoxPreference;->mListener:Landroidx/preference/CheckBoxPreference$Listener;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Landroidx/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 97
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020001

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Landroidx/preference/CheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    const v0, 0x1020010

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Landroidx/preference/CheckBoxPreference;->syncSummaryView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020001

    .line 79
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/preference/CheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0, p1}, Landroidx/preference/CheckBoxPreference;->syncSummaryView(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->performClick(Landroid/view/View;)V

    .line 91
    invoke-direct {p0, p1}, Landroidx/preference/CheckBoxPreference;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    return-void
.end method
