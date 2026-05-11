.class Lcom/smartisanos/launcher/theme/m;
.super Ljava/lang/Object;
.source "ChangeThemeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/theme/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/m;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "LAUNCHER_CHANGE_THEME_ANIM_BEGIN"

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/e/s;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
