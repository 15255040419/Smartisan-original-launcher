.class Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 3065
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 0

    .line 3079
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 3071
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Landroidx/appcompat/R$attr;->homeAsUpIndicator:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    .line 3070
    invoke-static {p0, v1, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p0

    .line 3072
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3073
    invoke-virtual {p0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 0

    .line 3084
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3085
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setActionBarDescription(I)V
    .locals 0

    .line 3099
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3101
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 3090
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3092
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 3093
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_0
    return-void
.end method
