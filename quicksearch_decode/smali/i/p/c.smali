.class public Li/p/c;
.super Landroid/app/Dialog;
.source "SmartisanProgressDialog.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ProgressBar;

.field public c:Landroid/widget/TextView;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Li/p/c;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/p/c;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Li/p/c;->e:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 4
    iget-object v0, p0, Li/p/c;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Li/p/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Li/p/c;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Li/p/c;->f:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Li/p/c;->g:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 3
    sget v0, Lsmartisan/widget/R$layout;->smartisan_progress_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 4
    sget v0, Lsmartisan/widget/R$id;->progress_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Li/p/c;->a:Landroid/widget/TextView;

    .line 5
    sget v0, Lsmartisan/widget/R$id;->progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Li/p/c;->b:Landroid/widget/ProgressBar;

    .line 6
    sget v0, Lsmartisan/widget/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Li/p/c;->c:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Li/p/c;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 8
    iget-object v0, p0, Li/p/c;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Li/p/c;->setTitle(Ljava/lang/CharSequence;)V

    .line 10
    :cond_0
    iget-object v0, p0, Li/p/c;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0, v0}, Li/p/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_1
    iget-object v0, p0, Li/p/c;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0, v0}, Li/p/c;->a(Ljava/lang/CharSequence;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/p/c;->g:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/p/c;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Li/p/c;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Li/p/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Li/p/c;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Li/p/c;->d:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method
