.class public Lcom/android/quicksearchbox/ui/BaseSuggestionView$b;
.super Ljava/lang/Object;
.source "BaseSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/BaseSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/BaseSuggestionView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$b;->a:Lcom/android/quicksearchbox/ui/BaseSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;Lcom/android/quicksearchbox/ui/BaseSuggestionView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView$b;-><init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$b;->a:Lcom/android/quicksearchbox/ui/BaseSuggestionView;

    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->onSuggestionClicked()V

    return-void
.end method
