.class public Li/p/b;
.super Landroid/widget/BaseAdapter;
.source "MenuDialogListAdapter.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/app/Dialog;

.field public c:Li/q/a/a;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View$OnClickListener;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Li/p/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View$OnClickListener;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/p/b;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/p/b;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Li/p/b;->f:Z

    .line 6
    iput-object p1, p0, Li/p/b;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Li/p/b;->d:Ljava/util/List;

    .line 8
    iput-object p3, p0, Li/p/b;->e:Ljava/util/List;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 10
    iput-boolean p4, p0, Li/p/b;->f:Z

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static synthetic a(Li/p/b;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Li/p/b;->b:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic b(Li/p/b;)Li/q/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Li/p/b;->c:Li/q/a/a;

    return-object p0
.end method

.method public static synthetic c(Li/p/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Li/p/b;->e:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .locals 0

    .line 2
    iput-object p1, p0, Li/p/b;->b:Landroid/app/Dialog;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Li/p/b;->c:Li/q/a/a;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Li/p/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Li/p/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Li/p/b;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$layout;->menu_dialog_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    iget-boolean p3, p0, Li/p/b;->f:Z

    if-eqz p3, :cond_1

    if-nez p1, :cond_1

    .line 3
    sget p3, Lsmartisan/widget/R$drawable;->recent_call_item_selector:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object p3, p0, Li/p/b;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$dimen;->recent_call_padding_left:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p3, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 6
    :cond_1
    sget p3, Lsmartisan/widget/R$drawable;->menu_dialog_item_selector:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    :goto_0
    move-object p3, p2

    check-cast p3, Lsmartisan/widget/ShadowButton;

    .line 8
    iget-object v0, p0, Li/p/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v0, Li/p/b$a;

    invoke-direct {v0, p0, p1, p3}, Li/p/b$a;-><init>(Li/p/b;ILsmartisan/widget/ShadowButton;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
