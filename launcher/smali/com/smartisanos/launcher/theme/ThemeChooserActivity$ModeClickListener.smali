.class Lcom/smartisanos/launcher/theme/ThemeChooserActivity$ModeClickListener;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity$ModeClickListener;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity$ModeClickListener;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_12

    const/16 p0, 0x9

    const-string p2, "已切换为20宫格"

    goto :goto_save

    :cond_12
    const/16 p0, 0xc

    const-string p2, "已切换为12宫格"

    :goto_save
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/smartisanos/launcher/data/N;->d(Landroid/content/Context;I)V

    const/4 p0, 0x0

    invoke-static {p1, p2, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
