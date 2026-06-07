.class public abstract Lcom/android/quicksearchbox/ui/BaseSuggestionView;
.super Landroid/widget/RelativeLayout;
.source "BaseSuggestionView.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/IBaseSuggestionView;
.implements Lcom/android/quicksearchbox/ui/SuggestionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/BaseSuggestionView$c;,
        Lcom/android/quicksearchbox/ui/BaseSuggestionView$b;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:J

.field public f:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
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
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->f:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->e:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    :try_start_0
    const-string v0, "smartisanos.api.ViewSmt"

    const-string v1, "getInstance"

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v2}, Lb/a/a/n1/y;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "smartisanos.api.ViewSmt$OnForceTouchListener"

    .line 3
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-instance v6, Lcom/android/quicksearchbox/ui/BaseSuggestionView$a;

    invoke-direct {v6, p0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView$a;-><init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)V

    invoke-static {v2, v4, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "setOnForceTouchListener"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    .line 5
    const-class v8, Landroid/view/View;

    aput-object v8, v7, v5

    aput-object v1, v7, v3

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v5

    aput-object v2, v1, v3

    invoke-static {v0, v4, v7, v1}, Lb/a/a/n1/y;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setOnForceTouchListenerByProxy exception ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSuggestionView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
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
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->f:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 2
    iput-wide p2, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->e:J

    return-void
.end method

.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/android/quicksearchbox/ui/BaseSuggestionView$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView$b;-><init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;Lcom/android/quicksearchbox/ui/BaseSuggestionView$a;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    new-instance p1, Lcom/android/quicksearchbox/ui/BaseSuggestionView$c;

    invoke-direct {p1, p0, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView$c;-><init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;Lcom/android/quicksearchbox/ui/BaseSuggestionView$a;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->a()V

    return-void
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
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->f:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    return-object v0
.end method

.method public getSuggestionId()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

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

    const v0, 0x7f080101

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->c:Landroid/widget/ImageView;

    const v0, 0x7f080102

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->d:Landroid/widget/ImageView;

    return-void
.end method

.method public setText1(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText2(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->b:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
