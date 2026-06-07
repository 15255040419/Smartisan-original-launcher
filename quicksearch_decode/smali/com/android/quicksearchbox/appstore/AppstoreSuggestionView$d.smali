.class public Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$d;
.super Lb/a/a/m1/f;
.source "AppstoreSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    const-string v1, "appstore"

    const v2, 0x7f0b0020

    invoke-direct {p0, v1, v0, v2, p1}, Lb/a/a/m1/f;-><init>(Ljava/lang/String;Ljava/lang/Class;ILandroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/app/SearchableInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.smartisanos.appstore.SuggestionsProvider"

    .line 2
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/quicksearchbox/tnt/InternalSearchableSource;)Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "INTERNAL_SEARCHABLE_LABEL_APPSTORE"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lb/a/a/h0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lb/a/a/h0;

    .line 4
    invoke-virtual {p1}, Lb/a/a/h0;->e()Landroid/app/SearchableInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$d;->a(Landroid/app/SearchableInfo;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/android/quicksearchbox/tnt/InternalSearchableSource;

    .line 7
    invoke-static {p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$d;->a(Lcom/android/quicksearchbox/tnt/InternalSearchableSource;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
