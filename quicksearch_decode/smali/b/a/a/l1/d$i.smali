.class public final Lb/a/a/l1/d$i;
.super Ljava/lang/Object;
.source "TNTSuggestionsListener.kt"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l1/d;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer<",
        "Ljava/util/List<",
        "+",
        "Lcom/android/quicksearchbox/Corpus;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/l1/d;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lb/a/a/l1/d;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lb/a/a/l1/d$i;->a:Lb/a/a/l1/d;

    iput-object p2, p0, Lb/a/a/l1/d$i;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lb/a/a/l1/d$i;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/l1/d$i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/l1/d$i;->a:Lb/a/a/l1/d;

    invoke-static {v0}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object v0

    const-string v1, "QsbApplication.get(activity).config"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lb/a/a/l1/d$i;->a:Lb/a/a/l1/d;

    iget-object v0, p0, Lb/a/a/l1/d$i;->b:Ljava/lang/String;

    invoke-static {p1}, Lb/a/a/l1/d;->d(Lb/a/a/l1/d;)Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v2, p0, Lb/a/a/l1/d$i;->c:Z

    invoke-static {p1, v0, v1, v2}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/l1/d$i;->a:Lb/a/a/l1/d;

    iget-object v1, p0, Lb/a/a/l1/d$i;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lb/a/a/l1/d$i;->c:Z

    invoke-static {v0, v1, p1, v2}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;Ljava/lang/String;Ljava/util/List;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lb/a/a/l1/d$i;->a(Ljava/util/List;)Z

    move-result p1

    return p1
.end method
