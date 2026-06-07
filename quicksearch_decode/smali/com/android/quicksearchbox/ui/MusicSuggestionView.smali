.class public Lcom/android/quicksearchbox/ui/MusicSuggestionView;
.super Lcom/android/quicksearchbox/ui/BaseSuggestionView;
.source "MusicSuggestionView.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/MusicSuggestionView$a;
    }
.end annotation


# instance fields
.field public g:Landroid/widget/ImageView;

.field public h:Lcom/android/quicksearchbox/ui/AsyncIcon;


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


# virtual methods
.method public final a(Lcom/android/quicksearchbox/Suggestion;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a(Landroid/content/Context;)Lcom/android/quicksearchbox/music/MusicServiceManager;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/android/quicksearchbox/music/MusicServiceManager;->b()Lb/a/a/h1/b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lb/a/a/h1/b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lb/a/a/h1/b;->c()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 8
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePlayState, audioId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", musicState="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lb/a/a/h1/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/MusicSuggestionView;->g:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    const v0, 0x7f0700b0

    goto :goto_1

    :cond_2
    const v0, 0x7f0700b3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 12
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/MusicSuggestionView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v2, :cond_3

    const v1, 0x7f1000e1

    goto :goto_2

    :cond_3
    const v1, 0x7f1000e2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->cutStringForHeavyWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightText1(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/MusicSuggestionView;->h:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/MusicSuggestionView;->a(Lcom/android/quicksearchbox/Suggestion;)V

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

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080172

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->onSuggestionMusicClicked()V

    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->onFinishInflate()V

    .line 2
    new-instance v0, Lcom/android/quicksearchbox/ui/AsyncIcon;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->c:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ui/AsyncIcon;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/MusicSuggestionView;->h:Lcom/android/quicksearchbox/ui/AsyncIcon;

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/MusicSuggestionView;->h:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;)V

    const v0, 0x7f080172

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/MusicSuggestionView;->g:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/MusicSuggestionView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
