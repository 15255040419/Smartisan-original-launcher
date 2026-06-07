.class public Lcom/android/quicksearchbox/ui/FullTextSuggestionView;
.super Lcom/android/quicksearchbox/ui/DefaultSuggestionView;
.source "FullTextSuggestionView.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/FullTextSuggestionView$a;
    }
.end annotation


# instance fields
.field public j:Lcom/android/quicksearchbox/panels/widget/OtherIconView;

.field public k:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

.field public l:Ljava/lang/String;

.field public m:Landroid/view/View;

.field public n:I


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

.method public static a(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.resource://smartisanos/drawable/file_icon_type_image"

    .line 2
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "android.resource://smartisanos/drawable/file_icon_type_audio"

    .line 3
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v0, "android.resource://smartisanos/drawable/file_icon_type_video"

    .line 4
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const-string v0, "android.resource://smartisanos/drawable/file_icon_apk"

    .line 5
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    return v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    if-lt p1, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->l:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->j:Lcom/android/quicksearchbox/panels/widget/OtherIconView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->m:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->c:Landroid/widget/ImageView;

    const p2, 0x7f070180

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.resource://smartisanos/drawable/file_icon_default"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->g:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Z)V

    .line 14
    invoke-static {p2}, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->n:I

    .line 15
    iget p1, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->n:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    .line 16
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->k:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->l:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(ILjava/lang/String;Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;)V

    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->j:Lcom/android/quicksearchbox/panels/widget/OtherIconView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->j:Lcom/android/quicksearchbox/panels/widget/OtherIconView;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-static {p1, v0}, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/quicksearchbox/panels/widget/OtherIconView;->setText(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public hightlightText2(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 5
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 8
    invoke-interface {p0, p1, p3}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightT9Text2(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x1

    .line 10
    invoke-interface {p0, p2, p3, p4, p1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->hightlightNormal(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object p3
.end method

.method public imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->l:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iget p1, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->n:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->m:Landroid/view/View;

    const p2, 0x7f07018f

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->r()Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->k:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    const v0, 0x7f080168

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/OtherIconView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->j:Lcom/android/quicksearchbox/panels/widget/OtherIconView;

    const v0, 0x7f080106

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/FullTextSuggestionView;->m:Landroid/view/View;

    return-void
.end method
