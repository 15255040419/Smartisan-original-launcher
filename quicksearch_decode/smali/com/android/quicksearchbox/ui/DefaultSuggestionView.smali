.class public Lcom/android/quicksearchbox/ui/DefaultSuggestionView;
.super Lcom/android/quicksearchbox/ui/BaseSuggestionView;
.source "DefaultSuggestionView.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/DefaultSuggestionView$a;
    }
.end annotation


# instance fields
.field public g:Lcom/android/quicksearchbox/ui/AsyncIcon;

.field public h:Lcom/android/quicksearchbox/ui/AsyncIcon;

.field public i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static a(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 6
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p0

    .line 7
    instance-of v0, p0, Lb/a/a/h0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p0, Lb/a/a/h0;

    .line 9
    invoke-virtual {p0}, Lb/a/a/h0;->e()Landroid/app/SearchableInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "applications"

    .line 10
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCalendarColor(Lcom/android/quicksearchbox/Suggestion;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lb/a/a/h0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lb/a/a/h0;

    .line 4
    invoke-virtual {v0}, Lb/a/a/h0;->e()Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.calendar.CalendarRecentSuggestionsProvider"

    .line 5
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object p1

    const-string v0, "is_achieved"

    .line 7
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->a:Landroid/widget/TextView;

    const v1, 0x7f050095

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 11
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 3
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x21

    .line 5
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->cutStringForHeavyWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p0, v0, p1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->formatText(Ljava/lang/String;Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->cutStringForHeavyWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->cutStringForHeavyWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {p0, v1, p1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->formatText(Ljava/lang/String;Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setText2(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p0, p1, p2, v0, v3}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightText1(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    .line 13
    invoke-interface {p0, p1, p2, v1, v3}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightText2(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setText2(Ljava/lang/CharSequence;)V

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 15
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->g:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->h:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 17
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->setCalendarColor(Lcom/android/quicksearchbox/Suggestion;)V

    .line 18
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->i:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    .line 19
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object p1

    const/16 p2, 0x8

    if-eqz p1, :cond_5

    const-string v0, "date"

    .line 20
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 23
    :cond_4
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->i:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->i:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public filterIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p1
.end method

.method public getFallbackIcon(Lcom/android/quicksearchbox/Source;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFallbackIconId(Lcom/android/quicksearchbox/Source;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getSourceIconUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->onFinishInflate()V

    const v0, 0x7f08022e

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->a:Landroid/widget/TextView;

    const v0, 0x7f08022f

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->b:Landroid/widget/TextView;

    const v0, 0x7f0800ad

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->i:Landroid/widget/TextView;

    .line 5
    new-instance v0, Lcom/android/quicksearchbox/ui/AsyncIcon;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->c:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ui/AsyncIcon;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->g:Lcom/android/quicksearchbox/ui/AsyncIcon;

    .line 6
    new-instance v0, Lcom/android/quicksearchbox/ui/AsyncIcon;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->d:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ui/AsyncIcon;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->h:Lcom/android/quicksearchbox/ui/AsyncIcon;

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->g:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;)V

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->h:Lcom/android/quicksearchbox/ui/AsyncIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;)V

    return-void
.end method
