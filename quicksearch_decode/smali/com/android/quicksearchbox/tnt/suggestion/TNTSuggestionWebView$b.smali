.class public Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$b;
.super Lb/a/a/m1/f;
.source "TNTSuggestionWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;

    const-string v1, "suggestion_web"

    const v2, 0x7f0b00b6

    invoke-direct {p0, v1, v0, v2, p1}, Lb/a/a/m1/f;-><init>(Ljava/lang/String;Ljava/lang/Class;ILandroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "INTERNAL_SEARCHABLE_LABEL_WEB"

    .line 5
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$b;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result p1

    return p1
.end method
