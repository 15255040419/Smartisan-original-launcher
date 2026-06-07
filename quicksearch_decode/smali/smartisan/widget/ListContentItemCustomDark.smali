.class public Lsmartisan/widget/ListContentItemCustomDark;
.super Lsmartisan/widget/ListContentItemCustom;
.source "ListContentItemCustomDark.java"


# instance fields
.field public v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ListContentItemCustomDark;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ListContentItemCustomDark;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/ListContentItemCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lsmartisan/widget/ListContentItemCustomDark;->v:Z

    .line 5
    sget-object v1, Lcom/smartisanos/internal/R$styleable;->ListContentItem:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x8

    const/4 p3, -0x1

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setBackgroundResource(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBackgroundResource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsmartisan/widget/ListContentItemCustomDark;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListContentItemCustomDark"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItemCustomDark;->v:Z

    if-eqz v0, :cond_3

    .line 3
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_top:I

    if-ne p1, v0, :cond_0

    .line 4
    sget p1, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_top:I

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_bottom:I

    if-ne p1, v0, :cond_1

    .line 6
    sget p1, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_bottom:I

    goto :goto_0

    .line 7
    :cond_1
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_mid:I

    if-ne p1, v0, :cond_2

    .line 8
    sget p1, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_mid:I

    goto :goto_0

    .line 9
    :cond_2
    sget v0, Lsmartisan/widget/R$drawable;->group_list_item_bg_single:I

    if-ne p1, v0, :cond_3

    .line 10
    sget p1, Lsmartisan/widget/R$drawable;->group_list_item_bg_dark_single:I

    .line 11
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setDarkStype(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDarkStype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListContentItemCustomDark"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/ListContentItemCustomDark;->v:Z

    return-void
.end method
