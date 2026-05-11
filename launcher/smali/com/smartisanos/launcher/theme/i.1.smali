.class Lcom/smartisanos/launcher/theme/i;
.super Lcom/smartisanos/smengine/n;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/theme/k;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/k;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/i;->this$2:Lcom/smartisanos/launcher/theme/k;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->f(Z)V

    return-void
.end method
