.class Landroid/support/graphics/drawable/e;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# instance fields
.field private final Fb:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/graphics/drawable/e;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/e;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/e;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/graphics/drawable/f;

    invoke-direct {v0}, Landroid/support/graphics/drawable/f;-><init>()V

    .line 2
    iget-object p0, p0, Landroid/support/graphics/drawable/e;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p0, v0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Landroid/support/graphics/drawable/f;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 4
    new-instance v0, Landroid/support/graphics/drawable/f;

    invoke-direct {v0}, Landroid/support/graphics/drawable/f;-><init>()V

    .line 5
    iget-object p0, p0, Landroid/support/graphics/drawable/e;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object p0, v0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    iget-object p1, v0, Landroid/support/graphics/drawable/f;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 7
    new-instance v0, Landroid/support/graphics/drawable/f;

    invoke-direct {v0}, Landroid/support/graphics/drawable/f;-><init>()V

    .line 8
    iget-object p0, p0, Landroid/support/graphics/drawable/e;->Fb:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    .line 9
    iget-object p0, v0, Landroid/support/graphics/drawable/m;->Lb:Landroid/graphics/drawable/Drawable;

    iget-object p1, v0, Landroid/support/graphics/drawable/f;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method
