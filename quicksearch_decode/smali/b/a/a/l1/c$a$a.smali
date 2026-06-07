.class public final Lb/a/a/l1/c$a$a;
.super Ljava/lang/Object;
.source "TNTSuggestionsListAdapter.kt"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l1/c$a;->a(Lb/a/a/l1/c$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/l1/c$a;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lb/a/a/l1/c$a;I)V
    .locals 0

    iput-object p1, p0, Lb/a/a/l1/c$a$a;->a:Lb/a/a/l1/c$a;

    iput p2, p0, Lb/a/a/l1/c$a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "motionEvent"

    invoke-static {p2, p1}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lb/a/a/l1/c$a$a;->a:Lb/a/a/l1/c$a;

    iget-object p1, p1, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->i(Lb/a/a/l1/c;)I

    move-result p1

    iget p2, p0, Lb/a/a/l1/c$a$a;->b:I

    if-eq p1, p2, :cond_1

    .line 3
    iget-object p1, p0, Lb/a/a/l1/c$a$a;->a:Lb/a/a/l1/c$a;

    iget-object p1, p1, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->t(Lb/a/a/l1/c;)V

    .line 4
    iget-object p1, p0, Lb/a/a/l1/c$a$a;->a:Lb/a/a/l1/c$a;

    iget-object p1, p1, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    iget p2, p0, Lb/a/a/l1/c$a$a;->b:I

    invoke-static {p1, p2}, Lb/a/a/l1/c;->c(Lb/a/a/l1/c;I)V

    .line 5
    iget-object p1, p0, Lb/a/a/l1/c$a$a;->a:Lb/a/a/l1/c$a;

    iget-object p1, p1, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->h(Lb/a/a/l1/c;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    iget p2, p0, Lb/a/a/l1/c$a$a;->b:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
