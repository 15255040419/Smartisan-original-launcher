.class public Lb/a/a/b1;
.super Lb/a/a/z;
.source "WebCorpus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/b1$a;
    }
.end annotation


# instance fields
.field public k:Lcom/android/quicksearchbox/Source;

.field public final l:Lcom/android/quicksearchbox/Source;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/SearchSettings;Ljava/util/concurrent/Executor;Lcom/android/quicksearchbox/Source;Lcom/android/quicksearchbox/Source;)V
    .locals 1

    const/4 p3, 0x2

    new-array p3, p3, [Lcom/android/quicksearchbox/Source;

    const/4 v0, 0x0

    aput-object p5, p3, v0

    const/4 v0, 0x1

    aput-object p6, p3, v0

    .line 1
    invoke-direct {p0, p1, p2, p4, p3}, Lb/a/a/z;-><init>(Landroid/content/Context;Lb/a/a/m;Ljava/util/concurrent/Executor;[Lcom/android/quicksearchbox/Source;)V

    .line 2
    iput-object p5, p0, Lb/a/a/b1;->k:Lcom/android/quicksearchbox/Source;

    .line 3
    iput-object p6, p0, Lb/a/a/b1;->l:Lcom/android/quicksearchbox/Source;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {p0}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic a(Lb/a/a/b1;)Lcom/android/quicksearchbox/Source;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/b1;->k:Lcom/android/quicksearchbox/Source;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static c()I
    .locals 1

    const v0, 0x7f07036a

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/ArrayList;I)Lb/a/a/z$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;I)",
            "Lb/a/a/z$a;"
        }
    .end annotation

    .line 12
    new-instance v0, Lb/a/a/b1$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/a/a/b1$a;-><init>(Lb/a/a/b1;Ljava/lang/String;Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    iget-object v0, p0, Lb/a/a/b1;->k:Lcom/android/quicksearchbox/Source;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    iget-object v0, p0, Lb/a/a/b1;->l:Lcom/android/quicksearchbox/Source;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 11
    iget-object p1, p0, Lb/a/a/b1;->l:Lcom/android/quicksearchbox/Source;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p2
.end method

.method public createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {p1}, Lb/a/a/b1;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lb/a/a/b1;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/b1;->k:Lcom/android/quicksearchbox/Source;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/android/quicksearchbox/Source;->createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/b1;->k:Lcom/android/quicksearchbox/Source;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/Source;->createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCorpusIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lb/a/a/b1;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCorpusIconUri()Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lb/a/a/b1;->c()I

    move-result v1

    invoke-static {v0, v1}, Lb/a/a/n1/h0;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/c;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "web"

    return-object v0
.end method

.method public getQueryThreshold()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/c;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100093

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isWebCorpus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public voiceSearchEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
