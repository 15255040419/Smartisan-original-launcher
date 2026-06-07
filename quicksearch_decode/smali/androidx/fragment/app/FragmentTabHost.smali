.class public Landroidx/fragment/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTabHost$SavedState;,
        Landroidx/fragment/app/FragmentTabHost$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentTabHost$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;

.field public c:Landroidx/fragment/app/FragmentManager;

.field public d:I

.field public e:Landroid/widget/TabHost$OnTabChangeListener;

.field public f:Landroidx/fragment/app/FragmentTabHost$a;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;La/j/a/f;)La/j/a/f;
    .locals 3

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->a(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$a;

    move-result-object p1

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->f:Landroidx/fragment/app/FragmentTabHost$a;

    if-eq v0, p1, :cond_4

    if-nez p2, :cond_0

    .line 7
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->a()La/j/a/f;

    move-result-object p2

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->f:Landroidx/fragment/app/FragmentTabHost$a;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v0, Landroidx/fragment/app/FragmentTabHost$a;->d:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p2, v0}, La/j/a/f;->b(Landroidx/fragment/app/Fragment;)La/j/a/f;

    :cond_1
    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p1, Landroidx/fragment/app/FragmentTabHost$a;->d:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->b:Landroid/content/Context;

    iget-object v1, p1, Landroidx/fragment/app/FragmentTabHost$a;->b:Ljava/lang/Class;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroidx/fragment/app/FragmentTabHost$a;->c:Landroid/os/Bundle;

    .line 14
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/FragmentTabHost$a;->d:Landroidx/fragment/app/Fragment;

    .line 15
    iget v0, p0, Landroidx/fragment/app/FragmentTabHost;->d:I

    iget-object v1, p1, Landroidx/fragment/app/FragmentTabHost$a;->d:Landroidx/fragment/app/Fragment;

    iget-object v2, p1, Landroidx/fragment/app/FragmentTabHost$a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, La/j/a/f;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)La/j/a/f;

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p2, v0}, La/j/a/f;->a(Landroidx/fragment/app/Fragment;)La/j/a/f;

    .line 17
    :cond_3
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->f:Landroidx/fragment/app/FragmentTabHost$a;

    :cond_4
    return-object p2
.end method

.method public final a(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$a;
    .locals 4

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 19
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTabHost$a;

    .line 20
    iget-object v3, v2, Landroidx/fragment/app/FragmentTabHost$a;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100f3

    aput v2, v0, v1

    .line 1
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroidx/fragment/app/FragmentTabHost;->d:I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 4
    iget-object v4, p0, Landroidx/fragment/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTabHost$a;

    .line 5
    iget-object v5, p0, Landroidx/fragment/app/FragmentTabHost;->c:Landroidx/fragment/app/FragmentManager;

    iget-object v6, v4, Landroidx/fragment/app/FragmentTabHost$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Landroidx/fragment/app/FragmentTabHost$a;->d:Landroidx/fragment/app/Fragment;

    .line 6
    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$a;->d:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->A()Z

    move-result v5

    if-nez v5, :cond_2

    .line 7
    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    iput-object v4, p0, Landroidx/fragment/app/FragmentTabHost;->f:Landroidx/fragment/app/FragmentTabHost$a;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 9
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->a()La/j/a/f;

    move-result-object v2

    .line 10
    :cond_1
    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost$a;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v4}, La/j/a/f;->b(Landroidx/fragment/app/Fragment;)La/j/a/f;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentTabHost;->g:Z

    .line 12
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/FragmentTabHost;->a(Ljava/lang/String;La/j/a/f;)La/j/a/f;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, La/j/a/f;->a()I

    .line 14
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->b()Z

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->g:Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object p1, p1, Landroidx/fragment/app/FragmentTabHost$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroidx/fragment/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroidx/fragment/app/FragmentTabHost$SavedState;->a:Ljava/lang/String;

    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTabHost;->a(Ljava/lang/String;La/j/a/f;)La/j/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, La/j/a/f;->a()I

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->e:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
