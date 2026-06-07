.class public final La/j/a/g$c;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/j/a/g;->b(La/j/a/i;Landroid/view/ViewGroup;Landroid/view/View;La/d/a;La/j/a/g$e;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Z

.field public final synthetic d:La/d/a;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:La/j/a/i;

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLa/d/a;Landroid/view/View;La/j/a/i;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/j/a/g$c;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, La/j/a/g$c;->b:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, La/j/a/g$c;->c:Z

    iput-object p4, p0, La/j/a/g$c;->d:La/d/a;

    iput-object p5, p0, La/j/a/g$c;->e:Landroid/view/View;

    iput-object p6, p0, La/j/a/g$c;->f:La/j/a/i;

    iput-object p7, p0, La/j/a/g$c;->g:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, La/j/a/g$c;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, La/j/a/g$c;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, La/j/a/g$c;->c:Z

    iget-object v3, p0, La/j/a/g$c;->d:La/d/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, La/j/a/g;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLa/d/a;Z)V

    .line 2
    iget-object v0, p0, La/j/a/g$c;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, La/j/a/g$c;->f:La/j/a/i;

    iget-object v2, p0, La/j/a/g$c;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, La/j/a/i;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
