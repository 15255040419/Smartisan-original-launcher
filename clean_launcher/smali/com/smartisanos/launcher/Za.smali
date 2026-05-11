.class Lcom/smartisanos/launcher/Za;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/eb;->a(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->Pa()Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->Pa()Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->closeContextMenu()V

    :cond_1
    return-void
.end method
