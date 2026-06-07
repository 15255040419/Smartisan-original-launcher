.class public Lb/a/a/o1/d/d;
.super Lb/a/a/o1/d/a;
.source "ViewHolderYellowPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Lb/a/a/o1/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/a/o1/d/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f08026f

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/a/a/o1/d/d;->d:Landroid/widget/TextView;

    const p1, 0x7f08026d

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/a/a/o1/d/d;->e:Landroid/widget/TextView;

    const p1, 0x7f08026e

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/a/a/o1/d/d;->f:Landroid/widget/TextView;

    const p1, 0x7f08026c

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08011c

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/quicksearchbox/voice/model/IModel;Z)V
    .locals 0

    .line 1
    check-cast p2, Lb/a/a/o1/b/d;

    iput-object p2, p0, Lb/a/a/o1/d/d;->g:Lb/a/a/o1/b/d;

    .line 2
    iget-object p1, p0, Lb/a/a/o1/d/d;->d:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lb/a/a/o1/d/d;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lb/a/a/o1/d/d;->g:Lb/a/a/o1/b/d;

    iget-object p2, p2, Lb/a/a/o1/b/d;->a:Lsmartisanos/app/numberassistant/YellowPageResult;

    iget-object p2, p2, Lsmartisanos/app/numberassistant/YellowPageResult;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lb/a/a/o1/d/d;->f:Landroid/widget/TextView;

    iget-object p2, p0, Lb/a/a/o1/d/d;->g:Lb/a/a/o1/b/d;

    iget-object p2, p2, Lb/a/a/o1/b/d;->a:Lsmartisanos/app/numberassistant/YellowPageResult;

    iget-object p2, p2, Lsmartisanos/app/numberassistant/YellowPageResult;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08011c

    if-eq p1, v0, :cond_0

    const v0, 0x7f08026c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lb/a/a/o1/d/d;->g:Lb/a/a/o1/b/d;

    iget-object v0, v0, Lb/a/a/o1/b/d;->a:Lsmartisanos/app/numberassistant/YellowPageResult;

    iget-object v0, v0, Lsmartisanos/app/numberassistant/YellowPageResult;->number:Ljava/lang/String;

    invoke-static {p1, v0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08011c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lsmartisanos/util/SidebarUtils;->isSidebarShowing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/a/o1/d/d;->g:Lb/a/a/o1/b/d;

    iget-object v2, v2, Lb/a/a/o1/b/d;->a:Lsmartisanos/app/numberassistant/YellowPageResult;

    iget-object v2, v2, Lsmartisanos/app/numberassistant/YellowPageResult;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/a/o1/d/d;->g:Lb/a/a/o1/b/d;

    iget-object v2, v2, Lb/a/a/o1/b/d;->a:Lsmartisanos/app/numberassistant/YellowPageResult;

    iget-object v2, v2, Lsmartisanos/app/numberassistant/YellowPageResult;->number:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f07010c

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 8
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const v3, 0x7f07010d

    .line 9
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11
    iget-object v3, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-static {p1, v3, v1, v2, v0}, Lsmartisanos/util/SidebarUtils;->dragText(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
