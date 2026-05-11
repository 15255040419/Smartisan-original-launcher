.class Lcom/smartisanos/launcher/a/i;
.super Ljava/lang/Object;
.source "ChangeWallpaperByFourFingerSlide.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic pj:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/i;->pj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/a/i;->pj:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->p(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/a/i;->pj:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/e/s;->o(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
