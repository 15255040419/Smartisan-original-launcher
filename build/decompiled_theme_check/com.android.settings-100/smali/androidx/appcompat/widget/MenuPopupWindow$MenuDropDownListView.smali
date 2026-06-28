.class public Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroidx/appcompat/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 144
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 148
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const/16 v1, 0x16

    const/16 v2, 0x11

    if-lt p2, v2, :cond_0

    const/4 p2, 0x1

    .line 149
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 150
    iput v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 151
    iput v1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0

    .line 153
    :cond_0
    iput v1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 154
    iput v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    :goto_0
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    const/4 v0, -0x1

    .line 163
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    return-void
.end method

.method public bridge synthetic hasFocus()Z
    .locals 0

    .line 135
    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->hasFocus()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .locals 0

    .line 135
    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->hasWindowFocus()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isFocused()Z
    .locals 0

    .line 135
    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->isFocused()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isInTouchMode()Z
    .locals 0

    .line 135
    invoke-super {p0}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic lookForSelectablePosition(IZ)I
    .locals 0

    .line 135
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic measureHeightOfChildrenCompat(IIIII)I
    .locals 0

    .line 135
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result p0

    return p0
.end method

.method public bridge synthetic onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 0

    .line 135
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 190
    iget-object v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 195
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 196
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 197
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    .line 198
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 201
    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    :goto_0
    const/4 v2, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    sub-int/2addr v3, v1

    if-ltz v3, :cond_1

    .line 210
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 211
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    .line 216
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    if-eq v1, v2, :cond_3

    .line 218
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 220
    iget-object v3, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-interface {v3, v0, v1}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 223
    :cond_2
    iput-object v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    .line 226
    iget-object v1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-interface {v1, v0, v2}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 231
    :cond_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 168
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 169
    iget v2, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v2, :cond_1

    .line 170
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result p1

    .line 174
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v2

    .line 171
    invoke-virtual {p0, v0, p1, v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    return v1

    :cond_1
    if-eqz v0, :cond_2

    .line 177
    iget v0, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    .line 178
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 181
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    return v1

    .line 184
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V
    .locals 0

    .line 159
    iput-object p1, p0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
