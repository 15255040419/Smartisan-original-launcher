.class public Lsmartisan/widget/SmartisanRadioShadowButton;
.super Landroid/widget/RadioButton;
.source "SmartisanRadioShadowButton.java"


# instance fields
.field public a:Landroid/content/res/ColorStateList;

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanRadioShadowButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lsmartisan/widget/SmartisanRadioShadowButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->d:F

    iget v2, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->b:F

    iget v3, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->c:F

    .line 4
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getDrawableState()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 5
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/RadioButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanRadioShadowButton;->a()V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    .line 7
    iput-object p1, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->a:Landroid/content/res/ColorStateList;

    .line 8
    iput p2, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->b:F

    .line 9
    iput p3, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->c:F

    .line 10
    iput p4, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->d:F

    .line 11
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanRadioShadowButton;->a()V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanRadioShadowButton;->a()V

    return-void
.end method

.method public setFreezesText(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setFreezesText(Z)V

    return-void
.end method
