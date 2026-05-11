.class public Lcom/smartisanos/launcher/theme/ThemeChooserActivity;
.super Landroid/app/Activity;
.source "LauncherSettingsActivity.java"


# static fields
.field private static volatile db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/theme/ThemeChooserActivity;
    .locals 1

    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, -0xb0b0c

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "桌面设置"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, -0xdededf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x30

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v6, "桌面宫格：12宫格 / 20宫格"

    aput-object v6, v4, v7

    const-string v6, "页面翻页动画"

    aput-object v6, v4, v0

    const/4 v0, 0x2

    const-string v6, "主题设置"

    aput-object v6, v4, v0

    const/4 v0, 0x3

    const-string v6, "图标设置"

    aput-object v6, v4, v0

    const/4 v0, 0x4

    const-string v6, "隐藏导航栏"

    aput-object v6, v4, v0

    const/4 v0, 0x5

    const-string v6, "关于桌面"

    aput-object v6, v4, v0

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090003

    invoke-direct {v0, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity$SettingsClickListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity$SettingsClickListener;-><init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    :cond_0
    return-void
.end method
