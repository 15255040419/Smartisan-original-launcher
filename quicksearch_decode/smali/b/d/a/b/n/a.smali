.class public Lb/d/a/b/n/a;
.super Lb/d/a/b/n/b;
.source "ImageViewAware.java"


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/d/a/b/n/b;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    .line 3
    :try_start_0
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const p1, 0x7fffffff

    if-ge p0, p1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lb/d/a/c/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 0

    .line 2
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getHeight()I
    .locals 2

    .line 1
    invoke-super {p0}, Lb/d/a/b/n/b;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/d/a/b/n/b;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const-string v0, "mMaxHeight"

    .line 3
    invoke-static {v1, v0}, Lb/d/a/b/n/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getScaleType()Lb/d/a/b/j/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/n/b;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lb/d/a/b/j/h;->a(Landroid/widget/ImageView;)Lb/d/a/b/j/h;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lb/d/a/b/n/b;->getScaleType()Lb/d/a/b/j/h;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    invoke-super {p0}, Lb/d/a/b/n/b;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/d/a/b/n/b;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const-string v0, "mMaxWidth"

    .line 3
    invoke-static {v1, v0}, Lb/d/a/b/n/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic getWrappedView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/d/a/b/n/a;->getWrappedView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedView()Landroid/widget/ImageView;
    .locals 1

    .line 2
    invoke-super {p0}, Lb/d/a/b/n/b;->getWrappedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method
