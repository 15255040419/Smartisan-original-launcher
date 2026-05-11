.class Lcom/smartisanos/launcher/data/D;
.super Ljava/lang/Object;
.source "DatabaseUpdater.java"

# interfaces
.implements Lcom/smartisanos/launcher/tb;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/ub;->a(Lcom/smartisanos/launcher/tb;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->v()V

    return-void
.end method
