.class public Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;
.super Ljava/lang/Object;
.source "TNTSuggestionFileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "option/file_copy"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-static {v0}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->a(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-static {v1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->b(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/a/l1/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ","

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-static {v0}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->a(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-static {v2}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->b(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lb/a/a/l1/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VIDEO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "video/*"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 8
    new-instance v1, Landroid/content/ClipDescription;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "URI"

    invoke-direct {v1, p1, v2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 10
    new-instance p1, Landroid/content/ClipData;

    new-instance v2, Landroid/content/ClipData$Item;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    .line 11
    invoke-static {v4}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->a(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p1, v1, v2}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 13
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000b2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/g0;->a(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$a;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
