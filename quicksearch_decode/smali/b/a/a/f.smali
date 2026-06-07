.class public abstract Lb/a/a/f;
.super Ljava/lang/Object;
.source "AbstractSource.java"

# interfaces
.implements Lcom/android/quicksearchbox/Source;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public c:Lcom/android/quicksearchbox/IconLoader;

.field public final d:Lcom/android/quicksearchbox/util/NamedTaskExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/f;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lb/a/a/f;->b:Landroid/os/Handler;

    .line 4
    iput-object p3, p0, Lb/a/a/f;->d:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-void
.end method

.method public static a(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "QSB.AbstractSource"

    const-string p1, "Tried to create search intent with no target activity"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x4000000

    .line 6
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "user_query"

    .line 7
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "query"

    .line 8
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string p0, "app_data"

    .line 9
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 10
    iget-object v0, p0, Lb/a/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->D()Lb/a/a/a1;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lb/a/a/a1;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/android/quicksearchbox/IconLoader;
    .locals 6

    .line 1
    iget-object v0, p0, Lb/a/a/f;->c:Lcom/android/quicksearchbox/IconLoader;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/a/a/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lb/a/a/l;

    new-instance v2, Lb/a/a/a0;

    iget-object v3, p0, Lb/a/a/f;->a:Landroid/content/Context;

    iget-object v4, p0, Lb/a/a/f;->b:Landroid/os/Handler;

    iget-object v5, p0, Lb/a/a/f;->d:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    invoke-direct {v2, v3, v0, v4, v5}, Lb/a/a/a0;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    invoke-direct {v1, v2}, Lb/a/a/l;-><init>(Lcom/android/quicksearchbox/IconLoader;)V

    iput-object v1, p0, Lb/a/a/f;->c:Lcom/android/quicksearchbox/IconLoader;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/f;->c:Lcom/android/quicksearchbox/IconLoader;

    return-object v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/Source;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lb/a/a/f;->a(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lcom/android/quicksearchbox/Source;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/quicksearchbox/Source;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getRoot()Lcom/android/quicksearchbox/Source;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/quicksearchbox/util/NowOrLater<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/a/a/f;->b()Lcom/android/quicksearchbox/IconLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/IconLoader;->getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;

    move-result-object p1

    return-object p1
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/f;->b()Lcom/android/quicksearchbox/IconLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/IconLoader;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getMaxDisplay()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getRoot()Lcom/android/quicksearchbox/Source;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVersionCodeCompatible(I)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/Source;->getVersionCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
