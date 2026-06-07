.class public La/a/a/c;
.super Landroid/app/Dialog;
.source "AppCompatDialog.java"

# interfaces
.implements Landroidx/appcompat/app/AppCompatCallback;


# instance fields
.field public a:La/a/a/b;

.field public final b:Landroidx/core/view/KeyEventDispatcher$Component;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, La/a/a/c;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, La/a/a/c$a;

    invoke-direct {p1, p0}, La/a/a/c$a;-><init>(La/a/a/c;)V

    iput-object p1, p0, La/a/a/c;->b:Landroidx/core/view/KeyEventDispatcher$Component;

    .line 3
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, La/a/a/b;->a(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object p1

    invoke-virtual {p1}, La/a/a/b;->a()Z

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Landroidx/appcompat/R$attr;->dialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 7
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    return p1
.end method


# virtual methods
.method public a()La/a/a/b;
    .locals 1

    .line 2
    iget-object v0, p0, La/a/a/c;->a:La/a/a/b;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0, p0}, La/a/a/b;->a(Landroid/app/Dialog;Landroidx/appcompat/app/AppCompatCallback;)La/a/a/b;

    move-result-object v0

    iput-object v0, p0, La/a/a/c;->a:La/a/a/b;

    .line 4
    :cond_0
    iget-object v0, p0, La/a/a/c;->a:La/a/a/b;

    return-object v0
.end method

.method public a(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/b;->b(I)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, La/a/a/b;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, La/a/a/c;->b:Landroidx/core/view/KeyEventDispatcher$Component;

    invoke-static {v1, v0, p0, p1}, Landroidx/core/view/KeyEventDispatcher;->a(Landroidx/core/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/b;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/b;->f()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/b;->e()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/b;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/b;->j()V

    return-void
.end method

.method public onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/b;->c(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, La/a/a/b;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 4
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, La/a/a/b;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, La/a/a/c;->a()La/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/b;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
