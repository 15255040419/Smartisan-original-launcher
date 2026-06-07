.class public interface abstract Lcom/android/quicksearchbox/ui/IBaseSuggestionView;
.super Ljava/lang/Object;
.source "IBaseSuggestionView.java"


# virtual methods
.method public cutStringForHeavyWork(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public formatText(Ljava/lang/String;Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-interface {p2}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionFormat()Ljava/lang/String;

    move-result-object p2

    const-string v0, "html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->looksLikeHtml(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "\n"

    const-string v0, ""

    .line 5
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public abstract getAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getSuggestionId()Ljava/lang/Long;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public gethightlightT9(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 9

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v2, " "

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    const-string v6, ","

    .line 4
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 6
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    .line 7
    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v5, v7, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v8, 0x21

    .line 10
    invoke-virtual {v0, v7, v6, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public hightlightNormal(Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightNormal(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public hightlightNormal(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)Ljava/lang/CharSequence;
    .locals 3

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    new-instance v0, Lb/a/a/n1/o;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lb/a/a/n1/o;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f05012e

    const v2, 0x7f0500ec

    if-eqz p4, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lb/a/a/n1/o;->a(Ljava/lang/String;I)Lb/a/a/n1/o;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lb/a/a/n1/o;->a(Ljava/lang/String;I)Lb/a/a/n1/o;

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 9
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/n1/o;->a(Ljava/lang/String;IZ)Lb/a/a/n1/o;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/n1/o;->a(Ljava/lang/String;IZ)Lb/a/a/n1/o;

    .line 11
    :goto_0
    invoke-virtual {v0}, Lb/a/a/n1/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method public hightlightT9Text1(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object p1

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "t9_match_range_text_1"

    .line 3
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-interface {p0, p2, p1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->gethightlightT9(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public hightlightT9Text2(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object p1

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "t9_match_range_text_2"

    .line 3
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-interface {p0, p2, p1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->gethightlightT9(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public hightlightText1(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p0, p1, p3}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightT9Text1(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p0, p2, p3, p4}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightNormal(Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public hightlightText2(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p0, p1, p3}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightT9Text2(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p0, p2, p3, p4}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightNormal(Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public isFromHistory(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public looksLikeHtml(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x26

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    return v1
.end method

.method public onRemoveFromHistoryClicked()V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getSuggestionId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionRemoveFromHistoryClicked(J)V

    :cond_0
    return-void
.end method

.method public onSuggestionClicked()V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getSuggestionId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionClicked(Landroid/view/View;J)V

    :cond_0
    return-void
.end method

.method public onSuggestionContactCallClicked()V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getSuggestionId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionContactCallClicked(J)V

    :cond_0
    return-void
.end method

.method public onSuggestionContactSmsClicked()V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getSuggestionId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionContactSmsClicked(J)V

    :cond_0
    return-void
.end method

.method public onSuggestionLongClicked()V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getSuggestionId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionLongClicked(Landroid/view/View;J)V

    :cond_0
    return-void
.end method

.method public onSuggestionMusicClicked()V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getSuggestionId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionMusicClicked(J)V

    :cond_0
    return-void
.end method

.method public onSuggestionQueryRefineClicked()V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getSuggestionId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionQueryRefineClicked(J)V

    :cond_0
    return-void
.end method

.method public onSuggestionQuickContactClicked()V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->getSuggestionId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionQuickContactClicked(J)V

    :cond_0
    return-void
.end method
