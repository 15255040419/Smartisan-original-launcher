.class Lcom/smartisanos/launcher/theme/V;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"


# instance fields
.field public It:Landroid/widget/TextView;

.field public Vt:Ljava/lang/String;

.field public Wt:Landroid/widget/ImageView;

.field public Xt:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

.field public view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/V;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/D;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/V;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/theme/v;ZZLandroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "setTheme return by Theme is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/smartisanos/launcher/theme/v;->mName:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/V;->Wt:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/V;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->f(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/u;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/theme/u;->da(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/smartisanos/launcher/ob;->current_theme_tag:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    iget-object p4, p0, Lcom/smartisanos/launcher/theme/V;->Xt:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p4, p0, Lcom/smartisanos/launcher/theme/V;->Xt:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :goto_0
    iget-object p4, p0, Lcom/smartisanos/launcher/theme/V;->It:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/V;->It:Landroid/widget/TextView;

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->z()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_3

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/V;->It:Landroid/widget/TextView;

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->A()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/V;->It:Landroid/widget/TextView;

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$2200()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_1
    return-void
.end method
