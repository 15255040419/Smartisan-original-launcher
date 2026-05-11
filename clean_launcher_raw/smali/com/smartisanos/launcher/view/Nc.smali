.class Lcom/smartisanos/launcher/view/Nc;
.super Ljava/lang/Object;
.source "EditTitleDialog.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private py:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Nc;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/smartisanos/launcher/gb;->pre_title_list:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Nc;->py:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Nc;->py:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Nc;->py:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/smartisanos/launcher/view/Nc;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 p3, 0x64

    .line 3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 4
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p3, 0x11

    .line 5
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 6
    sget p3, Lcom/smartisanos/launcher/jb;->page_title_tip:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/high16 p3, 0x66000000

    .line 7
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41400000    # 12.0f

    .line 8
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Nc;->py:[Ljava/lang/String;

    aget-object p0, p0, p1

    .line 10
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
