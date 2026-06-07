.class public Lsmartisan/widget/SettingItemCheck;
.super Lsmartisan/widget/ListContentItemCheck;
.source "SettingItemCheck.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SettingItemCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SettingItemCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/ListContentItemCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lsmartisan/widget/R$styleable;->SettingItemCheck:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lsmartisan/widget/R$styleable;->SettingItemCheck_itemTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lsmartisan/widget/ListContentItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public setCheckedIconLight(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lsmartisan/widget/ListContentItemCheck;->setCheckedIconLight(Z)V

    return-void
.end method

.method public setIconVisibility(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the params for setIconVisibility method is illegal!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setSummaryMarqueeEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->g:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    return-void
.end method
