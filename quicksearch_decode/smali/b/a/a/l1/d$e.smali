.class public final Lb/a/a/l1/d$e;
.super Ljava/lang/Object;
.source "TNTSuggestionsListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l1/d;->a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/l1/d;

.field public final synthetic b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lb/a/a/l1/d;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/l1/d$e;->a:Lb/a/a/l1/d;

    iput-object p2, p0, Lb/a/a/l1/d$e;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/l1/d$e;->a:Lb/a/a/l1/d;

    invoke-static {v0}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/a/a/l1/d$e;->b:Landroid/net/Uri;

    .line 3
    invoke-static {v0, v1}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lb/a/a/l1/d$e;->a:Lb/a/a/l1/d;

    const-string v2, "numbers"

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lb/a/a/l1/d$e;->a:Lb/a/a/l1/d;

    invoke-static {v1}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object v1

    new-instance v2, Lb/a/a/l1/d$e$a;

    invoke-direct {v2, p0, v0}, Lb/a/a/l1/d$e$a;-><init>(Lb/a/a/l1/d$e;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
