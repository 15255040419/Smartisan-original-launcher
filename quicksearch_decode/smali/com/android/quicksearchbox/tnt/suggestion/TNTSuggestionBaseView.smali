.class public Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TNTSuggestionBaseView.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/IBaseSuggestionView;
.implements Lcom/android/quicksearchbox/ui/SuggestionView;
.implements Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView$a;
    }
.end annotation


# instance fields
.field public q:Lcom/android/quicksearchbox/ui/AsyncIcon;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/ImageView;

.field public v:J

.field public w:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static b(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p0

    .line 3
    instance-of v0, p0, Lb/a/a/h0;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lb/a/a/h0;

    .line 5
    invoke-virtual {p0}, Lb/a/a/h0;->e()Landroid/app/SearchableInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "applications"

    .line 6
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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->s:Landroid/widget/TextView;

    const v1, 0x7f050095

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 11
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->t:Landroid/widget/TextView;

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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

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

.method public final a(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 6
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lb/a/a/h0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lb/a/a/h0;

    .line 9
    invoke-virtual {p1}, Lb/a/a/h0;->e()Landroid/app/SearchableInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "files"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->onSuggestionClicked()V

    return-void
.end method

.method public bindAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->w:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 2
    iput-wide p2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->v:J

    return-void
.end method

.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lb/a/a/l1/h/b;

    invoke-direct {v0, p0}, Lb/a/a/l1/h/b;-><init>(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    new-instance v0, Lb/a/a/l1/h/a;

    invoke-direct {v0, p0}, Lb/a/a/l1/h/a;-><init>(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->cutStringForHeavyWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {p0, v0, p1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->formatText(Ljava/lang/String;Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 8
    :goto_1
    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->b(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->cutStringForHeavyWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->cutStringForHeavyWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-interface {p0, v1, p1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->formatText(Ljava/lang/String;Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 13
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->setText1(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 15
    invoke-interface {p0, p1, p2, v0, v3}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightText1(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->setText1(Ljava/lang/CharSequence;)V

    .line 16
    :goto_3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->d()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 17
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->q:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 18
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->setCalendarColor(Lcom/android/quicksearchbox/Suggestion;)V

    .line 19
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object p2

    if-eqz p2, :cond_6

    const-string v0, "date"

    .line 20
    invoke-interface {p2, v0}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->setDate(Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.TNTSearchActivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 22
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NOTE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 23
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->u:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070203

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->setText2(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 25
    :cond_7
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.smartisanos.notes/.ShowGlobalSearchResultActivity"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->setText2(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public synthetic c(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->onSuggestionLongClicked()V

    const/4 p1, 0x1

    return p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public filterIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p1
.end method

.method public getAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->w:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    return-object v0
.end method

.method public getFallbackIcon(Lcom/android/quicksearchbox/Source;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFallbackIconId(Lcom/android/quicksearchbox/Source;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getSourceIconUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getSourceIconUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSuggestionId()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->v:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f08022e

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->s:Landroid/widget/TextView;

    const v0, 0x7f080101

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->u:Landroid/widget/ImageView;

    .line 4
    new-instance v0, Lcom/android/quicksearchbox/ui/AsyncIcon;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->u:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ui/AsyncIcon;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->q:Lcom/android/quicksearchbox/ui/AsyncIcon;

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->q:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;)V

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->r:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const v0, 0x7f0800ad

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->r:Landroid/widget/TextView;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->r:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setText1(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText2(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->t:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const v0, 0x7f08022f

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->t:Landroid/widget/TextView;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->t:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
