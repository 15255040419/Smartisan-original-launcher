.class Lcom/smartisanos/launcher/data/y;
.super Lcom/smartisanos/smengine/n;
.source "DatabaseHandler.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

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
