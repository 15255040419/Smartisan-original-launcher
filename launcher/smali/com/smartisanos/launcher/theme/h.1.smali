.class Lcom/smartisanos/launcher/theme/h;
.super Lcom/smartisanos/smengine/n;
.source "ChangeThemeHandler.java"


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/theme/k;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/k;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/h;->this$2:Lcom/smartisanos/launcher/theme/k;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Or()V

    return-void
.end method
