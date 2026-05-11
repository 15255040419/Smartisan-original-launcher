.class public Lcom/smartisanos/launcher/theme/ThemeChooserActivity;
.super Landroid/app/Activity;
.source "ThemeChooserActivity.java"


# static fields
.field private static volatile db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Sa:Ljava/util/List;

.field private Ta:Ljava/util/List;

.field private Ua:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

.field private Va:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

.field private Wa:Lcom/smartisanos/launcher/theme/B;

.field private Xa:Lcom/smartisanos/launcher/theme/B;

.field private Ya:Lcom/smartisanos/launcher/theme/u;

.field private Za:Landroid/widget/TextView;

.field private _a:Lcom/smartisanos/launcher/theme/z;

.field private ab:Landroid/content/BroadcastReceiver;

.field private bb:Z

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mTitle:Lsmartisanos/widget/TitleBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->_a:Lcom/smartisanos/launcher/theme/z;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/theme/w;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/w;-><init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->ab:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->bb:Z

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/theme/y;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/y;-><init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private Au()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->jg()Landroid/content/res/Resources;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->kg()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    sget-object v3, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    sget-object v4, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/theme/v;

    if-nez v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {p0, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8
    iput-object v4, v3, Lcom/smartisanos/launcher/theme/v;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private Bu()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->gg()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Sa:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Sa:Ljava/util/List;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ta:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Sa:Ljava/util/List;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->u(Ljava/util/List;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ta:Ljava/util/List;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->u(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Bu()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->bb:Z

    return p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->zu()V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->bb:Z

    return p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Sa:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ta:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)Lcom/smartisanos/launcher/theme/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    return-object p0
.end method

.method public static getInstance()Lcom/smartisanos/launcher/theme/ThemeChooserActivity;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    return-object v0
.end method

.method private xu()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->finish()V

    return-void
.end method

.method private yu()V
    .locals 5

    .line 1
    sget v0, Lcom/smartisanos/launcher/kb;->theme_not_installed_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Za:Landroid/widget/TextView;

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    sget v0, Lcom/smartisanos/launcher/kb;->theme_list_scrollview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 5
    sget v3, Lcom/smartisanos/launcher/kb;->installed_list:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iput-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ua:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ua:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 7
    sget v3, Lcom/smartisanos/launcher/kb;->not_installed_list:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iput-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Va:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Va:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 9
    new-instance v2, Lcom/smartisanos/launcher/theme/B;

    invoke-direct {v2, p0, p0, v1}, Lcom/smartisanos/launcher/theme/B;-><init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Wa:Lcom/smartisanos/launcher/theme/B;

    .line 10
    new-instance v2, Lcom/smartisanos/launcher/theme/B;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p0, v3}, Lcom/smartisanos/launcher/theme/B;-><init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Xa:Lcom/smartisanos/launcher/theme/B;

    .line 11
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ua:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Wa:Lcom/smartisanos/launcher/theme/B;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Va:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Xa:Lcom/smartisanos/launcher/theme/B;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ua:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 14
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Va:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 15
    new-instance v2, Lcom/smartisanos/launcher/theme/u;

    invoke-direct {v2}, Lcom/smartisanos/launcher/theme/u;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    .line 16
    new-instance v2, Lcom/smartisanos/launcher/theme/z;

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Sa:Ljava/util/List;

    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ta:Ljava/util/List;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/smartisanos/launcher/theme/z;-><init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->_a:Lcom/smartisanos/launcher/theme/z;

    .line 17
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->_a:Lcom/smartisanos/launcher/theme/z;

    new-array v1, v1, [Lcom/smartisanos/launcher/theme/u;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 18
    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 19
    invoke-static {v0}, Lsmartisanos/util/NavigationBarHelper;->setBottomPaddingWhenNavigationBarStatusChange(Landroid/view/View;)V

    return-void
.end method

.method private zu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Za:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ta:Ljava/util/List;

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Za:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Za:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Wa:Lcom/smartisanos/launcher/theme/B;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Xa:Lcom/smartisanos/launcher/theme/B;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->_a:Lcom/smartisanos/launcher/theme/z;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/ua;->zb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 7
    aget v2, v0, v2

    aget v0, v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->xu()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/smartisanos/launcher/mb;->theme_preview_gridview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->finish()V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/launcher/theme/u;->clear()V

    .line 8
    :cond_1
    new-instance p1, Lcom/smartisanos/launcher/theme/u;

    invoke-direct {p1}, Lcom/smartisanos/launcher/theme/u;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Au()V

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Bu()V

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->yu()V

    .line 12
    sget p1, Lcom/smartisanos/launcher/kb;->view_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/TitleBar;

    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    .line 13
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    sget v0, Lcom/smartisanos/launcher/ob;->theme_title_bar_text:I

    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->setCenterText(I)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->mTitle:Lsmartisanos/widget/TitleBar;

    const v0, 0x20200a4

    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/launcher/theme/x;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/x;-><init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    :try_start_0
    const-string v0, "from_settings"

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_2

    .line 18
    sget-object p1, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "FROM_SETTINGS_FLAG_LOST"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->finish()V

    return-void

    .line 20
    :cond_2
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->ab:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    sput-object p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->ab:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->_a:Lcom/smartisanos/launcher/theme/z;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/u;->clear()V

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ya:Lcom/smartisanos/launcher/theme/u;

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->zu()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/J;->H(I)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->bb:Z

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->Ta:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
