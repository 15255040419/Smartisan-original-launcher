.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    }
.end annotation


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/e/a/h/f;",
            ">;"
        }
    .end annotation
.end field

.field public d:La/e/a/h/g;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:La/e/b/a;

.field public l:I

.field public m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:I

.field public p:La/e/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 5
    new-instance p1, La/e/a/h/g;

    invoke-direct {p1}, La/e/a/h/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 7
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const p1, 0x7fffffff

    .line 8
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 9
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 p1, 0x7

    .line 11
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La/e/b/a;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 15
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 22
    new-instance p1, La/e/a/h/g;

    invoke-direct {p1}, La/e/a/h/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const p1, 0x7fffffff

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 26
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 p1, 0x7

    .line 28
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La/e/b/a;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 32
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 33
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 34
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 39
    new-instance p1, La/e/a/h/g;

    invoke-direct {p1}, La/e/a/h/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 41
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const p1, 0x7fffffff

    .line 42
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 43
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 p1, 0x7

    .line 45
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La/e/b/a;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 48
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 49
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 50
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 51
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(I)La/e/a/h/f;
    .locals 1

    if-nez p1, :cond_0

    .line 177
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    return-object p1

    .line 178
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 179
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 181
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_1
    if-ne v0, p0, :cond_2

    .line 182
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:La/e/a/h/f;

    :goto_0
    return-object p1
.end method

.method public final a(Landroid/view/View;)La/e/a/h/f;
    .locals 0

    if-ne p1, p0, :cond_0

    .line 184
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:La/e/a/h/f;

    :goto_0
    return-object p1
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 9
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 10
    check-cast p2, Ljava/lang/String;

    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 26

    move-object/from16 v0, p0

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_1

    .line 39
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 40
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v8, 0x2f

    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v4, :cond_0

    add-int/lit8 v8, v8, 0x1

    .line 43
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 44
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v6

    invoke-virtual {v6, v7}, La/e/a/h/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_3

    .line 45
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 46
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)La/e/a/h/f;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v6}, La/e/a/h/f;->E()V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 48
    :cond_3
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    if-eq v5, v4, :cond_5

    move v5, v3

    :goto_3
    if-ge v5, v2, :cond_5

    .line 49
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 50
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    if-ne v7, v8, :cond_4

    instance-of v7, v6, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v7, :cond_4

    .line 51
    check-cast v6, Landroidx/constraintlayout/widget/Constraints;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()La/e/b/a;

    move-result-object v6

    iput-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La/e/b/a;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 52
    :cond_5
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La/e/b/a;

    if-eqz v5, :cond_6

    .line 53
    invoke-virtual {v5, v0}, La/e/b/a;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 54
    :cond_6
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v5}, La/e/a/h/q;->M()V

    .line 55
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    move v6, v3

    :goto_4
    if-ge v6, v5, :cond_7

    .line 56
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 57
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_5
    if-ge v5, v2, :cond_9

    .line 58
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 59
    instance-of v7, v6, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v7, :cond_8

    .line 60
    check-cast v6, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/Placeholder;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    move v5, v3

    :goto_6
    if-ge v5, v2, :cond_2f

    .line 61
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 62
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)La/e/a/h/f;

    move-result-object v13

    if-nez v13, :cond_a

    goto/16 :goto_13

    .line 63
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 64
    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    .line 65
    iget-boolean v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Z

    if-eqz v7, :cond_b

    .line 66
    iput-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:Z

    goto :goto_7

    :cond_b
    if-eqz v1, :cond_c

    .line 67
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v8, "id/"

    .line 69
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v8

    invoke-virtual {v8, v7}, La/e/a/h/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :catch_1
    :cond_c
    :goto_7
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v13, v7}, La/e/a/h/f;->o(I)V

    .line 72
    iget-boolean v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    if-eqz v7, :cond_d

    const/16 v7, 0x8

    .line 73
    invoke-virtual {v13, v7}, La/e/a/h/f;->o(I)V

    .line 74
    :cond_d
    invoke-virtual {v13, v6}, La/e/a/h/f;->a(Ljava/lang/Object;)V

    .line 75
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v6, v13}, La/e/a/h/q;->b(La/e/a/h/f;)V

    .line 76
    iget-boolean v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-eqz v6, :cond_e

    iget-boolean v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Z

    if-nez v6, :cond_f

    .line 77
    :cond_e
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_f
    iget-boolean v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    const/16 v7, 0x11

    if-eqz v6, :cond_13

    .line 79
    check-cast v13, La/e/a/h/i;

    .line 80
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    .line 81
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:I

    .line 82
    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j0:F

    .line 83
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v10, v7, :cond_10

    .line 84
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 85
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    .line 86
    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    :cond_10
    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v9, v7

    if-eqz v7, :cond_11

    .line 87
    invoke-virtual {v13, v9}, La/e/a/h/i;->e(F)V

    goto/16 :goto_13

    :cond_11
    if-eq v6, v4, :cond_12

    .line 88
    invoke-virtual {v13, v6}, La/e/a/h/i;->u(I)V

    goto/16 :goto_13

    :cond_12
    if-eq v8, v4, :cond_2e

    .line 89
    invoke-virtual {v13, v8}, La/e/a/h/i;->v(I)V

    goto/16 :goto_13

    .line 90
    :cond_13
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v6, v4, :cond_14

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v6, v4, :cond_2e

    .line 91
    :cond_14
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:I

    .line 92
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:I

    .line 93
    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 94
    iget v10, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 95
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 96
    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 97
    iget v15, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:F

    .line 98
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v7, :cond_19

    .line 99
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 100
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 101
    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 102
    iget v10, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 103
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 104
    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 105
    iget v15, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    if-ne v3, v4, :cond_16

    if-ne v6, v4, :cond_16

    .line 106
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    if-eq v11, v4, :cond_15

    move/from16 v25, v11

    move v11, v6

    move/from16 v6, v25

    goto :goto_9

    .line 107
    :cond_15
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    if-eq v11, v4, :cond_16

    goto :goto_8

    :cond_16
    move v11, v6

    :goto_8
    move v6, v3

    :goto_9
    if-ne v9, v4, :cond_18

    if-ne v10, v4, :cond_18

    .line 108
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    if-eq v3, v4, :cond_17

    move v12, v7

    move/from16 v16, v8

    goto :goto_a

    .line 109
    :cond_17
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    if-eq v3, v4, :cond_18

    move v12, v7

    move/from16 v16, v8

    move v10, v15

    move v15, v3

    move v3, v9

    goto :goto_b

    :cond_18
    move v12, v7

    move/from16 v16, v8

    move v3, v9

    goto :goto_a

    :cond_19
    move v3, v9

    move/from16 v16, v12

    move v12, v11

    move v11, v8

    :goto_a
    move/from16 v25, v15

    move v15, v10

    move/from16 v10, v25

    .line 110
    :goto_b
    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    if-eq v7, v4, :cond_1a

    .line 111
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 112
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    invoke-virtual {v13, v3, v6, v7}, La/e/a/h/f;->a(La/e/a/h/f;FI)V

    goto/16 :goto_10

    :cond_1a
    if-eq v6, v4, :cond_1c

    .line 113
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 114
    sget-object v6, La/e/a/h/e$d;->b:La/e/a/h/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object v7, v13

    move-object v8, v6

    move/from16 v17, v10

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, La/e/a/h/f;->a(La/e/a/h/e$d;La/e/a/h/f;La/e/a/h/e$d;II)V

    goto :goto_c

    :cond_1b
    move/from16 v17, v10

    goto :goto_c

    :cond_1c
    move/from16 v17, v10

    if-eq v11, v4, :cond_1d

    .line 115
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v9

    if-eqz v9, :cond_1d

    .line 116
    sget-object v8, La/e/a/h/e$d;->b:La/e/a/h/e$d;

    sget-object v10, La/e/a/h/e$d;->d:La/e/a/h/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, La/e/a/h/f;->a(La/e/a/h/e$d;La/e/a/h/f;La/e/a/h/e$d;II)V

    :cond_1d
    :goto_c
    if-eq v3, v4, :cond_1e

    .line 117
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 118
    sget-object v8, La/e/a/h/e$d;->d:La/e/a/h/e$d;

    sget-object v10, La/e/a/h/e$d;->b:La/e/a/h/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object v7, v13

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, La/e/a/h/f;->a(La/e/a/h/e$d;La/e/a/h/f;La/e/a/h/e$d;II)V

    goto :goto_d

    :cond_1e
    if-eq v15, v4, :cond_1f

    .line 119
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 120
    sget-object v10, La/e/a/h/e$d;->d:La/e/a/h/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object v7, v13

    move-object v8, v10

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, La/e/a/h/f;->a(La/e/a/h/e$d;La/e/a/h/f;La/e/a/h/e$d;II)V

    .line 121
    :cond_1f
    :goto_d
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    if-eq v3, v4, :cond_20

    .line 122
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 123
    sget-object v10, La/e/a/h/e$d;->c:La/e/a/h/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    move-object v7, v13

    move-object v8, v10

    invoke-virtual/range {v7 .. v12}, La/e/a/h/f;->a(La/e/a/h/e$d;La/e/a/h/f;La/e/a/h/e$d;II)V

    goto :goto_e

    .line 124
    :cond_20
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    if-eq v3, v4, :cond_21

    .line 125
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 126
    sget-object v8, La/e/a/h/e$d;->c:La/e/a/h/e$d;

    sget-object v10, La/e/a/h/e$d;->e:La/e/a/h/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, La/e/a/h/f;->a(La/e/a/h/e$d;La/e/a/h/f;La/e/a/h/e$d;II)V

    .line 127
    :cond_21
    :goto_e
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    if-eq v3, v4, :cond_22

    .line 128
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 129
    sget-object v8, La/e/a/h/e$d;->e:La/e/a/h/e$d;

    sget-object v10, La/e/a/h/e$d;->c:La/e/a/h/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, La/e/a/h/f;->a(La/e/a/h/e$d;La/e/a/h/f;La/e/a/h/e$d;II)V

    goto :goto_f

    .line 130
    :cond_22
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    if-eq v3, v4, :cond_23

    .line 131
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 132
    sget-object v10, La/e/a/h/e$d;->e:La/e/a/h/e$d;

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    move-object v7, v13

    move-object v8, v10

    invoke-virtual/range {v7 .. v12}, La/e/a/h/f;->a(La/e/a/h/e$d;La/e/a/h/f;La/e/a/h/e$d;II)V

    .line 133
    :cond_23
    :goto_f
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    if-eq v3, v4, :cond_24

    .line 134
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 135
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)La/e/a/h/f;

    move-result-object v6

    if-eqz v6, :cond_24

    if-eqz v3, :cond_24

    .line 136
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v7, :cond_24

    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v7, 0x1

    .line 138
    iput-boolean v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 139
    iput-boolean v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 140
    sget-object v3, La/e/a/h/e$d;->f:La/e/a/h/e$d;

    invoke-virtual {v13, v3}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v18

    .line 141
    sget-object v3, La/e/a/h/e$d;->f:La/e/a/h/e$d;

    .line 142
    invoke-virtual {v6, v3}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, -0x1

    .line 143
    sget-object v22, La/e/a/h/e$c;->b:La/e/a/h/e$c;

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v18 .. v24}, La/e/a/h/e;->a(La/e/a/h/e;IILa/e/a/h/e$c;IZ)Z

    .line 144
    sget-object v3, La/e/a/h/e$d;->c:La/e/a/h/e$d;

    invoke-virtual {v13, v3}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v3

    invoke-virtual {v3}, La/e/a/h/e;->j()V

    .line 145
    sget-object v3, La/e/a/h/e$d;->e:La/e/a/h/e$d;

    invoke-virtual {v13, v3}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v3

    invoke-virtual {v3}, La/e/a/h/e;->j()V

    :cond_24
    const/4 v3, 0x0

    move/from16 v15, v17

    cmpl-float v6, v15, v3

    const/high16 v7, 0x3f000000    # 0.5f

    if-ltz v6, :cond_25

    cmpl-float v6, v15, v7

    if-eqz v6, :cond_25

    .line 146
    invoke-virtual {v13, v15}, La/e/a/h/f;->a(F)V

    .line 147
    :cond_25
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_26

    cmpl-float v3, v6, v7

    if-eqz v3, :cond_26

    .line 148
    invoke-virtual {v13, v6}, La/e/a/h/f;->c(F)V

    :cond_26
    :goto_10
    if-eqz v1, :cond_28

    .line 149
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    if-ne v3, v4, :cond_27

    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    if-eq v3, v4, :cond_28

    .line 150
    :cond_27
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    invoke-virtual {v13, v3, v6}, La/e/a/h/f;->c(II)V

    .line 151
    :cond_28
    iget-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Z

    if-nez v3, :cond_2a

    .line 152
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v3, v4, :cond_29

    .line 153
    sget-object v3, La/e/a/h/f$b;->d:La/e/a/h/f$b;

    invoke-virtual {v13, v3}, La/e/a/h/f;->a(La/e/a/h/f$b;)V

    .line 154
    sget-object v3, La/e/a/h/e$d;->b:La/e/a/h/e$d;

    invoke-virtual {v13, v3}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v3

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v3, La/e/a/h/e;->e:I

    .line 155
    sget-object v3, La/e/a/h/e$d;->d:La/e/a/h/e$d;

    invoke-virtual {v13, v3}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v3

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v3, La/e/a/h/e;->e:I

    goto :goto_11

    .line 156
    :cond_29
    sget-object v3, La/e/a/h/f$b;->c:La/e/a/h/f$b;

    invoke-virtual {v13, v3}, La/e/a/h/f;->a(La/e/a/h/f$b;)V

    const/4 v3, 0x0

    .line 157
    invoke-virtual {v13, v3}, La/e/a/h/f;->p(I)V

    goto :goto_11

    .line 158
    :cond_2a
    sget-object v3, La/e/a/h/f$b;->a:La/e/a/h/f$b;

    invoke-virtual {v13, v3}, La/e/a/h/f;->a(La/e/a/h/f$b;)V

    .line 159
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v13, v3}, La/e/a/h/f;->p(I)V

    .line 160
    :goto_11
    iget-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-nez v3, :cond_2c

    .line 161
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v3, v4, :cond_2b

    .line 162
    sget-object v3, La/e/a/h/f$b;->d:La/e/a/h/f$b;

    invoke-virtual {v13, v3}, La/e/a/h/f;->b(La/e/a/h/f$b;)V

    .line 163
    sget-object v3, La/e/a/h/e$d;->c:La/e/a/h/e$d;

    invoke-virtual {v13, v3}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v3

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v3, La/e/a/h/e;->e:I

    .line 164
    sget-object v3, La/e/a/h/e$d;->e:La/e/a/h/e$d;

    invoke-virtual {v13, v3}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v3

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v6, v3, La/e/a/h/e;->e:I

    const/4 v3, 0x0

    goto :goto_12

    .line 165
    :cond_2b
    sget-object v3, La/e/a/h/f$b;->c:La/e/a/h/f$b;

    invoke-virtual {v13, v3}, La/e/a/h/f;->b(La/e/a/h/f$b;)V

    const/4 v3, 0x0

    .line 166
    invoke-virtual {v13, v3}, La/e/a/h/f;->h(I)V

    goto :goto_12

    :cond_2c
    const/4 v3, 0x0

    .line 167
    sget-object v6, La/e/a/h/f$b;->a:La/e/a/h/f$b;

    invoke-virtual {v13, v6}, La/e/a/h/f;->b(La/e/a/h/f$b;)V

    .line 168
    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v13, v6}, La/e/a/h/f;->h(I)V

    .line 169
    :goto_12
    iget-object v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    if-eqz v6, :cond_2d

    .line 170
    invoke-virtual {v13, v6}, La/e/a/h/f;->b(Ljava/lang/String;)V

    .line 171
    :cond_2d
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    invoke-virtual {v13, v6}, La/e/a/h/f;->b(F)V

    .line 172
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    invoke-virtual {v13, v6}, La/e/a/h/f;->d(F)V

    .line 173
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    invoke-virtual {v13, v6}, La/e/a/h/f;->i(I)V

    .line 174
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    invoke-virtual {v13, v6}, La/e/a/h/f;->n(I)V

    .line 175
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    invoke-virtual {v13, v6, v7, v8, v9}, La/e/a/h/f;->a(IIIF)V

    .line 176
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    invoke-virtual {v13, v6, v7, v8, v9}, La/e/a/h/f;->b(IIIF)V

    :cond_2e
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_2f
    return-void
.end method

.method public final a(II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_12

    .line 189
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 190
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto/16 :goto_a

    .line 191
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 192
    iget-object v10, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:La/e/a/h/f;

    .line 193
    iget-boolean v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-nez v11, :cond_11

    iget-boolean v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-eqz v11, :cond_1

    goto/16 :goto_a

    .line 194
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, La/e/a/h/f;->o(I)V

    .line 195
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 196
    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 197
    iget-boolean v13, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Z

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-nez v13, :cond_4

    iget-boolean v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-nez v6, :cond_4

    if-nez v13, :cond_2

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    if-eq v6, v15, :cond_4

    :cond_2
    iget v6, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v6, v14, :cond_4

    iget-boolean v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-nez v6, :cond_3

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    if-eq v6, v15, :cond_4

    iget v6, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v6, v14, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v15

    :goto_2
    if-eqz v6, :cond_e

    const/4 v6, -0x2

    if-nez v11, :cond_5

    .line 198
    invoke-static {v1, v4, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    move/from16 v16, v15

    goto :goto_4

    :cond_5
    if-ne v11, v14, :cond_6

    .line 199
    invoke-static {v1, v4, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    const/16 v16, 0x0

    goto :goto_4

    :cond_6
    if-ne v11, v6, :cond_7

    move v13, v15

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    .line 200
    :goto_3
    invoke-static {v1, v4, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v21, v16

    move/from16 v16, v13

    move/from16 v13, v21

    :goto_4
    if-nez v12, :cond_8

    .line 201
    invoke-static {v2, v3, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v21, v17

    move/from16 v17, v15

    move/from16 v15, v21

    goto :goto_6

    :cond_8
    if-ne v12, v14, :cond_9

    .line 202
    invoke-static {v2, v3, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v15, v17

    const/16 v17, 0x0

    goto :goto_6

    :cond_9
    if-ne v12, v6, :cond_a

    move/from16 v17, v15

    goto :goto_5

    :cond_a
    const/16 v17, 0x0

    .line 203
    :goto_5
    invoke-static {v2, v3, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v15, v18

    .line 204
    :goto_6
    invoke-virtual {v8, v13, v15}, Landroid/view/View;->measure(II)V

    .line 205
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:La/e/a/e;

    if-eqz v13, :cond_b

    .line 206
    iget-wide v14, v13, La/e/a/e;->a:J

    const-wide/16 v19, 0x1

    add-long v14, v14, v19

    iput-wide v14, v13, La/e/a/e;->a:J

    :cond_b
    if-ne v11, v6, :cond_c

    const/4 v11, 0x1

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    .line 207
    :goto_7
    invoke-virtual {v10, v11}, La/e/a/h/f;->b(Z)V

    if-ne v12, v6, :cond_d

    const/4 v6, 0x1

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    .line 208
    :goto_8
    invoke-virtual {v10, v6}, La/e/a/h/f;->a(Z)V

    .line 209
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 210
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    goto :goto_9

    :cond_e
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 211
    :goto_9
    invoke-virtual {v10, v11}, La/e/a/h/f;->p(I)V

    .line 212
    invoke-virtual {v10, v12}, La/e/a/h/f;->h(I)V

    if-eqz v16, :cond_f

    .line 213
    invoke-virtual {v10, v11}, La/e/a/h/f;->r(I)V

    :cond_f
    if-eqz v17, :cond_10

    .line 214
    invoke-virtual {v10, v12}, La/e/a/h/f;->q(I)V

    .line 215
    :cond_10
    iget-boolean v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v6, :cond_11

    .line 216
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_11

    .line 217
    invoke-virtual {v10, v6}, La/e/a/h/f;->g(I)V

    :cond_11
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 4
    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final a(Landroid/util/AttributeSet;)V
    .locals 7

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v0, p0}, La/e/a/h/f;->a(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La/e/b/a;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    .line 18
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 19
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_0

    .line 20
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto :goto_2

    .line 21
    :cond_0
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_1

    .line 22
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    .line 23
    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_2

    .line 24
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_2

    .line 25
    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_3

    .line 26
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    goto :goto_2

    .line 27
    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_4

    .line 28
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    goto :goto_2

    .line 29
    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_5

    .line 30
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 31
    :try_start_0
    new-instance v5, La/e/b/a;

    invoke-direct {v5}, La/e/b/a;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La/e/b/a;

    .line 32
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La/e/b/a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, La/e/b/a;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 33
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La/e/b/a;

    .line 34
    :goto_1
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p1, v0}, La/e/a/h/g;->v(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 218
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {p1}, La/e/a/h/g;->L()V

    .line 219
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:La/e/a/e;

    if-eqz p1, :cond_0

    .line 220
    iget-wide v0, p1, La/e/a/e;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, La/e/a/e;->c:J

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final b()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()V

    :cond_2
    return-void
.end method

.method public final b(II)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    const-wide/16 v8, 0x1

    const/16 v10, 0x8

    const/4 v12, -0x2

    if-ge v7, v5, :cond_e

    .line 9
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 10
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v10, :cond_0

    goto/16 :goto_6

    .line 11
    :cond_0
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 12
    iget-object v15, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:La/e/a/h/f;

    .line 13
    iget-boolean v6, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-nez v6, :cond_c

    iget-boolean v6, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-eqz v6, :cond_1

    goto/16 :goto_6

    .line 14
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v15, v6}, La/e/a/h/f;->o(I)V

    .line 15
    iget v6, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 16
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v6, :cond_b

    if-nez v13, :cond_2

    goto/16 :goto_5

    :cond_2
    if-ne v6, v12, :cond_3

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    .line 17
    :goto_1
    invoke-static {v1, v4, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    if-ne v13, v12, :cond_4

    const/16 v17, 0x1

    goto :goto_2

    :cond_4
    const/16 v17, 0x0

    .line 18
    :goto_2
    invoke-static {v2, v3, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 19
    invoke-virtual {v14, v11, v12}, Landroid/view/View;->measure(II)V

    .line 20
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:La/e/a/e;

    move v12, v3

    if-eqz v11, :cond_5

    .line 21
    iget-wide v2, v11, La/e/a/e;->a:J

    add-long/2addr v2, v8

    iput-wide v2, v11, La/e/a/e;->a:J

    :cond_5
    const/4 v2, -0x2

    if-ne v6, v2, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    .line 22
    :goto_3
    invoke-virtual {v15, v3}, La/e/a/h/f;->b(Z)V

    if-ne v13, v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    .line 23
    :goto_4
    invoke-virtual {v15, v2}, La/e/a/h/f;->a(Z)V

    .line 24
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 25
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 26
    invoke-virtual {v15, v2}, La/e/a/h/f;->p(I)V

    .line 27
    invoke-virtual {v15, v3}, La/e/a/h/f;->h(I)V

    if-eqz v16, :cond_8

    .line 28
    invoke-virtual {v15, v2}, La/e/a/h/f;->r(I)V

    :cond_8
    if-eqz v17, :cond_9

    .line 29
    invoke-virtual {v15, v3}, La/e/a/h/f;->q(I)V

    .line 30
    :cond_9
    iget-boolean v6, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v6, :cond_a

    .line 31
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_a

    .line 32
    invoke-virtual {v15, v6}, La/e/a/h/f;->g(I)V

    .line 33
    :cond_a
    iget-boolean v6, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Z

    if-eqz v6, :cond_d

    iget-boolean v6, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-eqz v6, :cond_d

    .line 34
    invoke-virtual {v15}, La/e/a/h/f;->n()La/e/a/h/n;

    move-result-object v6

    invoke-virtual {v6, v2}, La/e/a/h/n;->a(I)V

    .line 35
    invoke-virtual {v15}, La/e/a/h/f;->m()La/e/a/h/n;

    move-result-object v2

    invoke-virtual {v2, v3}, La/e/a/h/n;->a(I)V

    goto :goto_7

    :cond_b
    :goto_5
    move v12, v3

    .line 36
    invoke-virtual {v15}, La/e/a/h/f;->n()La/e/a/h/n;

    move-result-object v2

    invoke-virtual {v2}, La/e/a/h/o;->b()V

    .line 37
    invoke-virtual {v15}, La/e/a/h/f;->m()La/e/a/h/n;

    move-result-object v2

    invoke-virtual {v2}, La/e/a/h/o;->b()V

    goto :goto_7

    :cond_c
    :goto_6
    move v12, v3

    :cond_d
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p2

    move v3, v12

    goto/16 :goto_0

    :cond_e
    move v12, v3

    .line 38
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v2}, La/e/a/h/g;->W()V

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v5, :cond_2b

    .line 39
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_f

    goto/16 :goto_18

    .line 41
    :cond_f
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 42
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:La/e/a/h/f;

    .line 43
    iget-boolean v11, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-nez v11, :cond_29

    iget-boolean v11, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-eqz v11, :cond_10

    goto/16 :goto_18

    .line 44
    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v7, v11}, La/e/a/h/f;->o(I)V

    .line 45
    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 46
    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v11, :cond_11

    if-eqz v13, :cond_11

    goto/16 :goto_18

    .line 47
    :cond_11
    sget-object v14, La/e/a/h/e$d;->b:La/e/a/h/e$d;

    invoke-virtual {v7, v14}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v14

    invoke-virtual {v14}, La/e/a/h/e;->d()La/e/a/h/m;

    move-result-object v14

    .line 48
    sget-object v15, La/e/a/h/e$d;->d:La/e/a/h/e$d;

    invoke-virtual {v7, v15}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v15

    invoke-virtual {v15}, La/e/a/h/e;->d()La/e/a/h/m;

    move-result-object v15

    .line 49
    sget-object v10, La/e/a/h/e$d;->b:La/e/a/h/e$d;

    invoke-virtual {v7, v10}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v10

    invoke-virtual {v10}, La/e/a/h/e;->g()La/e/a/h/e;

    move-result-object v10

    if-eqz v10, :cond_12

    sget-object v10, La/e/a/h/e$d;->d:La/e/a/h/e$d;

    .line 50
    invoke-virtual {v7, v10}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v10

    invoke-virtual {v10}, La/e/a/h/e;->g()La/e/a/h/e;

    move-result-object v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    goto :goto_9

    :cond_12
    const/4 v10, 0x0

    .line 51
    :goto_9
    sget-object v8, La/e/a/h/e$d;->c:La/e/a/h/e$d;

    invoke-virtual {v7, v8}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v8

    invoke-virtual {v8}, La/e/a/h/e;->d()La/e/a/h/m;

    move-result-object v8

    .line 52
    sget-object v9, La/e/a/h/e$d;->e:La/e/a/h/e$d;

    invoke-virtual {v7, v9}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v9

    invoke-virtual {v9}, La/e/a/h/e;->d()La/e/a/h/m;

    move-result-object v9

    move/from16 v17, v5

    .line 53
    sget-object v5, La/e/a/h/e$d;->c:La/e/a/h/e$d;

    invoke-virtual {v7, v5}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v5

    invoke-virtual {v5}, La/e/a/h/e;->g()La/e/a/h/e;

    move-result-object v5

    if-eqz v5, :cond_13

    sget-object v5, La/e/a/h/e$d;->e:La/e/a/h/e$d;

    .line 54
    invoke-virtual {v7, v5}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v5

    invoke-virtual {v5}, La/e/a/h/e;->g()La/e/a/h/e;

    move-result-object v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    goto :goto_a

    :cond_13
    const/4 v5, 0x0

    :goto_a
    if-nez v11, :cond_14

    if-nez v13, :cond_14

    if-eqz v10, :cond_14

    if-eqz v5, :cond_14

    move/from16 v5, p2

    move/from16 v20, v2

    const/4 v3, -0x1

    const/4 v10, -0x2

    const-wide/16 v18, 0x1

    goto/16 :goto_19

    :cond_14
    move/from16 v20, v2

    .line 55
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v2}, La/e/a/h/f;->k()La/e/a/h/f$b;

    move-result-object v2

    move-object/from16 v21, v6

    sget-object v6, La/e/a/h/f$b;->b:La/e/a/h/f$b;

    if-eq v2, v6, :cond_15

    const/4 v6, 0x1

    goto :goto_b

    :cond_15
    const/4 v6, 0x0

    .line 56
    :goto_b
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v2}, La/e/a/h/f;->r()La/e/a/h/f$b;

    move-result-object v2

    sget-object v0, La/e/a/h/f$b;->b:La/e/a/h/f$b;

    if-eq v2, v0, :cond_16

    const/4 v0, 0x1

    goto :goto_c

    :cond_16
    const/4 v0, 0x0

    :goto_c
    if-nez v6, :cond_17

    .line 57
    invoke-virtual {v7}, La/e/a/h/f;->n()La/e/a/h/n;

    move-result-object v2

    invoke-virtual {v2}, La/e/a/h/o;->b()V

    :cond_17
    if-nez v0, :cond_18

    .line 58
    invoke-virtual {v7}, La/e/a/h/f;->m()La/e/a/h/n;

    move-result-object v2

    invoke-virtual {v2}, La/e/a/h/o;->b()V

    :cond_18
    if-nez v11, :cond_1a

    if-eqz v6, :cond_19

    .line 59
    invoke-virtual {v7}, La/e/a/h/f;->D()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v10, :cond_19

    invoke-virtual {v14}, La/e/a/h/o;->c()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v15}, La/e/a/h/o;->c()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 60
    invoke-virtual {v15}, La/e/a/h/m;->f()F

    move-result v2

    invoke-virtual {v14}, La/e/a/h/m;->f()F

    move-result v10

    sub-float/2addr v2, v10

    float-to-int v11, v2

    .line 61
    invoke-virtual {v7}, La/e/a/h/f;->n()La/e/a/h/n;

    move-result-object v2

    invoke-virtual {v2, v11}, La/e/a/h/n;->a(I)V

    .line 62
    invoke-static {v1, v4, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    move v14, v2

    goto :goto_d

    :cond_19
    const/4 v2, -0x2

    .line 63
    invoke-static {v1, v4, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    move v14, v6

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_f

    :cond_1a
    const/4 v2, -0x2

    const/4 v10, -0x1

    if-ne v11, v10, :cond_1b

    .line 64
    invoke-static {v1, v4, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v14

    :goto_d
    const/4 v2, 0x0

    goto :goto_f

    :cond_1b
    if-ne v11, v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_e

    :cond_1c
    const/4 v2, 0x0

    .line 65
    :goto_e
    invoke-static {v1, v4, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    move v14, v10

    :goto_f
    if-nez v13, :cond_1e

    if-eqz v0, :cond_1d

    .line 66
    invoke-virtual {v7}, La/e/a/h/f;->C()Z

    move-result v10

    if-eqz v10, :cond_1d

    if-eqz v5, :cond_1d

    invoke-virtual {v8}, La/e/a/h/o;->c()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v9}, La/e/a/h/o;->c()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 67
    invoke-virtual {v9}, La/e/a/h/m;->f()F

    move-result v5

    invoke-virtual {v8}, La/e/a/h/m;->f()F

    move-result v8

    sub-float/2addr v5, v8

    float-to-int v13, v5

    .line 68
    invoke-virtual {v7}, La/e/a/h/f;->m()La/e/a/h/n;

    move-result-object v5

    invoke-virtual {v5, v13}, La/e/a/h/n;->a(I)V

    move/from16 v5, p2

    .line 69
    invoke-static {v5, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    move v9, v0

    move v0, v8

    goto :goto_10

    :cond_1d
    move/from16 v5, p2

    const/4 v8, -0x2

    .line 70
    invoke-static {v5, v12, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_12

    :cond_1e
    move/from16 v5, p2

    const/4 v8, -0x2

    const/4 v9, -0x1

    if-ne v13, v9, :cond_1f

    .line 71
    invoke-static {v5, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    move v9, v0

    move v0, v10

    :goto_10
    const/4 v8, 0x0

    goto :goto_12

    :cond_1f
    if-ne v13, v8, :cond_20

    const/4 v8, 0x1

    goto :goto_11

    :cond_20
    const/4 v8, 0x0

    .line 72
    :goto_11
    invoke-static {v5, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    move/from16 v22, v9

    move v9, v0

    move/from16 v0, v22

    .line 73
    :goto_12
    invoke-virtual {v3, v14, v0}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    .line 74
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:La/e/a/e;

    if-eqz v10, :cond_21

    .line 75
    iget-wide v14, v10, La/e/a/e;->a:J

    const-wide/16 v18, 0x1

    add-long v14, v14, v18

    iput-wide v14, v10, La/e/a/e;->a:J

    goto :goto_13

    :cond_21
    const-wide/16 v18, 0x1

    :goto_13
    const/4 v10, -0x2

    if-ne v11, v10, :cond_22

    const/4 v11, 0x1

    goto :goto_14

    :cond_22
    const/4 v11, 0x0

    .line 76
    :goto_14
    invoke-virtual {v7, v11}, La/e/a/h/f;->b(Z)V

    if-ne v13, v10, :cond_23

    const/4 v11, 0x1

    goto :goto_15

    :cond_23
    const/4 v11, 0x0

    .line 77
    :goto_15
    invoke-virtual {v7, v11}, La/e/a/h/f;->a(Z)V

    .line 78
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 80
    invoke-virtual {v7, v11}, La/e/a/h/f;->p(I)V

    .line 81
    invoke-virtual {v7, v13}, La/e/a/h/f;->h(I)V

    if-eqz v2, :cond_24

    .line 82
    invoke-virtual {v7, v11}, La/e/a/h/f;->r(I)V

    :cond_24
    if-eqz v8, :cond_25

    .line 83
    invoke-virtual {v7, v13}, La/e/a/h/f;->q(I)V

    :cond_25
    if-eqz v6, :cond_26

    .line 84
    invoke-virtual {v7}, La/e/a/h/f;->n()La/e/a/h/n;

    move-result-object v2

    invoke-virtual {v2, v11}, La/e/a/h/n;->a(I)V

    goto :goto_16

    .line 85
    :cond_26
    invoke-virtual {v7}, La/e/a/h/f;->n()La/e/a/h/n;

    move-result-object v2

    invoke-virtual {v2}, La/e/a/h/n;->f()V

    :goto_16
    if-eqz v9, :cond_27

    .line 86
    invoke-virtual {v7}, La/e/a/h/f;->m()La/e/a/h/n;

    move-result-object v2

    invoke-virtual {v2, v13}, La/e/a/h/n;->a(I)V

    goto :goto_17

    .line 87
    :cond_27
    invoke-virtual {v7}, La/e/a/h/f;->m()La/e/a/h/n;

    move-result-object v2

    invoke-virtual {v2}, La/e/a/h/n;->f()V

    :goto_17
    move-object/from16 v6, v21

    .line 88
    iget-boolean v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v2, :cond_28

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    .line 90
    invoke-virtual {v7, v2}, La/e/a/h/f;->g(I)V

    goto :goto_19

    :cond_28
    const/4 v3, -0x1

    goto :goto_19

    :cond_29
    :goto_18
    move/from16 v20, v2

    move/from16 v17, v5

    move-wide/from16 v18, v8

    const/4 v3, -0x1

    const/4 v10, -0x2

    move/from16 v5, p2

    :cond_2a
    :goto_19
    add-int/lit8 v2, v20, 0x1

    move/from16 v5, v17

    move-wide/from16 v8, v18

    const/16 v10, 0x8

    goto/16 :goto_8

    :cond_2b
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_0

    .line 4
    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/Placeholder;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 7
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final c(II)V
    .locals 9

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 10
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 11
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 14
    sget-object v4, La/e/a/h/f$b;->a:La/e/a/h/f$b;

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    if-eq v0, v6, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v5, :cond_0

    move-object p1, v4

    :goto_0
    move v0, v7

    goto :goto_1

    .line 16
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v3

    move v0, p1

    move-object p1, v4

    goto :goto_1

    .line 17
    :cond_1
    sget-object p1, La/e/a/h/f$b;->b:La/e/a/h/f$b;

    goto :goto_0

    .line 18
    :cond_2
    sget-object v0, La/e/a/h/f$b;->b:La/e/a/h/f$b;

    move-object v8, v0

    move v0, p1

    move-object p1, v8

    :goto_1
    if-eq v1, v6, :cond_5

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    :goto_2
    move p2, v7

    goto :goto_3

    .line 19
    :cond_3
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p2, v2

    goto :goto_3

    .line 20
    :cond_4
    sget-object v4, La/e/a/h/f$b;->b:La/e/a/h/f$b;

    goto :goto_2

    .line 21
    :cond_5
    sget-object v4, La/e/a/h/f$b;->b:La/e/a/h/f$b;

    .line 22
    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v1, v7}, La/e/a/h/f;->m(I)V

    .line 23
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v1, v7}, La/e/a/h/f;->l(I)V

    .line 24
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v1, p1}, La/e/a/h/f;->a(La/e/a/h/f$b;)V

    .line 25
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {p1, v0}, La/e/a/h/f;->p(I)V

    .line 26
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {p1, v4}, La/e/a/h/f;->b(La/e/a/h/f$b;)V

    .line 27
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {p1, p2}, La/e/a/h/f;->h(I)V

    .line 28
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, La/e/a/h/f;->m(I)V

    .line 29
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, La/e/a/h/f;->l(I)V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44870000    # 1080.0f

    const/high16 v4, 0x44f00000    # 1920.0f

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_2

    move-object/from16 v7, p0

    .line 6
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 9
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 10
    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 11
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 12
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 13
    aget-object v9, v8, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 14
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 15
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 16
    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v3

    mul-float/2addr v9, v1

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v4

    mul-float/2addr v10, v2

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v3

    mul-float/2addr v11, v1

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v4

    mul-float/2addr v8, v2

    float-to-int v8, v8

    .line 17
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 18
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    .line 19
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    .line 20
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    .line 21
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    .line 22
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    .line 23
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 24
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    .line 25
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v7, p0

    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v0}, La/e/a/h/g;->N()I

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_3

    .line 3
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:La/e/a/h/f;

    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, La/e/a/h/f;->h()I

    move-result v0

    .line 9
    invoke-virtual {v1}, La/e/a/h/f;->i()I

    move-result v2

    .line 10
    invoke-virtual {v1}, La/e/a/h/f;->t()I

    move-result v3

    add-int/2addr v3, v0

    .line 11
    invoke-virtual {v1}, La/e/a/h/f;->j()I

    move-result v1

    add-int/2addr v1, v2

    .line 12
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 13
    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_2

    .line 14
    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 15
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 16
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    .line 19
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 20
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 8
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v9, v7}, La/e/a/h/f;->s(I)V

    .line 9
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v9, v8}, La/e/a/h/f;->t(I)V

    .line 10
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {v9, v10}, La/e/a/h/f;->k(I)V

    .line 11
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {v9, v10}, La/e/a/h/f;->j(I)V

    .line 12
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x11

    if-lt v9, v12, :cond_1

    .line 13
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v12

    if-ne v12, v11, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    invoke-virtual {v9, v12}, La/e/a/h/g;->c(Z)V

    .line 14
    :cond_1
    invoke-virtual/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(II)V

    .line 15
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v9}, La/e/a/h/f;->t()I

    move-result v9

    .line 16
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v12}, La/e/a/h/f;->j()I

    move-result v12

    .line 17
    iget-boolean v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    if-eqz v13, :cond_2

    .line 18
    iput-boolean v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()V

    move v13, v11

    goto :goto_1

    :cond_2
    move v13, v10

    .line 20
    :goto_1
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/16 v15, 0x8

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_3

    move v14, v11

    goto :goto_2

    :cond_3
    move v14, v10

    :goto_2
    if-eqz v14, :cond_4

    .line 21
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v15}, La/e/a/h/g;->U()V

    .line 22
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v15, v9, v12}, La/e/a/h/g;->f(II)V

    .line 23
    invoke-virtual/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(II)V

    goto :goto_3

    .line 24
    :cond_4
    invoke-virtual/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(II)V

    .line 25
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->c()V

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-lez v15, :cond_5

    if-eqz v13, :cond_5

    .line 27
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-static {v13}, La/e/a/h/a;->a(La/e/a/h/g;)V

    .line 28
    :cond_5
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    iget-boolean v15, v13, La/e/a/h/g;->x0:Z

    if-eqz v15, :cond_9

    .line 29
    iget-boolean v15, v13, La/e/a/h/g;->y0:Z

    const/high16 v11, -0x80000000

    if-eqz v15, :cond_7

    if-ne v3, v11, :cond_7

    .line 30
    iget v15, v13, La/e/a/h/g;->A0:I

    if-ge v15, v4, :cond_6

    .line 31
    invoke-virtual {v13, v15}, La/e/a/h/f;->p(I)V

    .line 32
    :cond_6
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    sget-object v15, La/e/a/h/f$b;->a:La/e/a/h/f$b;

    .line 33
    invoke-virtual {v13, v15}, La/e/a/h/f;->a(La/e/a/h/f$b;)V

    .line 34
    :cond_7
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    iget-boolean v15, v13, La/e/a/h/g;->z0:Z

    if-eqz v15, :cond_9

    if-ne v5, v11, :cond_9

    .line 35
    iget v11, v13, La/e/a/h/g;->B0:I

    if-ge v11, v6, :cond_8

    .line 36
    invoke-virtual {v13, v11}, La/e/a/h/f;->h(I)V

    .line 37
    :cond_8
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    sget-object v13, La/e/a/h/f$b;->a:La/e/a/h/f$b;

    .line 38
    invoke-virtual {v11, v13}, La/e/a/h/f;->b(La/e/a/h/f$b;)V

    .line 39
    :cond_9
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/16 v13, 0x20

    and-int/2addr v11, v13

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v11, v13, :cond_d

    .line 40
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v11}, La/e/a/h/f;->t()I

    move-result v11

    .line 41
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v13}, La/e/a/h/f;->j()I

    move-result v13

    .line 42
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    if-eq v10, v11, :cond_a

    if-ne v3, v15, :cond_a

    .line 43
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    iget-object v3, v3, La/e/a/h/g;->w0:Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v3, v10, v11}, La/e/a/h/a;->a(Ljava/util/List;II)V

    .line 44
    :cond_a
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    if-eq v3, v13, :cond_b

    if-ne v5, v15, :cond_b

    .line 45
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    iget-object v3, v3, La/e/a/h/g;->w0:Ljava/util/List;

    const/4 v5, 0x1

    invoke-static {v3, v5, v13}, La/e/a/h/a;->a(Ljava/util/List;II)V

    .line 46
    :cond_b
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    iget-boolean v5, v3, La/e/a/h/g;->y0:Z

    if-eqz v5, :cond_c

    iget v5, v3, La/e/a/h/g;->A0:I

    if-le v5, v4, :cond_c

    .line 47
    iget-object v3, v3, La/e/a/h/g;->w0:Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v3, v10, v4}, La/e/a/h/a;->a(Ljava/util/List;II)V

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    .line 48
    :goto_4
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    iget-boolean v4, v3, La/e/a/h/g;->z0:Z

    if-eqz v4, :cond_d

    iget v4, v3, La/e/a/h/g;->B0:I

    if-le v4, v6, :cond_d

    .line 49
    iget-object v3, v3, La/e/a/h/g;->w0:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v3, v4, v6}, La/e/a/h/a;->a(Ljava/util/List;II)V

    goto :goto_5

    :cond_d
    const/4 v4, 0x1

    .line 50
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_e

    const-string v3, "First pass"

    .line 51
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Ljava/lang/String;)V

    .line 52
    :cond_e
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v8, v5

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v7, v5

    if-lez v3, :cond_2b

    .line 55
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v6}, La/e/a/h/f;->k()La/e/a/h/f$b;

    move-result-object v6

    sget-object v11, La/e/a/h/f$b;->b:La/e/a/h/f$b;

    if-ne v6, v11, :cond_f

    move v6, v4

    goto :goto_6

    :cond_f
    move v6, v10

    .line 56
    :goto_6
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v11}, La/e/a/h/f;->r()La/e/a/h/f$b;

    move-result-object v11

    sget-object v13, La/e/a/h/f$b;->b:La/e/a/h/f$b;

    if-ne v11, v13, :cond_10

    move v11, v4

    goto :goto_7

    :cond_10
    move v11, v10

    .line 57
    :goto_7
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v13}, La/e/a/h/f;->t()I

    move-result v13

    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 58
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v13}, La/e/a/h/f;->j()I

    move-result v13

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v13, v4

    move v5, v10

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    :goto_8
    const-wide/16 v18, 0x1

    if-ge v4, v3, :cond_21

    .line 59
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, La/e/a/h/f;

    .line 60
    invoke-virtual {v15}, La/e/a/h/f;->f()Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v3

    move-object/from16 v3, v20

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_11

    move/from16 v20, v9

    move/from16 v23, v10

    move/from16 v22, v12

    goto/16 :goto_d

    .line 61
    :cond_11
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move/from16 v22, v12

    move-object/from16 v12, v20

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move/from16 v20, v9

    .line 62
    iget-boolean v9, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-nez v9, :cond_20

    iget-boolean v9, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-eqz v9, :cond_12

    goto/16 :goto_c

    .line 63
    :cond_12
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v23, v10

    const/16 v10, 0x8

    if-ne v9, v10, :cond_13

    :goto_9
    goto/16 :goto_d

    :cond_13
    if-eqz v14, :cond_14

    .line 64
    invoke-virtual {v15}, La/e/a/h/f;->n()La/e/a/h/n;

    move-result-object v9

    invoke-virtual {v9}, La/e/a/h/o;->c()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 65
    invoke-virtual {v15}, La/e/a/h/f;->m()La/e/a/h/n;

    move-result-object v9

    invoke-virtual {v9}, La/e/a/h/o;->c()Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_9

    .line 66
    :cond_14
    iget v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_15

    iget-boolean v9, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Z

    if-eqz v9, :cond_15

    .line 67
    iget v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v7, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    goto :goto_a

    .line 68
    :cond_15
    invoke-virtual {v15}, La/e/a/h/f;->t()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 69
    :goto_a
    iget v10, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v10, v1, :cond_16

    iget-boolean v1, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-eqz v1, :cond_16

    .line 70
    iget v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v2, v8, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_b

    .line 71
    :cond_16
    invoke-virtual {v15}, La/e/a/h/f;->j()I

    move-result v1

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 72
    :goto_b
    invoke-virtual {v3, v9, v1}, Landroid/view/View;->measure(II)V

    .line 73
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:La/e/a/e;

    if-eqz v1, :cond_17

    .line 74
    iget-wide v9, v1, La/e/a/e;->b:J

    add-long v9, v9, v18

    iput-wide v9, v1, La/e/a/e;->b:J

    .line 75
    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 76
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 77
    invoke-virtual {v15}, La/e/a/h/f;->t()I

    move-result v10

    if-eq v1, v10, :cond_1a

    .line 78
    invoke-virtual {v15, v1}, La/e/a/h/f;->p(I)V

    if-eqz v14, :cond_18

    .line 79
    invoke-virtual {v15}, La/e/a/h/f;->n()La/e/a/h/n;

    move-result-object v10

    invoke-virtual {v10, v1}, La/e/a/h/n;->a(I)V

    :cond_18
    if-eqz v6, :cond_19

    .line 80
    invoke-virtual {v15}, La/e/a/h/f;->o()I

    move-result v1

    if-le v1, v13, :cond_19

    .line 81
    invoke-virtual {v15}, La/e/a/h/f;->o()I

    move-result v1

    sget-object v10, La/e/a/h/e$d;->d:La/e/a/h/e$d;

    .line 82
    invoke-virtual {v15, v10}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v10

    invoke-virtual {v10}, La/e/a/h/e;->b()I

    move-result v10

    add-int/2addr v1, v10

    .line 83
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_19
    const/16 v23, 0x1

    .line 84
    :cond_1a
    invoke-virtual {v15}, La/e/a/h/f;->j()I

    move-result v1

    if-eq v9, v1, :cond_1d

    .line 85
    invoke-virtual {v15, v9}, La/e/a/h/f;->h(I)V

    if-eqz v14, :cond_1b

    .line 86
    invoke-virtual {v15}, La/e/a/h/f;->m()La/e/a/h/n;

    move-result-object v1

    invoke-virtual {v1, v9}, La/e/a/h/n;->a(I)V

    :cond_1b
    if-eqz v11, :cond_1c

    .line 87
    invoke-virtual {v15}, La/e/a/h/f;->e()I

    move-result v1

    if-le v1, v5, :cond_1c

    .line 88
    invoke-virtual {v15}, La/e/a/h/f;->e()I

    move-result v1

    sget-object v9, La/e/a/h/e$d;->e:La/e/a/h/e$d;

    .line 89
    invoke-virtual {v15, v9}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object v9

    invoke-virtual {v9}, La/e/a/h/e;->b()I

    move-result v9

    add-int/2addr v1, v9

    .line 90
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    :cond_1c
    const/16 v23, 0x1

    .line 91
    :cond_1d
    iget-boolean v1, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v1, :cond_1e

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_1e

    .line 93
    invoke-virtual {v15}, La/e/a/h/f;->d()I

    move-result v9

    if-eq v1, v9, :cond_1e

    .line 94
    invoke-virtual {v15, v1}, La/e/a/h/f;->g(I)V

    const/16 v23, 0x1

    .line 95
    :cond_1e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v1, v9, :cond_1f

    .line 96
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move/from16 v3, v17

    invoke-static {v3, v1}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v17

    goto :goto_e

    :cond_1f
    move/from16 v3, v17

    goto :goto_e

    :cond_20
    :goto_c
    move/from16 v23, v10

    :goto_d
    move/from16 v3, v17

    move/from16 v17, v3

    :goto_e
    move/from16 v10, v23

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p1

    move/from16 v9, v20

    move/from16 v3, v21

    move/from16 v12, v22

    const/high16 v15, 0x40000000    # 2.0f

    goto/16 :goto_8

    :cond_21
    move/from16 v21, v3

    move/from16 v20, v9

    move/from16 v23, v10

    move/from16 v22, v12

    move/from16 v3, v17

    if-eqz v23, :cond_25

    .line 97
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    move/from16 v4, v20

    invoke-virtual {v1, v4}, La/e/a/h/f;->p(I)V

    .line 98
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    move/from16 v4, v22

    invoke-virtual {v1, v4}, La/e/a/h/f;->h(I)V

    if-eqz v14, :cond_22

    .line 99
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v1}, La/e/a/h/g;->W()V

    :cond_22
    const-string v1, "2nd pass"

    .line 100
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Ljava/lang/String;)V

    .line 101
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v1}, La/e/a/h/f;->t()I

    move-result v1

    if-ge v1, v13, :cond_23

    .line 102
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v1, v13}, La/e/a/h/f;->p(I)V

    const/4 v11, 0x1

    goto :goto_f

    :cond_23
    const/4 v11, 0x0

    .line 103
    :goto_f
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v1}, La/e/a/h/f;->j()I

    move-result v1

    if-ge v1, v5, :cond_24

    .line 104
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v1, v5}, La/e/a/h/f;->h(I)V

    const/16 v16, 0x1

    goto :goto_10

    :cond_24
    move/from16 v16, v11

    :goto_10
    if-eqz v16, :cond_25

    const-string v1, "3rd pass"

    .line 105
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Ljava/lang/String;)V

    :cond_25
    move/from16 v1, v21

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v1, :cond_2c

    .line 106
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/e/a/h/f;

    .line 107
    invoke-virtual {v5}, La/e/a/h/f;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v6, :cond_28

    :cond_26
    const/16 v10, 0x8

    :cond_27
    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_12

    .line 108
    :cond_28
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v5}, La/e/a/h/f;->t()I

    move-result v10

    if-ne v9, v10, :cond_29

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v5}, La/e/a/h/f;->j()I

    move-result v10

    if-eq v9, v10, :cond_26

    .line 109
    :cond_29
    invoke-virtual {v5}, La/e/a/h/f;->s()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_27

    .line 110
    invoke-virtual {v5}, La/e/a/h/f;->t()I

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 111
    invoke-virtual {v5}, La/e/a/h/f;->j()I

    move-result v5

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 112
    invoke-virtual {v6, v9, v5}, Landroid/view/View;->measure(II)V

    .line 113
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:La/e/a/e;

    if-eqz v5, :cond_2a

    .line 114
    iget-wide v12, v5, La/e/a/e;->b:J

    add-long v12, v12, v18

    iput-wide v12, v5, La/e/a/e;->b:J

    :cond_2a
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_2b
    const/4 v3, 0x0

    .line 115
    :cond_2c
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v1}, La/e/a/h/f;->t()I

    move-result v1

    add-int/2addr v1, v7

    .line 116
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v4}, La/e/a/h/f;->j()I

    move-result v4

    add-int/2addr v4, v8

    .line 117
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2f

    move/from16 v5, p1

    .line 118
    invoke-static {v1, v5, v3}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v3, v3, 0x10

    .line 119
    invoke-static {v4, v2, v3}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v1, v3

    and-int/2addr v2, v3

    .line 120
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 121
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 122
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v3}, La/e/a/h/g;->R()Z

    move-result v3

    const/high16 v4, 0x1000000

    if-eqz v3, :cond_2d

    or-int/2addr v1, v4

    .line 123
    :cond_2d
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v3}, La/e/a/h/g;->P()Z

    move-result v3

    if-eqz v3, :cond_2e

    or-int/2addr v2, v4

    .line 124
    :cond_2e
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 125
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 126
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    goto :goto_13

    .line 127
    :cond_2f
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 128
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 129
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    :goto_13
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)La/e/a/h/f;

    move-result-object v0

    .line 4
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    instance-of v0, v0, La/e/a/h/i;

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 7
    new-instance v1, La/e/a/h/i;

    invoke-direct {v1}, La/e/a/h/i;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:La/e/a/h/f;

    .line 8
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 9
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:La/e/a/h/f;

    check-cast v1, La/e/a/h/i;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    invoke-virtual {v1, v0}, La/e/a/h/i;->w(I)V

    .line 10
    :cond_1
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_2

    .line 11
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 12
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->a()V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 14
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)La/e/a/h/f;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v1, v0}, La/e/a/h/q;->c(La/e/a/h/f;)V

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    return-void
.end method

.method public setConstraintSet(La/e/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:La/e/b/a;

    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:La/e/a/h/g;

    invoke-virtual {v0, p1}, La/e/a/h/g;->v(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
