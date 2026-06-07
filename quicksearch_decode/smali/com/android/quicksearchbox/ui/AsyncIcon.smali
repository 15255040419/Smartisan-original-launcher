.class public Lcom/android/quicksearchbox/ui/AsyncIcon;
.super Ljava/lang/Object;
.source "AsyncIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->a:Landroid/widget/ImageView;

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/AsyncIcon;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->b:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 21
    iput-object p2, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->b:Ljava/lang/String;

    .line 22
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->d:Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;

    if-eqz p2, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->a:Landroid/widget/ImageView;

    invoke-interface {p2, p1}, Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;->filterIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-nez p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->a:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V
    .locals 2

    if-nez p1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->d:Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p3}, Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;->getFallbackIconId(Lcom/android/quicksearchbox/Source;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->c:Ljava/lang/String;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->d:Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;

    if-eqz v0, :cond_2

    .line 19
    invoke-interface {v0, p3}, Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;->getFallbackIcon(Lcom/android/quicksearchbox/Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 20
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "QSB.AsyncIcon"

    const-string p2, "source == null"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 4
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/Source;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iput-object v0, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->c:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_5

    .line 8
    :cond_2
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/Source;->getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;

    move-result-object p2

    .line 9
    invoke-interface {p2}, Lcom/android/quicksearchbox/util/NowOrLater;->haveNow()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 10
    invoke-interface {p2}, Lcom/android/quicksearchbox/util/NowOrLater;->getNow()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a()V

    .line 12
    new-instance p3, Lcom/android/quicksearchbox/ui/AsyncIcon$a;

    invoke-direct {p3, p0, v0, p1}, Lcom/android/quicksearchbox/ui/AsyncIcon$a;-><init>(Lcom/android/quicksearchbox/ui/AsyncIcon;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V

    invoke-interface {p2, p3}, Lcom/android/quicksearchbox/util/NowOrLater;->getLater(Lcom/android/quicksearchbox/util/Consumer;)V

    goto :goto_1

    .line 13
    :cond_4
    iput-object v0, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v0, v0, p1}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/AsyncIcon;->d:Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;

    return-void
.end method
