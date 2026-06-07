.class public Lcom/android/quicksearchbox/ui/ContactSuggestionView;
.super Lcom/android/quicksearchbox/ui/BaseSuggestionView;
.source "ContactSuggestionView.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/ContactSuggestionView$a;
    }
.end annotation


# instance fields
.field public g:Lcom/android/quicksearchbox/ui/AsyncIcon;


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
.method public final a(Landroid/widget/ImageView;Lcom/android/quicksearchbox/Suggestion;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p2}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/Source;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.resource://com.android.providers.contacts/drawable/android:ic_contact_picture"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->g:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-virtual {p2, v0, p1}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_3
    :goto_1
    invoke-interface {p2}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lsmartisanos/util/NameAvatarController;->getInstances(Landroid/content/Context;)Lsmartisanos/util/NameAvatarController;

    move-result-object p2

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p2, v0, p1, v2}, Lsmartisanos/util/NameAvatarController;->getAvatarBitmapFromName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->g:Lcom/android/quicksearchbox/ui/AsyncIcon;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0, v1}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000dc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->cutStringForHeavyWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 9
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightText1(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1}, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->a(Landroid/widget/ImageView;Lcom/android/quicksearchbox/Suggestion;)V

    const p1, 0x7f08006e

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080066

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public filterIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lsmartisanos/util/NameAvatarController;->drawableToBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lsmartisanos/util/NameAvatarController;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFallbackIcon(Lcom/android/quicksearchbox/Source;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFallbackIconId(Lcom/android/quicksearchbox/Source;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080066

    if-eq p1, v0, :cond_1

    const v0, 0x7f08006e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->onSuggestionContactSmsClicked()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p0}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->onSuggestionContactCallClicked()V

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

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->g:Lcom/android/quicksearchbox/ui/AsyncIcon;

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->g:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;)V

    return-void
.end method
