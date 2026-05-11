.class Lcom/smartisanos/launcher/theme/T;
.super Landroid/widget/BaseAdapter;
.source "ThemeItemActivity.java"


# instance fields
.field private af:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/T;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/T;->af:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lcom/smartisanos/launcher/theme/T;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/smartisanos/launcher/theme/T;->af:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/T;->af:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/smartisanos/launcher/theme/v;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/T;->af:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/theme/v;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/theme/T;->getItem(I)Lcom/smartisanos/launcher/theme/v;

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
    iget-object p3, p0, Lcom/smartisanos/launcher/theme/T;->af:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/theme/v;

    if-eqz p2, :cond_1

    .line 2
    instance-of p3, p2, Landroid/widget/RelativeLayout;

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/theme/V;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance p2, Lcom/smartisanos/launcher/theme/V;

    iget-object p3, p0, Lcom/smartisanos/launcher/theme/T;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/smartisanos/launcher/theme/V;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/D;)V

    .line 5
    iget-object p3, p0, Lcom/smartisanos/launcher/theme/T;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v1, Lcom/smartisanos/launcher/mb;->theme_color_dot_item:I

    invoke-virtual {p3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 6
    iput-object p3, p2, Lcom/smartisanos/launcher/theme/V;->view:Landroid/view/View;

    .line 7
    sget v0, Lcom/smartisanos/launcher/kb;->theme_color_dot:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/smartisanos/launcher/theme/V;->Wt:Landroid/widget/ImageView;

    .line 8
    sget v0, Lcom/smartisanos/launcher/kb;->theme_color_dot_selected:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/smartisanos/launcher/theme/V;->Xt:Landroid/widget/ImageView;

    .line 9
    sget v0, Lcom/smartisanos/launcher/kb;->theme_item_dot_name:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/smartisanos/launcher/theme/V;->It:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :goto_1
    iget-object p3, p1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/T;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/T;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->e(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/T;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1, v0, p3, p0}, Lcom/smartisanos/launcher/theme/V;->a(Lcom/smartisanos/launcher/theme/v;ZZLandroid/content/Context;)V

    .line 15
    iget-object p0, p2, Lcom/smartisanos/launcher/theme/V;->view:Landroid/view/View;

    return-object p0
.end method
