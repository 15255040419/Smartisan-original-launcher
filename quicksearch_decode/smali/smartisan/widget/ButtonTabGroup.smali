.class public Lsmartisan/widget/ButtonTabGroup;
.super Landroid/widget/LinearLayout;
.source "ButtonTabGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/ShadowButton;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/view/View;

.field public e:Z

.field public f:Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;

.field public g:I

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ButtonTabGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ButtonTabGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x80000000

    .line 4
    iput p2, p0, Lsmartisan/widget/ButtonTabGroup;->g:I

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p2, 0x11

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->button_tab_group_each_gap:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/ButtonTabGroup;->a:Ljava/util/List;

    return-void
.end method

.method private getListButtonsTextOrCreate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->c:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 16
    iget v0, p0, Lsmartisan/widget/ButtonTabGroup;->i:I

    if-ge p1, v0, :cond_0

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final a(IZ)V
    .locals 4

    .line 7
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 8
    iget-object p2, p0, Lsmartisan/widget/ButtonTabGroup;->f:Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 9
    :goto_0
    iget-object v3, p0, Lsmartisan/widget/ButtonTabGroup;->d:Landroid/view/View;

    if-ne v0, v3, :cond_3

    .line 10
    iget-boolean v1, p0, Lsmartisan/widget/ButtonTabGroup;->h:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lsmartisan/widget/ButtonTabGroup;->e:Z

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Lsmartisan/widget/ButtonTabGroup;->f:Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;

    invoke-interface {p2, v0, p1}, Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;->onButtonGroupItemClick(Landroid/view/View;I)V

    :cond_2
    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 12
    invoke-virtual {v3, v2}, Landroid/view/View;->setActivated(Z)V

    :cond_4
    if-eqz p2, :cond_5

    .line 13
    iget-object p2, p0, Lsmartisan/widget/ButtonTabGroup;->f:Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;

    invoke-interface {p2, v0, p1}, Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;->onButtonGroupItemClick(Landroid/view/View;I)V

    .line 14
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 15
    iput-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->d:Landroid/view/View;

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/ButtonTabGroup;->getListButtonsTextOrCreate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 3
    iget v0, p0, Lsmartisan/widget/ButtonTabGroup;->i:I

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5
    :cond_0
    iput p1, p0, Lsmartisan/widget/ButtonTabGroup;->i:I

    .line 6
    iput-boolean p2, p0, Lsmartisan/widget/ButtonTabGroup;->h:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/ButtonTabGroup;->a(IZ)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/ButtonTabGroup;->g:I

    if-lez v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 2
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setAlwaysKeepClickListen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/ButtonTabGroup;->e:Z

    return-void
.end method

.method public setButtonActivated(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/ButtonTabGroup;->a(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/ButtonTabGroup;->a(IZ)V

    return-void
.end method

.method public setButtonDrawable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->b:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/ButtonTabGroup;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setButtonGroupData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/ButtonTabGroup;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public setOnButtonGroupItemClickListener(Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ButtonTabGroup;->f:Lsmartisan/widget/ButtonTabGroup$OnButtonGroupItemClickListener;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/ButtonTabGroup;->g:I

    return-void
.end method
