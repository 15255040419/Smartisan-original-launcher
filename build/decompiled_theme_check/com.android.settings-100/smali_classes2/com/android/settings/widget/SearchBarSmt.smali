.class public Lcom/android/settings/widget/SearchBarSmt;
.super Landroid/widget/RelativeLayout;
.source "SearchBarSmt.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SearchBarSmt$FilterMode;,
        Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;,
        Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;,
        Lcom/android/settings/widget/SearchBarSmt$Listener;
    }
.end annotation


# static fields
.field private static final ARROW_X_DIP:F = 190.6f

.field public static final FILTER_BY_NAME:I = 0x2

.field public static final FILTER_BY_SWITCH:I = 0x1

.field private static final X_DIP:F = 218.5f

.field private static final Y_DIP:F = 6.5f

.field private static sSortMode:I = 0x2


# instance fields
.field private mBtnSort:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentSelectItem:Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;

.field private mIsNoAnimCancel:Z

.field private mListener:Lcom/android/settings/widget/SearchBarSmt$Listener;

.field private mMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisanos/widget/support/SmartisanMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchBar:Lsmartisanos/widget/SearchBar;

.field private mSearchBarListener:Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;

.field private mSearchEdit:Landroid/widget/EditText;

.field private mSmartisanListPopupMenu:Lsmartisanos/widget/support/SmartisanListPopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 34
    iput-object p2, p0, Lcom/android/settings/widget/SearchBarSmt;->mBtnSort:Landroid/widget/ImageView;

    .line 35
    iput-object p2, p0, Lcom/android/settings/widget/SearchBarSmt;->mCurrentSelectItem:Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/android/settings/widget/SearchBarSmt;->mIsNoAnimCancel:Z

    .line 74
    iput-object p1, p0, Lcom/android/settings/widget/SearchBarSmt;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0d0275

    .line 76
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a07ca

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SearchBar;

    iput-object p1, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchBar:Lsmartisanos/widget/SearchBar;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/widget/SearchBarSmt;->setViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/SearchBarSmt;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/android/settings/widget/SearchBarSmt;->mIsNoAnimCancel:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/widget/SearchBarSmt;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/android/settings/widget/SearchBarSmt;->mIsNoAnimCancel:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/widget/SearchBarSmt;)Lcom/android/settings/widget/SearchBarSmt$Listener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt;->mListener:Lcom/android/settings/widget/SearchBarSmt$Listener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/SearchBarSmt;)Landroid/widget/ImageView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt;->mBtnSort:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/SearchBarSmt;)Landroid/widget/EditText;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/SearchBarSmt;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/widget/SearchBarSmt;->showSortByPopupWindow()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/widget/SearchBarSmt;I)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SearchBarSmt;->getTitleStr(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMenusByMode(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lsmartisanos/widget/support/SmartisanMenuItem;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v6, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;

    const v2, 0x7f121459

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0805aa

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;-><init>(Lcom/android/settings/widget/SearchBarSmt;IZII)V

    .line 276
    new-instance v0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;

    const v9, 0x7f121356

    const/4 v10, 0x0

    const/4 v11, 0x2

    const v12, 0x7f0805a8

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;-><init>(Lcom/android/settings/widget/SearchBarSmt;IZII)V

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    sget v2, Lcom/android/settings/widget/SearchBarSmt;->sSortMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 280
    invoke-virtual {v6, v3}, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->setSelected(Z)V

    .line 281
    iput-object v6, p0, Lcom/android/settings/widget/SearchBarSmt;->mCurrentSelectItem:Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->setSelected(Z)V

    .line 284
    iput-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mCurrentSelectItem:Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;

    :goto_0
    if-eq p1, v3, :cond_1

    goto :goto_1

    .line 289
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v1
.end method

.method private getTitleStr(I)Ljava/lang/String;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setViews()V
    .locals 3

    .line 82
    new-instance v0, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;-><init>(Lcom/android/settings/widget/SearchBarSmt;Lcom/android/settings/widget/SearchBarSmt$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchBarListener:Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;

    .line 83
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchBar:Lsmartisanos/widget/SearchBar;

    iget-object v1, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchBarListener:Lcom/android/settings/widget/SearchBarSmt$SearchBarListener;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SearchBar;->setListener(Lsmartisanos/widget/SearchBar$Listener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchBar:Lsmartisanos/widget/SearchBar;

    invoke-virtual {v0}, Lsmartisanos/widget/SearchBar;->getSearchRightView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mBtnSort:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/widget/SearchBarSmt;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1207ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchBar:Lsmartisanos/widget/SearchBar;

    invoke-virtual {v0}, Lsmartisanos/widget/SearchBar;->getSearchEditor()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchEdit:Landroid/widget/EditText;

    return-void
.end method

.method private showSortByPopupWindow()V
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mBtnSort:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 166
    new-instance v0, Lsmartisanos/widget/support/SmartisanListPopupMenu;

    iget-object v2, p0, Lcom/android/settings/widget/SearchBarSmt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lsmartisanos/widget/support/SmartisanListPopupMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSmartisanListPopupMenu:Lsmartisanos/widget/support/SmartisanListPopupMenu;

    .line 167
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mMenus:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    new-instance v2, Lsmartisanos/widget/support/ListPopMenuStandardAdapter;

    iget-object v3, p0, Lcom/android/settings/widget/SearchBarSmt;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lsmartisanos/widget/support/ListPopMenuStandardAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSmartisanListPopupMenu:Lsmartisanos/widget/support/SmartisanListPopupMenu;

    iget-object v3, p0, Lcom/android/settings/widget/SearchBarSmt;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lsmartisanos/widget/support/SmartisanListPopupMenu;->setAnchorView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSmartisanListPopupMenu:Lsmartisanos/widget/support/SmartisanListPopupMenu;

    invoke-virtual {v0, v2}, Lsmartisanos/widget/support/SmartisanListPopupMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSmartisanListPopupMenu:Lsmartisanos/widget/support/SmartisanListPopupMenu;

    iget-object v2, p0, Lcom/android/settings/widget/SearchBarSmt;->mContext:Landroid/content/Context;

    const v3, 0x7f12135c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsmartisanos/widget/support/SmartisanListPopupMenu;->setMenuListTitle(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSmartisanListPopupMenu:Lsmartisanos/widget/support/SmartisanListPopupMenu;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/support/SmartisanListPopupMenu;->setMenuListTitleVisible(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSmartisanListPopupMenu:Lsmartisanos/widget/support/SmartisanListPopupMenu;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/support/SmartisanListPopupMenu;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSmartisanListPopupMenu:Lsmartisanos/widget/support/SmartisanListPopupMenu;

    new-instance v1, Lcom/android/settings/widget/SearchBarSmt$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/SearchBarSmt$1;-><init>(Lcom/android/settings/widget/SearchBarSmt;)V

    invoke-virtual {v0, v1}, Lsmartisanos/widget/support/SmartisanListPopupMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mContext:Landroid/content/Context;

    const v1, 0x435a8000    # 218.5f

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->dp2Pixels(Landroid/content/Context;F)I

    move-result v0

    neg-int v3, v0

    .line 185
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mContext:Landroid/content/Context;

    const/high16 v1, 0x40d00000    # 6.5f

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->dp2Pixels(Landroid/content/Context;F)I

    move-result v0

    neg-int v4, v0

    .line 186
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mContext:Landroid/content/Context;

    const v1, 0x433e999a    # 190.6f

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->dp2Pixels(Landroid/content/Context;F)I

    move-result v5

    .line 187
    iget-object v1, p0, Lcom/android/settings/widget/SearchBarSmt;->mSmartisanListPopupMenu:Lsmartisanos/widget/support/SmartisanListPopupMenu;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lsmartisanos/widget/support/SmartisanListPopupMenu;->show(IIIII)V

    return-void
.end method

.method private switchSelectedItem(Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSmartisanListPopupMenu:Lsmartisanos/widget/support/SmartisanListPopupMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsmartisanos/widget/support/SmartisanListPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSmartisanListPopupMenu:Lsmartisanos/widget/support/SmartisanListPopupMenu;

    invoke-virtual {v0}, Lsmartisanos/widget/support/SmartisanListPopupMenu;->dismiss()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mCurrentSelectItem:Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;

    if-ne v0, p1, :cond_1

    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mListener:Lcom/android/settings/widget/SearchBarSmt$Listener;

    invoke-virtual {p1}, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/widget/SearchBarSmt$Listener;->onModeChange(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p1}, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->getValue()I

    move-result v0

    sput v0, Lcom/android/settings/widget/SearchBarSmt;->sSortMode:I

    .line 212
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mCurrentSelectItem:Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->setSelected(Z)V

    .line 213
    iput-object p1, p0, Lcom/android/settings/widget/SearchBarSmt;->mCurrentSelectItem:Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;

    .line 214
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt;->mCurrentSelectItem:Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->setSelected(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/widget/SearchBarSmt;->isPlayingSearchAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/SearchBarSmt;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchBar:Lsmartisanos/widget/SearchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SearchBar;->onClickCancelView(Z)V

    .line 92
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt;->mBtnSort:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public clearSearchText()V
    .locals 1

    .line 159
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchEdit:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 160
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public isInSearchMode()Z
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchBar:Lsmartisanos/widget/SearchBar;

    invoke-virtual {p0}, Lsmartisanos/widget/SearchBar;->isSearchMode()Z

    move-result p0

    return p0
.end method

.method public isPlayingSearchAnimation()Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt;->mSearchBar:Lsmartisanos/widget/SearchBar;

    invoke-virtual {p0}, Lsmartisanos/widget/SearchBar;->isPlayingAnimation()Z

    move-result p0

    return p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 192
    iget-object p1, p0, Lcom/android/settings/widget/SearchBarSmt;->mMenus:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_2

    if-gez p3, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/SearchBarSmt;->mMenus:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;

    if-nez p1, :cond_1

    return-void

    .line 199
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SearchBarSmt;->switchSelectedItem(Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFilterMode(I)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SearchBarSmt;->getMenusByMode(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/SearchBarSmt;->mMenus:Ljava/util/List;

    return-void
.end method

.method public setListener(Lcom/android/settings/widget/SearchBarSmt$Listener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/widget/SearchBarSmt;->mListener:Lcom/android/settings/widget/SearchBarSmt$Listener;

    return-void
.end method
