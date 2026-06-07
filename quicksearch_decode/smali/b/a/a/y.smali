.class public Lb/a/a/y;
.super Ljava/lang/Object;
.source "LockedPkgSuggestionFilter.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionFilter;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://applications/applications/"

    .line 2
    iput-object v0, p0, Lb/a/a/y;->b:Ljava/lang/String;

    const-string v0, "com.smartisanos.launcher"

    .line 3
    iput-object v0, p0, Lb/a/a/y;->c:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lb/a/a/y;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public accept(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object v4, p0, Lb/a/a/y;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lb/a/a/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/a/n1/f0;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/y;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    return v2

    .line 10
    :cond_1
    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "INTERNAL_SEARCHABLE_LABEL_FILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Lb/a/a/y;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result p1

    return p1

    .line 12
    :cond_2
    iget-object v0, p0, Lb/a/a/y;->a:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lb/a/a/n1/c0;->a(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lb/a/a/y;->a:Landroid/content/Context;

    .line 14
    invoke-static {v0, p1, v1}, Lb/a/a/n1/c0;->a(ZLcom/android/quicksearchbox/Suggestion;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v3
.end method
