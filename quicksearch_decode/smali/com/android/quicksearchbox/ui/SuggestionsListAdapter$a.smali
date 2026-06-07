.class public Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;
.super Landroid/widget/BaseAdapter;
.source "SuggestionsListAdapter.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapter;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$SuggestionsListener;

.field public final synthetic b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0}, Lb/a/a/m1/g;->getSuggestions()Lb/a/a/y0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0}, Lb/a/a/m1/g;->getSuggestions()Lb/a/a/y0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/y0;->i()I

    move-result v0

    return v0
.end method

.method public a(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$SuggestionsListener;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->a:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$SuggestionsListener;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0}, Lb/a/a/m1/g;->a()I

    move-result v0

    return v0
.end method

.method public getHeaderId(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0}, Lb/a/a/m1/g;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v1

    const-wide/16 v2, -0x1

    if-lt p1, v1, :cond_0

    return-wide v2

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 4
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->getCount()I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    .line 5
    invoke-virtual {p1}, Lb/a/a/m1/g;->getSuggestions()Lb/a/a/y0;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/y0;->i()I

    move-result p1

    if-eq p1, v1, :cond_1

    return-wide v2

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    instance-of p1, v0, Lb/a/a/w;

    if-eqz p1, :cond_4

    .line 8
    move-object p1, v0

    check-cast p1, Lb/a/a/w;

    .line 9
    invoke-virtual {p1}, Lb/a/a/w;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {p1}, Lb/a/a/w;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide v2

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-static {v0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->a(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 12
    :cond_4
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p1

    if-nez p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_1

    .line 13
    :cond_5
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    :goto_1
    return-wide v0

    .line 14
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->a(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000c3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    goto :goto_0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->a()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne v1, p3, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-static {p2}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->a(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b004b

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;

    invoke-direct {p3, p0, p2}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;-><init>(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;Landroid/view/View;)V

    .line 4
    iget-object v0, p3, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0}, Lb/a/a/m1/g;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 9
    iget-object p1, p3, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    instance-of p1, v0, Lb/a/a/w;

    if-eqz p1, :cond_4

    .line 12
    move-object p1, v0

    check-cast p1, Lb/a/a/w;

    .line 13
    invoke-virtual {p1}, Lb/a/a/w;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object p3, p3, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-static {v0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->a(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p3, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;->a:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/quicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object p1, p3, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;->a:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/quicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17
    :cond_5
    :goto_1
    iget-object p1, p3, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-static {v0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->a(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p3, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;->b:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0, p1}, Lb/a/a/m1/g;->a(I)Lb/a/a/w0;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0}, Lb/a/a/m1/g;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lb/a/a/m1/g;->a(Lcom/android/quicksearchbox/SuggestionCursor;I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    .line 2
    invoke-virtual {v0}, Lb/a/a/m1/g;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    int-to-long v3, p1

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 3
    invoke-virtual/range {v0 .. v6}, Lb/a/a/m1/g;->a(Lcom/android/quicksearchbox/SuggestionCursor;IJLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->b:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0}, Lb/a/a/m1/g;->b()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080093

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->a:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$SuggestionsListener;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$SuggestionsListener;->onClearHistory()V

    :cond_1
    :goto_0
    return-void
.end method
