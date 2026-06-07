.class public final synthetic Lb/a/a/l1/h/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/l1/h/a;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lb/a/a/l1/h/a;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionBaseView;->c(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
