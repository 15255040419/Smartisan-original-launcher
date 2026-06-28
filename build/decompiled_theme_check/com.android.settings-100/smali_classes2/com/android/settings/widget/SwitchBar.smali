.class public Lcom/android/settings/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SwitchBar$SavedState;,
        Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
    }
.end annotation


# static fields
.field private static XML_ATTRIBUTES:[I


# instance fields
.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mLabel:Ljava/lang/String;

.field private mMetricsTag:Ljava/lang/String;

.field private mRestrictedIcon:Landroid/view/View;

.field private mSummary:Ljava/lang/String;

.field private final mSummarySpan:Landroid/text/style/TextAppearanceSpan;

.field private mSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mSwitchChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 76
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/widget/SwitchBar;->XML_ATTRIBUTES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0401c8
        0x7f0401c7
        0x7f0401c6
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 68
    iput-boolean p3, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    const/4 p4, 0x0

    .line 69
    iput-object p4, p0, Lcom/android/settings/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 73
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const v0, 0x7f0d02e5

    invoke-virtual {p4, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    sget-object p4, Lcom/android/settings/widget/SwitchBar;->XML_ATTRIBUTES:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 98
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    float-to-int p4, p4

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    const/4 v0, 0x2

    .line 100
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 101
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0a0909

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    .line 104
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f121456

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 106
    new-instance p1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    const v3, 0x7f13018e

    invoke-direct {p1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    .line 107
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->updateText()V

    .line 108
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 109
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const p1, 0x7f0a0910

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ToggleSwitch;

    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 114
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ToggleSwitch;->setImportantForAccessibility(I)V

    .line 116
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1}, Lcom/android/settings/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchBar;->setBackgroundColor(I)V

    .line 119
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/ToggleSwitch;->setBackgroundColor(I)V

    .line 121
    new-instance p1, Lcom/android/settings/widget/SwitchBar$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/SwitchBar$1;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const p1, 0x7f0a0794

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    .line 130
    invoke-virtual {p0, p0}, Lcom/android/settings/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p1, 0x8

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    return-void
.end method

.method private updateText()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 156
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 158
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 159
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 160
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 257
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 339
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSwitch()Lcom/android/settings/widget/ToggleSwitch;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-object p0
.end method

.method public hide()V
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 223
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 252
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->propagateChecked(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 233
    iget-boolean p1, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/switch_bar|restricted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 235
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    .line 238
    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/switch_bar|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 354
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 359
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 345
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 347
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 348
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 325
    check-cast p1, Lcom/android/settings/widget/SwitchBar$SavedState;

    .line 327
    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean v1, p1, Lcom/android/settings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 330
    iget-boolean v0, p1, Lcom/android/settings/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 331
    iget-boolean v0, p1, Lcom/android/settings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean p1, p1, Lcom/android/settings/widget/SwitchBar$SavedState;->visible:Z

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 315
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 317
    new-instance v1, Lcom/android/settings/widget/SwitchBar$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/widget/SwitchBar$SavedState;->checked:Z

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->isShowing()Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/settings/widget/SwitchBar$SavedState;->visible:Z

    return-object v1
.end method

.method public propagateChecked(Z)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 264
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 165
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 170
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 3

    .line 193
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 195
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 196
    iput-boolean v1, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    .line 197
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 198
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 199
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ToggleSwitch;->setVisibility(I)V

    .line 200
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    .line 203
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/ToggleSwitch;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mRestrictedIcon:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 178
    iget-boolean v0, p0, Lcom/android/settings/widget/SwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    return-void
.end method

.method public setMetricsTag(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mMetricsTag:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mSummary:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->updateText()V

    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f121457

    goto :goto_0

    :cond_0
    const p1, 0x7f121456

    .line 142
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchBar;->updateText()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
