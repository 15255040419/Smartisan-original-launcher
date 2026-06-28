.class public Lcom/android/settings/widget/GridViewWithHeaderAndFooter;
.super Landroid/widget/GridView;
.source "GridViewWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;,
        Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;,
        Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;,
        Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GridViewHeaderAndFooter"


# instance fields
.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemClickHandler:Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;

.field private mNumColumns:I

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOriginalAdapter:Landroid/widget/ListAdapter;

.field private mRowHeight:I

.field private mViewForMeasureRowHeight:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mNumColumns:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 66
    iput p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->initHeaderGridView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mNumColumns:I

    const/4 p2, 0x0

    .line 65
    iput-object p2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 66
    iput p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->initHeaderGridView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mNumColumns:I

    const/4 p2, 0x0

    .line 65
    iput-object p2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 66
    iput p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->initHeaderGridView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;)I
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method private getColumnWidthCompatible()I
    .locals 2

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 284
    invoke-super {p0}, Landroid/widget/GridView;->getColumnWidth()I

    move-result p0

    return p0

    .line 287
    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/GridView;

    const-string v1, "mColumnWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 289
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 293
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getItemClickHandler()Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mItemClickHandler:Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;

    if-nez v0, :cond_0

    .line 860
    new-instance v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;-><init>(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;Lcom/android/settings/widget/GridViewWithHeaderAndFooter$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mItemClickHandler:Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;

    .line 862
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mItemClickHandler:Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;

    return-object p0
.end method

.method private getNumColumnsCompatible()I
    .locals 2

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 266
    invoke-super {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p0

    return p0

    .line 269
    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/GridView;

    const-string v1, "mNumColumns"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 271
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 273
    :catch_0
    iget p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mNumColumns:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    return p0

    .line 276
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Can not determine the mNumColumns for this API platform, please call setNumColumns to set it."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initHeaderGridView()V
    .locals 0

    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 255
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    .line 256
    iget-object v1, v1, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 257
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 173
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    instance-of v1, v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 183
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 185
    new-instance v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;-><init>(Lcom/android/settings/widget/GridViewWithHeaderAndFooter$1;)V

    .line 186
    new-instance v3, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;-><init>(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    if-eqz v1, :cond_2

    .line 189
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :cond_2
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 193
    iput-object p1, v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    .line 194
    iput-object v3, v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 195
    iput-object p2, v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    .line 196
    iput-boolean p3, v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    .line 197
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    .line 200
    check-cast v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 128
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    instance-of v1, v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 152
    new-instance v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;-><init>(Lcom/android/settings/widget/GridViewWithHeaderAndFooter$1;)V

    .line 153
    new-instance v3, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;-><init>(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    if-eqz v1, :cond_2

    .line 156
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    :cond_2
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 160
    iput-object p1, v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    .line 161
    iput-object v3, v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 162
    iput-object p2, v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    .line 163
    iput-boolean p3, v2, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    .line 164
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    .line 168
    check-cast v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public getFooterViewCount()I
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getHeaderHeight(I)I
    .locals 0

    if-ltz p1, :cond_0

    .line 310
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHeaderViewCount()I
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getHorizontalSpacing()I
    .locals 2

    .line 341
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 343
    const-class v0, Landroid/widget/GridView;

    const-string v1, "mHorizontalSpacing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 345
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 347
    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getOriginalAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mOriginalAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public getRowHeight()I
    .locals 6

    .line 357
    iget v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mRowHeight:I

    if-lez v0, :cond_0

    return v0

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 361
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v1

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    .line 364
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    if-gt v0, v3, :cond_1

    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getColumnWidthCompatible()I

    move-result v0

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v1, v4

    iget-object v4, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    invoke-interface {v3, v1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 371
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v2, v5, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 372
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    :cond_2
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 374
    invoke-static {v2, v4, v5}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getChildMeasureSpec(III)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    .line 377
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 376
    invoke-static {v0, v4, v3}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getChildMeasureSpec(III)I

    move-result v0

    .line 378
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 379
    iput-object v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 380
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 381
    iget p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mRowHeight:I

    return p0

    :cond_3
    :goto_0
    return v2
.end method

.method public getVerticalSpacing()I
    .locals 2

    .line 321
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 323
    const-class v0, Landroid/widget/GridView;

    const-string v1, "mVerticalSpacing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 325
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 327
    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public invalidateRowHeight()V
    .locals 1

    const/4 v0, -0x1

    .line 305
    iput v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mRowHeight:I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 300
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    instance-of p2, p1, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-eqz p2, :cond_0

    .line 98
    check-cast p1, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setRowHeight(I)V

    :cond_0
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    check-cast v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    return v1
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    check-cast v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    return v1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 38
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 406
    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mOriginalAdapter:Landroid/widget/ListAdapter;

    .line 407
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 408
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    iget-object v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 409
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 411
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 413
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setRowHeight(I)V

    .line 414
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0

    return-void
.end method

.method public setClipChildrenSupper(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipChildren(Z)V

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 461
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 462
    iput p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mNumColumns:I

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 464
    instance-of v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-eqz v0, :cond_0

    .line 465
    check-cast p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setNumColumns(I)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 848
    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 849
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getItemClickHandler()Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 855
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getItemClickHandler()Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public tryToScrollToBottomSmoothly()V
    .locals 3

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 387
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 388
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->smoothScrollToPositionFromTop(II)V

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->setSelection(I)V

    :goto_0
    return-void
.end method

.method public tryToScrollToBottomSmoothly(I)V
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 397
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 398
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->smoothScrollToPositionFromTop(III)V

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->setSelection(I)V

    :goto_0
    return-void
.end method
