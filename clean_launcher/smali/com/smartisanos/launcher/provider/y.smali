.class Lcom/smartisanos/launcher/provider/y;
.super Ljava/lang/Object;
.source "SidebarFolderProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/provider/z;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/y;->this$1:Lcom/smartisanos/launcher/provider/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->u()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
