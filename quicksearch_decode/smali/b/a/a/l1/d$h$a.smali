.class public final Lb/a/a/l1/d$h$a;
.super Ljava/lang/Object;
.source "TNTSuggestionsListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l1/d$h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/l1/d$h;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lb/a/a/l1/d$h;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/l1/d$h$a;->a:Lb/a/a/l1/d$h;

    iput-object p2, p0, Lb/a/a/l1/d$h$a;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/l1/d$h$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/l1/d$h$a;->a:Lb/a/a/l1/d$h;

    iget-object v0, v0, Lb/a/a/l1/d$h;->a:Lb/a/a/l1/d;

    invoke-static {v0}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/l1/d$h$a;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/n1/h0;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/l1/d$h$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lb/a/a/l1/d$h$a;->a:Lb/a/a/l1/d$h;

    iget-object v0, v0, Lb/a/a/l1/d$h;->a:Lb/a/a/l1/d;

    invoke-static {v0}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/l1/d$h$a;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/a/a/l1/d$h$a;->a:Lb/a/a/l1/d$h;

    iget-object v2, v2, Lb/a/a/l1/d$h;->a:Lb/a/a/l1/d;

    invoke-static {v2}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/BaseActivity;->c()Li/p/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lb/a/a/n1/h0;->b(Landroid/content/Context;Ljava/util/ArrayList;Li/p/a;)V

    :cond_1
    :goto_0
    return-void
.end method
