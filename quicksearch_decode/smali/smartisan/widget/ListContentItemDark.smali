.class public abstract Lsmartisan/widget/ListContentItemDark;
.super Lsmartisan/widget/ListContentItem;
.source "ListContentItemDark.java"


# instance fields
.field public v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ListContentItemDark;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ListContentItemDark;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/ListContentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lsmartisan/widget/R$styleable;->ListContentItem:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lsmartisan/widget/R$styleable;->ListContentItem_backgroundStyle:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/ListContentItemDark;->v:I

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$color;->qs_item_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->getSummaryView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$color;->qs_item_summay_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate mBackStyle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsmartisan/widget/ListContentItemDark;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ListContentItemDark"

    invoke-static {v2, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lsmartisan/widget/ListContentItemDark;->v:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_bottom:I

    goto :goto_0

    .line 9
    :cond_3
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_mid:I

    goto :goto_0

    .line 10
    :cond_4
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_top:I

    goto :goto_0

    .line 11
    :cond_5
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_single:I

    :goto_0
    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p0, v0}, Lsmartisan/widget/ListContentItemDark;->setBackgroundResource(I)V

    :cond_6
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_top:I

    if-ne p1, v0, :cond_0

    .line 2
    sget p1, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_top:I

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_bottom:I

    if-ne p1, v0, :cond_1

    .line 4
    sget p1, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_bottom:I

    goto :goto_0

    .line 5
    :cond_1
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_mid:I

    if-ne p1, v0, :cond_2

    .line 6
    sget p1, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_mid:I

    goto :goto_0

    .line 7
    :cond_2
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_single:I

    if-ne p1, v0, :cond_3

    .line 8
    sget p1, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_single:I

    .line 9
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method
