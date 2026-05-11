.class Lcom/smartisanos/launcher/theme/a;
.super Lcom/smartisanos/smengine/n;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/theme/f;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/a;->this$1:Lcom/smartisanos/launcher/theme/f;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "mShadowTextureRunnable startChangeThemeAnim"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/a;->this$1:Lcom/smartisanos/launcher/theme/f;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/f;->this$0:Lcom/smartisanos/launcher/theme/t;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/t;->a(Lcom/smartisanos/launcher/theme/t;)V

    return-void
.end method
