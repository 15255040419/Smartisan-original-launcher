.class public Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView$a;
.super Ljava/lang/Object;
.source "SettingSwitchSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView$a;->a:Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView$a;->a:Lcom/android/quicksearchbox/ui/SettingSwitchSuggestionView;

    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->onSuggestionClicked()V

    return-void
.end method
