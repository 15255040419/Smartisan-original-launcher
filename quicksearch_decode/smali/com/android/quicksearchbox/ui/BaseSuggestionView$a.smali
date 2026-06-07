.class public Lcom/android/quicksearchbox/ui/BaseSuggestionView$a;
.super Ljava/lang/Object;
.source "BaseSuggestionView.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/BaseSuggestionView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/BaseSuggestionView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$a;->a:Lcom/android/quicksearchbox/ui/BaseSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onForceTouch"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$a;->a:Lcom/android/quicksearchbox/ui/BaseSuggestionView;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->a(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$a;->a:Lcom/android/quicksearchbox/ui/BaseSuggestionView;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->a(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$a;->a:Lcom/android/quicksearchbox/ui/BaseSuggestionView;

    invoke-static {p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->b(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionForceTouch(Landroid/view/View;J)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
