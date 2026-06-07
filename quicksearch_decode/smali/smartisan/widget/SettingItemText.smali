.class public Lsmartisan/widget/SettingItemText;
.super Lsmartisan/widget/ListContentItemText;
.source "SettingItemText.java"


# instance fields
.field public z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SettingItemText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SettingItemText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/ListContentItemText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Lsmartisan/widget/ListContentItem;->c()V

    .line 2
    sget v0, Lsmartisan/widget/R$id;->info_btn_viewstub:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-void
.end method

.method public getBadgeImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SettingItemText;->z:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDefaultMidLayout()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$layout;->setting_item_mid_layout:I

    return v0
.end method

.method public setBadgeResources(I)V
    .locals 2

    if-lez p1, :cond_1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SettingItemText;->z:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/SettingItemText;->z:Landroid/widget/ImageView;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SettingItemText;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lsmartisan/widget/SettingItemText;->z:Landroid/widget/ImageView;

    .line 5
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/SettingItemText;->z:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItemText;->setRightExpandView(Landroid/view/View;)V

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconResource(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->setIcon(I)V

    return-void
.end method

.method public setIconRightMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/ListContentItem;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setItemEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public setSubTitle(I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItemText;->setSubtitle(I)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method
