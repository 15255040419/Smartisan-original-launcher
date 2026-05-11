.class Lcom/smartisanos/launcher/theme/U;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"


# static fields
.field private static Ut:J


# instance fields
.field public Lt:Landroid/widget/ImageView;

.field public Mt:Landroid/widget/TextView;

.field public Nt:Landroid/widget/ImageView;

.field public Ot:Lsmartisanos/widget/DownloadProgressView;

.field public Pt:Landroid/view/View$OnClickListener;

.field public Qt:Landroid/view/View$OnClickListener;

.field public Rt:Landroid/view/View$OnClickListener;

.field public St:Landroid/view/View$OnClickListener;

.field public Tt:Landroid/view/View$OnClickListener;

.field public title:Lsmartisanos/widget/TitleBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/smartisanos/launcher/kb;->view_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/TitleBar;

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/U;->title:Lsmartisanos/widget/TitleBar;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/U;->title:Lsmartisanos/widget/TitleBar;

    sget v1, Lcom/smartisanos/launcher/ob;->theme_title_bar_text:I

    invoke-virtual {v0, v1}, Lsmartisanos/widget/TitleBar;->setCenterText(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/U;->title:Lsmartisanos/widget/TitleBar;

    const v1, 0x20200a4

    invoke-virtual {v0, v1}, Lsmartisanos/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/U;->Lt:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/U;->title:Lsmartisanos/widget/TitleBar;

    sget v1, Lcom/smartisanos/launcher/ob;->theme_title_button_setup:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lsmartisanos/widget/TitleBar;->addRightButton(II)Lsmartisanos/widget/SmartisanButton;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    .line 6
    new-instance v0, Lsmartisanos/widget/DownloadProgressView;

    invoke-direct {v0, p1}, Lsmartisanos/widget/DownloadProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    .line 7
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->title:Lsmartisanos/widget/TitleBar;

    iget-object v0, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->addRightView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->title:Lsmartisanos/widget/TitleBar;

    sget v0, Lcom/smartisanos/launcher/jb;->item_theme_down_bg:I

    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->addRightImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    return-void
.end method

.method private a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static dg()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcom/smartisanos/launcher/theme/U;->Ut:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 3
    :goto_0
    sput-wide v0, Lcom/smartisanos/launcher/theme/U;->Ut:J

    return v2
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/U;->Lt:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Lcom/smartisanos/launcher/theme/v;Z)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lcom/smartisanos/launcher/theme/v;->status:I

    .line 2
    iget v1, p1, Lcom/smartisanos/launcher/theme/v;->progress:I

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/launcher/theme/v;->getPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    invoke-direct {p0, p1, v5, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    invoke-virtual {p0, v3}, Lsmartisanos/widget/DownloadProgressView;->setCurrentState(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    iget-object p2, p0, Lcom/smartisanos/launcher/theme/U;->St:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v5, p2}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    invoke-virtual {p1, v4}, Lsmartisanos/widget/DownloadProgressView;->setCurrentState(I)V

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    invoke-virtual {p0, v1}, Lsmartisanos/widget/DownloadProgressView;->setProgress(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_3
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    iget-object p2, p0, Lcom/smartisanos/launcher/theme/U;->St:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v5, p2}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lsmartisanos/widget/DownloadProgressView;->setCurrentState(I)V

    .line 17
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    invoke-virtual {p0, v1}, Lsmartisanos/widget/DownloadProgressView;->setProgress(I)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz p2, :cond_1

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    sget p2, Lcom/smartisanos/launcher/ob;->theme_title_button_setup:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/smartisanos/launcher/theme/U;->Qt:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v5, p2}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object p1

    invoke-static {p1, v2, v5}, Lcom/smartisanos/launcher/e/s;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    sget p2, Lcom/smartisanos/launcher/ob;->theme_title_button_setup:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/smartisanos/launcher/theme/U;->Qt:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v5, p2}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 29
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    sget p2, Lcom/smartisanos/launcher/ob;->theme_title_button_update:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 31
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/smartisanos/launcher/theme/U;->Tt:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v5, p2}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 34
    :pswitch_5
    iget-object p2, p0, Lcom/smartisanos/launcher/theme/U;->Mt:Landroid/widget/TextView;

    invoke-direct {p0, p2, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 35
    iget-object p2, p0, Lcom/smartisanos/launcher/theme/U;->Ot:Lsmartisanos/widget/DownloadProgressView;

    invoke-direct {p0, p2, v6, v7}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 36
    iget-object p2, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/smartisanos/launcher/theme/U;->Rt:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p2, v5, v0}, Lcom/smartisanos/launcher/theme/U;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 37
    iget-boolean p2, p1, Lcom/smartisanos/launcher/theme/v;->Ft:Z

    if-eqz p2, :cond_3

    .line 38
    iget-object p2, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iput-boolean v5, p1, Lcom/smartisanos/launcher/theme/v;->Ft:Z

    .line 40
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/U;->Nt:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public g(Lcom/smartisanos/launcher/theme/v;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/theme/U;->b(Lcom/smartisanos/launcher/theme/v;Z)V

    return-void
.end method

.method public updateBackButtonEnableState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/U;->Lt:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/U;->Lt:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/16 p1, 0x7f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    return-void
.end method
