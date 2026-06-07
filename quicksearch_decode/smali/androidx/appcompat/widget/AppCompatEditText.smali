.class public Landroidx/appcompat/widget/AppCompatEditText;
.super Landroid/widget/EditText;
.source "AppCompatEditText.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;


# instance fields
.field public final a:La/a/f/c;

.field public final b:La/a/f/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Landroidx/appcompat/R$attr;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, La/a/f/q;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, La/a/f/c;

    invoke-direct {p1, p0}, La/a/f/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:La/a/f/c;

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:La/a/f/c;

    invoke-virtual {p1, p2, p3}, La/a/f/c;->a(Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, La/a/f/h;

    invoke-direct {p1, p0}, La/a/f/h;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->b:La/a/f/h;

    .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->b:La/a/f/h;

    invoke-virtual {p1, p2, p3}, La/a/f/h;->a(Landroid/util/AttributeSet;I)V

    .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->b:La/a/f/h;

    invoke-virtual {p1}, La/a/f/h;->a()V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:La/a/f/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, La/a/f/c;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->b:La/a/f/h;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, La/a/f/h;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:La/a/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, La/a/f/c;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:La/a/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, La/a/f/c;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, La/a/f/d;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:La/a/f/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, La/a/f/c;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:La/a/f/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, La/a/f/c;->a(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, La/g/i/h;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:La/a/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, La/a/f/c;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->a:La/a/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, La/a/f/c;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->b:La/a/f/h;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, La/a/f/h;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
