.class public final Lb/a/a/l1/c$c;
.super Ljava/lang/Object;
.source "TNTSuggestionsListAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l1/c;->b(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/l1/c;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lb/a/a/l1/c;I)V
    .locals 0

    iput-object p1, p0, Lb/a/a/l1/c$c;->a:Lb/a/a/l1/c;

    iput p2, p0, Lb/a/a/l1/c$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/l1/c$c;->a:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->t(Lb/a/a/l1/c;)V

    .line 2
    iget-object v0, p0, Lb/a/a/l1/c$c;->a:Lb/a/a/l1/c;

    iget v1, p0, Lb/a/a/l1/c$c;->b:I

    invoke-static {v0, v1}, Lb/a/a/l1/c;->c(Lb/a/a/l1/c;I)V

    .line 3
    iget-object v0, p0, Lb/a/a/l1/c$c;->a:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->h(Lb/a/a/l1/c;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iget v1, p0, Lb/a/a/l1/c$c;->b:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/l1/c$c;->a:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->h(Lb/a/a/l1/c;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iget v1, p0, Lb/a/a/l1/c$c;->b:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_1
    return-void
.end method
