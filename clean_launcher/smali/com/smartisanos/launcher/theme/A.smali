.class Lcom/smartisanos/launcher/theme/A;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"


# instance fields
.field public Ht:Landroid/widget/FrameLayout;

.field public It:Landroid/widget/TextView;

.field public Jt:Landroid/widget/FrameLayout;

.field public showText:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/smartisanos/launcher/theme/B;

.field public thumbnail:Landroid/widget/ImageView;

.field public view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/smartisanos/launcher/theme/B;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/A;->this$1:Lcom/smartisanos/launcher/theme/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/theme/B;Lcom/smartisanos/launcher/theme/w;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/A;-><init>(Lcom/smartisanos/launcher/theme/B;)V

    return-void
.end method


# virtual methods
.method public f(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 22
    sget p1, Lcom/smartisanos/launcher/jb;->selector_theme_list_item_bottom_left:I

    goto :goto_0

    .line 23
    :cond_1
    sget p1, Lcom/smartisanos/launcher/jb;->selector_theme_list_item_bottom_right:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 24
    sget p1, Lcom/smartisanos/launcher/jb;->selector_theme_list_item_mid_left:I

    goto :goto_0

    .line 25
    :cond_3
    sget p1, Lcom/smartisanos/launcher/jb;->selector_theme_list_item_mid_right:I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 26
    sget p1, Lcom/smartisanos/launcher/jb;->selector_theme_list_item_top_left:I

    goto :goto_0

    .line 27
    :cond_5
    sget p1, Lcom/smartisanos/launcher/jb;->selector_theme_list_item_top_right:I

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 28
    sget p1, Lcom/smartisanos/launcher/jb;->selector_theme_list_item_single_left:I

    goto :goto_0

    .line 29
    :cond_7
    sget p1, Lcom/smartisanos/launcher/jb;->selector_theme_list_item_single_right:I

    :goto_0
    if-lez p1, :cond_8

    .line 30
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/A;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_8
    return-void
.end method

.method public f(Lcom/smartisanos/launcher/theme/v;)V
    .locals 4

    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/A;->Jt:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/A;->showText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/A;->Ht:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/A;->It:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/A;->Ht:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/A;->Ht:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/A;->It:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :cond_1
    iget v1, p1, Lcom/smartisanos/launcher/theme/v;->status:I

    const/16 v3, 0x67

    if-ne v1, v3, :cond_2

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/A;->Jt:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/A;->showText:Landroid/widget/TextView;

    sget v1, Lcom/smartisanos/launcher/ob;->theme_block_downloading_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/A;->showText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x66

    if-ne v1, v3, :cond_4

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/A;->Jt:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/A;->showText:Landroid/widget/TextView;

    sget v1, Lcom/smartisanos/launcher/ob;->theme_block_current_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/A;->showText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/A;->Jt:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/A;->showText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/A;->Jt:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/A;->showText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/A;->It:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/launcher/theme/v;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/A;->thumbnail:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/A;->this$1:Lcom/smartisanos/launcher/theme/B;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/B;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->f(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)Lcom/smartisanos/launcher/theme/u;

    move-result-object p0

    iget-object p1, p1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/theme/u;->da(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
