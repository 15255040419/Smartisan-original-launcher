.class public Lb/a/a/k0$a;
.super Ljava/lang/Object;
.source "ShortcutCursor.java"

# interfaces
.implements Lcom/android/quicksearchbox/ShortcutRefresher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/k0;->d(Lcom/android/quicksearchbox/Suggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/k0;


# direct methods
.method public constructor <init>(Lb/a/a/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/k0$a;->a:Lb/a/a/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/k0$a;->a:Lb/a/a/k0;

    invoke-static {v0}, Lb/a/a/k0;->a(Lb/a/a/k0;)Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/quicksearchbox/ShortcutRepository;->updateShortcut(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    .line 2
    iget-object v0, p0, Lb/a/a/k0$a;->a:Lb/a/a/k0;

    invoke-static {v0}, Lb/a/a/k0;->b(Lb/a/a/k0;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lb/a/a/k0$a$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lb/a/a/k0$a$a;-><init>(Lb/a/a/k0$a;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
