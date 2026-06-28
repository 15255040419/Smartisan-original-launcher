.class public Lcom/android/settingslib/TwoTargetPreference;
.super Landroidx/preference/Preference;
.source "TwoTargetPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/TwoTargetPreference$IconSize;
    }
.end annotation


# static fields
.field public static final ICON_SIZE_DEFAULT:I = 0x0

.field public static final ICON_SIZE_MEDIUM:I = 0x1

.field public static final ICON_SIZE_SMALL:I = 0x2


# instance fields
.field private mIconSize:I

.field private mMediumIconSize:I

.field private mSmallIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 69
    sget v0, Lcom/android/settingslib/R$layout;->preference_two_target:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/TwoTargetPreference;->setLayoutResource(I)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->two_target_pref_small_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/TwoTargetPreference;->mSmallIconSize:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settingslib/R$dimen;->two_target_pref_medium_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/TwoTargetPreference;->mMediumIconSize:I

    .line 74
    invoke-virtual {p0}, Lcom/android/settingslib/TwoTargetPreference;->getSecondTargetResId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->setWidgetLayoutResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 86
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 87
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 88
    iget v1, p0, Lcom/android/settingslib/TwoTargetPreference;->mIconSize:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/settingslib/TwoTargetPreference;->mSmallIconSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/settingslib/TwoTargetPreference;->mMediumIconSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :goto_0
    sget v0, Lcom/android/settingslib/R$id;->two_target_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020018

    .line 98
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lcom/android/settingslib/TwoTargetPreference;->shouldHideSecondTarget()Z

    move-result p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 101
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 104
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/android/settingslib/TwoTargetPreference;->mIconSize:I

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/android/settingslib/TwoTargetPreference;->getSecondTargetResId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
