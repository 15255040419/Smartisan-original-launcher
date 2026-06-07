.class public Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;
.super Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;
.source "TNTSuggestionSettingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public x:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->A:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->A:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->A:Z

    return-void
.end method

.method private setDrawableFromSetting(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.settings"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->u:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070204

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setTextSummary(Lsmartisanos/app/settings/search/SearchResultItem;)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    .line 1
    iget-object v3, p1, Lsmartisanos/app/settings/search/SearchResultItem;->mPath1:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2
    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->y:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 3
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->y:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->y:Landroid/widget/TextView;

    if-nez v3, :cond_2

    const v3, 0x7f08022f

    .line 6
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->y:Landroid/widget/TextView;

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->y:Landroid/widget/TextView;

    iget-object v4, p1, Lsmartisanos/app/settings/search/SearchResultItem;->mPath1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    move v3, v2

    .line 9
    :goto_1
    iget-object v4, p1, Lsmartisanos/app/settings/search/SearchResultItem;->mPath2:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->z:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    .line 12
    :goto_2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->z:Landroid/widget/TextView;

    if-nez v0, :cond_6

    const v0, 0x7f08020e

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->z:Landroid/widget/TextView;

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->z:Landroid/widget/TextView;

    iget-object p1, p1, Lsmartisanos/app/settings/search/SearchResultItem;->mPath2:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->y:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    move p1, v1

    goto :goto_3

    :cond_8
    move p1, v2

    .line 19
    :goto_3
    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, p1

    goto :goto_4

    :cond_9
    move v3, v2

    .line 20
    :goto_4
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->z:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 21
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    move v3, v1

    goto :goto_5

    :cond_a
    move v3, v2

    .line 22
    :goto_5
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    .line 23
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_c
    return-void
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lb/a/a/n1/c0;->a(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {p1, p2, v0}, Lb/a/a/n1/c0;->a(Lcom/android/quicksearchbox/Suggestion;ZLandroid/content/Context;)Lsmartisanos/app/settings/search/SearchResultItem;

    move-result-object p1

    const p2, 0x7f080233

    .line 4
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->B:Landroid/widget/TextView;

    const p2, 0x7f080240

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->C:Landroid/widget/TextView;

    const/16 p2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 6
    iget-object v2, p1, Lsmartisanos/app/settings/search/SearchResultItem;->mIsSwitch:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iput-boolean v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->A:Z

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->x:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080090

    .line 10
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/settings/search/RealSwitchEx;

    invoke-direct {v0, v2, v3}, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/settings/search/RealSwitchEx;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->x:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->x:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    invoke-static {v0, v2, p1}, Lsmartisanos/app/settings/search/EnablerFactory;->createSettingsEnabler(Landroid/content/Context;Lsmartisanos/widget/SwitchEx;Lsmartisanos/app/settings/search/SearchResultItem;)Lsmartisanos/app/settings/search/SettingsEnabler;

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->x:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    new-instance v1, Lb/a/a/l1/h/d;

    invoke-direct {v1, p0}, Lb/a/a/l1/h/d;-><init>(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;)V

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 17
    :cond_1
    iput-boolean v1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->A:Z

    .line 18
    iget-object v2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->x:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v2, p2}, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;->setVisibility(I)V

    .line 20
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 22
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->B:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->C:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->setTextSummary(Lsmartisanos/app/settings/search/SearchResultItem;)V

    if-eqz p1, :cond_3

    .line 25
    iget p1, p1, Lsmartisanos/app/settings/search/SearchResultItem;->mIconId:I

    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->setDrawableFromSetting(I)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->u:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070204

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public callOnClick()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->A:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->x:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    invoke-virtual {v0}, Lsmartisanos/widget/SwitchEx;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->x:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    invoke-virtual {v0}, Lsmartisanos/widget/SwitchEx;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;->setChecked(Z)V

    :cond_0
    return v1

    .line 4
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->callOnClick()Z

    move-result v0

    return v0
.end method

.method public synthetic d(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->onSuggestionClicked()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 2
    iget-boolean p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->A:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->B:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionSettingView;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
