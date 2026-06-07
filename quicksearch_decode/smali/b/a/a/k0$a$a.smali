.class public Lb/a/a/k0$a$a;
.super Ljava/lang/Object;
.source "ShortcutCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/k0$a;->onShortcutRefreshed(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/Source;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/android/quicksearchbox/SuggestionCursor;

.field public final synthetic d:Lb/a/a/k0$a;


# direct methods
.method public constructor <init>(Lb/a/a/k0$a;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/k0$a$a;->d:Lb/a/a/k0$a;

    iput-object p2, p0, Lb/a/a/k0$a$a;->a:Lcom/android/quicksearchbox/Source;

    iput-object p3, p0, Lb/a/a/k0$a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lb/a/a/k0$a$a;->c:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/k0$a$a;->d:Lb/a/a/k0$a;

    iget-object v0, v0, Lb/a/a/k0$a;->a:Lb/a/a/k0;

    iget-object v1, p0, Lb/a/a/k0$a$a;->a:Lcom/android/quicksearchbox/Source;

    iget-object v2, p0, Lb/a/a/k0$a$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lb/a/a/k0$a$a;->c:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-static {v0, v1, v2, v3}, Lb/a/a/k0;->a(Lb/a/a/k0;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    return-void
.end method
