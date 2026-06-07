.class public Lb/a/a/r0;
.super Ljava/lang/Object;
.source "SourceShortcutRefresher.java"

# interfaces
.implements Lcom/android/quicksearchbox/ShortcutRefresher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/r0$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/r0;->b:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/r0;->c:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lb/a/a/r0;->a:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-void
.end method

.method public static c(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lb/a/a/r0;->c:Ljava/util/Set;

    .line 2
    invoke-static {p1, p2}, Lb/a/a/r0;->c(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/r0;->c:Ljava/util/Set;

    invoke-static {p1, p2}, Lb/a/a/r0;->c(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public markShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lb/a/a/r0;->c(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lb/a/a/r0;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p2, p0, Lb/a/a/r0;->c:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public refresh(Lcom/android/quicksearchbox/Suggestion;Lcom/android/quicksearchbox/ShortcutRefresher$Listener;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p0, v2, v3}, Lb/a/a/r0;->shouldRefresh(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lb/a/a/r0;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v2, v3}, Lb/a/a/r0;->b(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance p1, Lb/a/a/r0$a;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lb/a/a/r0$a;-><init>(Lb/a/a/r0;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Ljava/lang/String;Lcom/android/quicksearchbox/ShortcutRefresher$Listener;)V

    .line 7
    iget-object p2, p0, Lb/a/a/r0;->a:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    invoke-interface {p2, p1}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->execute(Lcom/android/quicksearchbox/util/NamedTask;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "source"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/r0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public shouldRefresh(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lb/a/a/r0;->b:Ljava/util/Set;

    .line 2
    invoke-static {p1, p2}, Lb/a/a/r0;->c(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
