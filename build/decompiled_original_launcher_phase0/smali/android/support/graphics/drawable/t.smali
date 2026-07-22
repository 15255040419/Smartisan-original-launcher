.class Landroid/support/graphics/drawable/t;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# instance fields
.field private final Fb:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/graphics/drawable/t;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/t;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/t;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/graphics/drawable/u;

    invoke-direct {v0}, Landroid/support/graphics/drawable/u;-><init>()V

    .line 2
    iget-object p0, p0, Landroid/support/graphics/drawable/t;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    iput-object p0, v0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3
    new-instance v0, Landroid/support/graphics/drawable/u;

    invoke-direct {v0}, Landroid/support/graphics/drawable/u;-><init>()V

    .line 4
    iget-object p0, p0, Landroid/support/graphics/drawable/t;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    iput-object p0, v0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 5
    new-instance v0, Landroid/support/graphics/drawable/u;

    invoke-direct {v0}, Landroid/support/graphics/drawable/u;-><init>()V

    .line 6
    iget-object p0, p0, Landroid/support/graphics/drawable/t;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    iput-object p0, v0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
