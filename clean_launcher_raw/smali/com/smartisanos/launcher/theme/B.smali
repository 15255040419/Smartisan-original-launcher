.class Lcom/smartisanos/launcher/theme/B;
.super Landroid/widget/BaseAdapter;
.source "ThemeChooserActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mType:I

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/B;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/theme/B;->mType:I

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/theme/B;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown adapter type ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    iput p3, p0, Lcom/smartisanos/launcher/theme/B;->mType:I

    return-void
.end method

.method private a(ILcom/smartisanos/launcher/theme/A;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/B;->getCount()I

    move-result p0

    .line 2
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    .line 3
    div-int/2addr p0, v2

    .line 4
    div-int/2addr p1, v2

    const/4 v3, 0x3

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    sub-int/2addr p0, v1

    if-ne p1, p0, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    move v1, v3

    .line 5
    :goto_1
    invoke-virtual {p2, v1, v0}, Lcom/smartisanos/launcher/theme/A;->f(IZ)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/theme/B;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/B;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->e(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/B;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->d(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 4
    :goto_0
    rem-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_2

    add-int/lit8 p0, p0, 0x1

    :cond_2
    return p0
.end method

.method public getItem(I)Lcom/smartisanos/launcher/theme/v;
    .locals 3

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/theme/B;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move-object p0, v2

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/B;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->e(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/B;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->d(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)Ljava/util/List;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 6
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/theme/v;

    return-object p0

    :cond_2
    return-object v2
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/theme/B;->getItem(I)Lcom/smartisanos/launcher/theme/v;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/theme/B;->getItem(I)Lcom/smartisanos/launcher/theme/v;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 2
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/theme/A;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/launcher/theme/B;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/smartisanos/launcher/mb;->theme_preview_block:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/theme/A;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/theme/A;-><init>(Lcom/smartisanos/launcher/theme/B;Lcom/smartisanos/launcher/theme/w;)V

    .line 6
    iput-object p2, v0, Lcom/smartisanos/launcher/theme/A;->view:Landroid/view/View;

    .line 7
    sget v1, Lcom/smartisanos/launcher/kb;->phone_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/A;->Ht:Landroid/widget/FrameLayout;

    .line 8
    sget v1, Lcom/smartisanos/launcher/kb;->theme_preview_block:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/A;->thumbnail:Landroid/widget/ImageView;

    .line 9
    sget v1, Lcom/smartisanos/launcher/kb;->theme_name_preview:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/A;->It:Landroid/widget/TextView;

    .line 10
    sget v1, Lcom/smartisanos/launcher/kb;->theme_block_downloading_progress:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/A;->Jt:Landroid/widget/FrameLayout;

    .line 11
    sget v1, Lcom/smartisanos/launcher/kb;->theme_show_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/A;->showText:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v0

    .line 13
    :goto_1
    invoke-virtual {p2, p3}, Lcom/smartisanos/launcher/theme/A;->f(Lcom/smartisanos/launcher/theme/v;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/theme/B;->a(ILcom/smartisanos/launcher/theme/A;)V

    .line 15
    iget-object p0, p2, Lcom/smartisanos/launcher/theme/A;->view:Landroid/view/View;

    return-object p0
.end method
