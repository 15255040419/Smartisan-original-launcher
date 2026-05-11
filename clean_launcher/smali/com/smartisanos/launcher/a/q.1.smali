.class Lcom/smartisanos/launcher/a/q;
.super Ljava/lang/Object;
.source "ColorThemeChanged.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic rj:Lcom/smartisanos/launcher/theme/v;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/q;->rj:Lcom/smartisanos/launcher/theme/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "theme_changing"

    const-string v3, "string"

    const-string v4, "com.smartisanos.launcher"

    .line 3
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/a/q;->rj:Lcom/smartisanos/launcher/theme/v;

    invoke-virtual {v0, p0, v1}, Lcom/smartisanos/launcher/J;->a(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    return-void
.end method
