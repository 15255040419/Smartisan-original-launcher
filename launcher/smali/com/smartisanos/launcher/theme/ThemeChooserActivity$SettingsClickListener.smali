.class Lcom/smartisanos/launcher/theme/ThemeChooserActivity$SettingsClickListener;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity$SettingsClickListener;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    if-eqz p3, :cond_mode

    const/4 p1, 0x1

    if-eq p3, p1, :cond_page_anim

    const/4 p1, 0x2

    if-eq p3, p1, :cond_theme

    const/4 p1, 0x3

    if-eq p3, p1, :cond_icons

    const/4 p1, 0x4

    if-eq p3, p1, :cond_nav

    const-string p1, "Smartisan Launcher Original Port"

    goto :goto_toast

    :cond_mode
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity$SettingsClickListener;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "桌面宫格"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    const/4 p3, 0x0

    const-string p4, "12宫格"

    aput-object p4, p2, p3

    const/4 p3, 0x1

    const-string p4, "20宫格"

    aput-object p4, p2, p3

    new-instance p3, Lcom/smartisanos/launcher/theme/ThemeChooserActivity$ModeClickListener;

    invoke-direct {p3, p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity$ModeClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_page_anim
    const-string p1, "页面翻页动画后续接入"

    goto :goto_toast

    :cond_theme
    const-string p1, "主题设置后续接入"

    goto :goto_toast

    :cond_icons
    const-string p1, "图标设置后续接入"

    goto :goto_toast

    :cond_nav
    const-string p1, "隐藏导航栏后续接入"

    :goto_toast
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity$SettingsClickListener;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
