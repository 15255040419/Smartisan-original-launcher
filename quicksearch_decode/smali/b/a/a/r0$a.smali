.class public Lb/a/a/r0$a;
.super Ljava/lang/Object;
.source "SourceShortcutRefresher.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/android/quicksearchbox/Source;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/android/quicksearchbox/ShortcutRefresher$Listener;

.field public final synthetic e:Lb/a/a/r0;


# direct methods
.method public constructor <init>(Lb/a/a/r0;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Ljava/lang/String;Lcom/android/quicksearchbox/ShortcutRefresher$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/r0$a;->e:Lb/a/a/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb/a/a/r0$a;->a:Lcom/android/quicksearchbox/Source;

    .line 3
    iput-object p3, p0, Lb/a/a/r0$a;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lb/a/a/r0$a;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lb/a/a/r0$a;->d:Lcom/android/quicksearchbox/ShortcutRefresher$Listener;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/r0$a;->a:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/r0$a;->a:Lcom/android/quicksearchbox/Source;

    iget-object v1, p0, Lb/a/a/r0$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lb/a/a/r0$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/Source;->refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    const/4 v0, 0x0

    .line 4
    :cond_0
    iget-object v1, p0, Lb/a/a/r0$a;->e:Lb/a/a/r0;

    iget-object v2, p0, Lb/a/a/r0$a;->a:Lcom/android/quicksearchbox/Source;

    iget-object v3, p0, Lb/a/a/r0$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lb/a/a/r0;->markShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lb/a/a/r0$a;->d:Lcom/android/quicksearchbox/ShortcutRefresher$Listener;

    iget-object v2, p0, Lb/a/a/r0$a;->a:Lcom/android/quicksearchbox/Source;

    iget-object v3, p0, Lb/a/a/r0$a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/quicksearchbox/ShortcutRefresher$Listener;->onShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    return-void
.end method
