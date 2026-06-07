.class public La/a/e/h/f$a;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/e/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:La/a/e/h/f;


# direct methods
.method public constructor <init>(La/a/e/h/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/e/h/f$a;->b:La/a/e/h/f;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, La/a/e/h/f$a;->a:I

    .line 3
    invoke-virtual {p0}, La/a/e/h/f$a;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, La/a/e/h/f$a;->b:La/a/e/h/f;

    iget-object v0, v0, La/a/e/h/f;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->f()La/a/e/h/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, La/a/e/h/f$a;->b:La/a/e/h/f;

    iget-object v1, v1, La/a/e/h/f;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->j()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/a/e/h/i;

    if-ne v4, v0, :cond_0

    .line 5
    iput v3, p0, La/a/e/h/f$a;->a:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 6
    iput v0, p0, La/a/e/h/f$a;->a:I

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, La/a/e/h/f$a;->b:La/a/e/h/f;

    iget-object v0, v0, La/a/e/h/f;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, La/a/e/h/f$a;->b:La/a/e/h/f;

    iget v1, v1, La/a/e/h/f;->e:I

    sub-int/2addr v0, v1

    .line 3
    iget v1, p0, La/a/e/h/f$a;->a:I

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItem(I)La/a/e/h/i;
    .locals 2

    .line 2
    iget-object v0, p0, La/a/e/h/f$a;->b:La/a/e/h/f;

    iget-object v0, v0, La/a/e/h/f;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, La/a/e/h/f$a;->b:La/a/e/h/f;

    iget v1, v1, La/a/e/h/f;->e:I

    add-int/2addr p1, v1

    .line 4
    iget v1, p0, La/a/e/h/f$a;->a:I

    if-ltz v1, :cond_0

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/a/e/h/i;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/a/e/h/f$a;->getItem(I)La/a/e/h/i;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, La/a/e/h/f$a;->b:La/a/e/h/f;

    iget-object v1, p2, La/a/e/h/f;->b:Landroid/view/LayoutInflater;

    iget p2, p2, La/a/e/h/f;->g:I

    invoke-virtual {v1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    move-object p3, p2

    check-cast p3, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 3
    invoke-virtual {p0, p1}, La/a/e/h/f$a;->getItem(I)La/a/e/h/i;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(La/a/e/h/i;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, La/a/e/h/f$a;->a()V

    .line 2
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
