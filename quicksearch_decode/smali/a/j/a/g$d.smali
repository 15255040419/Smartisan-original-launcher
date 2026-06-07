.class public final La/j/a/g$d;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/j/a/g;->a(La/j/a/i;Landroid/view/ViewGroup;Landroid/view/View;La/d/a;La/j/a/g$e;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/j/a/i;

.field public final synthetic b:La/d/a;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:La/j/a/g$e;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroidx/fragment/app/Fragment;

.field public final synthetic h:Landroidx/fragment/app/Fragment;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/util/ArrayList;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(La/j/a/i;La/d/a;Ljava/lang/Object;La/j/a/g$e;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/j/a/g$d;->a:La/j/a/i;

    iput-object p2, p0, La/j/a/g$d;->b:La/d/a;

    iput-object p3, p0, La/j/a/g$d;->c:Ljava/lang/Object;

    iput-object p4, p0, La/j/a/g$d;->d:La/j/a/g$e;

    iput-object p5, p0, La/j/a/g$d;->e:Ljava/util/ArrayList;

    iput-object p6, p0, La/j/a/g$d;->f:Landroid/view/View;

    iput-object p7, p0, La/j/a/g$d;->g:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, La/j/a/g$d;->h:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, La/j/a/g$d;->i:Z

    iput-object p10, p0, La/j/a/g$d;->j:Ljava/util/ArrayList;

    iput-object p11, p0, La/j/a/g$d;->k:Ljava/lang/Object;

    iput-object p12, p0, La/j/a/g$d;->l:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, La/j/a/g$d;->a:La/j/a/i;

    iget-object v1, p0, La/j/a/g$d;->b:La/d/a;

    iget-object v2, p0, La/j/a/g$d;->c:Ljava/lang/Object;

    iget-object v3, p0, La/j/a/g$d;->d:La/j/a/g$e;

    invoke-static {v0, v1, v2, v3}, La/j/a/g;->a(La/j/a/i;La/d/a;Ljava/lang/Object;La/j/a/g$e;)La/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, La/j/a/g$d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, La/d/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, La/j/a/g$d;->e:Ljava/util/ArrayList;

    iget-object v2, p0, La/j/a/g$d;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, La/j/a/g$d;->g:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, La/j/a/g$d;->h:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, La/j/a/g$d;->i:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, La/j/a/g;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLa/d/a;Z)V

    .line 5
    iget-object v1, p0, La/j/a/g$d;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, La/j/a/g$d;->a:La/j/a/i;

    iget-object v3, p0, La/j/a/g$d;->j:Ljava/util/ArrayList;

    iget-object v4, p0, La/j/a/g$d;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, La/j/a/i;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7
    iget-object v1, p0, La/j/a/g$d;->d:La/j/a/g$e;

    iget-object v2, p0, La/j/a/g$d;->k:Ljava/lang/Object;

    iget-boolean v3, p0, La/j/a/g$d;->i:Z

    invoke-static {v0, v1, v2, v3}, La/j/a/g;->a(La/d/a;La/j/a/g$e;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, La/j/a/g$d;->a:La/j/a/i;

    iget-object v2, p0, La/j/a/g$d;->l:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, La/j/a/i;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
