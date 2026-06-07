.class public Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;
.super Lcom/android/quicksearchbox/ui/DefaultSuggestionView;
.source "SettingSwitchSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView$b;
    }
.end annotation


# instance fields
.field public j:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lb/a/a/n1/c0;->a(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {p1, p2, v0}, Lb/a/a/n1/c0;->a(Lcom/android/quicksearchbox/Suggestion;ZLandroid/content/Context;)Lsmartisanos/app/settings/search/SearchResultItem;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->j:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    invoke-static {p2, v0, p1}, Lsmartisanos/app/settings/search/EnablerFactory;->createSettingsEnabler(Landroid/content/Context;Lsmartisanos/widget/SwitchEx;Lsmartisanos/app/settings/search/SearchResultItem;)Lsmartisanos/app/settings/search/SettingsEnabler;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p1, Lsmartisanos/app/settings/search/SearchResultItem;->mIsSwitch:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setLongClickable(Z)V

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->j:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    new-instance v1, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView$a;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView$a;-><init>(Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;)V

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SwitchEx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLongClickable(Z)V

    :goto_0
    const/16 v0, 0x8

    if-eqz p1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->k:Landroid/widget/TextView;

    iget-object v2, p1, Lsmartisanos/app/settings/search/SearchResultItem;->mPath1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->l:Landroid/widget/TextView;

    iget-object v2, p1, Lsmartisanos/app/settings/search/SearchResultItem;->mPath2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->k:Landroid/widget/TextView;

    iget-object v2, p1, Lsmartisanos/app/settings/search/SearchResultItem;->mPath1:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->l:Landroid/widget/TextView;

    iget-object p1, p1, Lsmartisanos/app/settings/search/SearchResultItem;->mPath2:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p2, v0

    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->onFinishInflate()V

    .line 2
    new-instance v0, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080090

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/settings/search/RealSwitchEx;

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/settings/search/RealSwitchEx;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->j:Lcom/android/quicksearchbox/settings/search/SwitchExDelegate;

    const v0, 0x7f08020f

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->k:Landroid/widget/TextView;

    const v0, 0x7f080210

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->l:Landroid/widget/TextView;

    return-void
.end method
