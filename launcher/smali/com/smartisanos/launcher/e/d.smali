.class Lcom/smartisanos/launcher/e/d;
.super Ljava/lang/Object;
.source "CallStubUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ru:Landroid/content/ContentResolver;

.field final synthetic su:Z


# direct methods
.method constructor <init>(ZLandroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/e/d;->su:Z

    iput-object p2, p0, Lcom/smartisanos/launcher/e/d;->ru:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "canScreenshot"

    .line 2
    iget-boolean v2, p0, Lcom/smartisanos/launcher/e/d;->su:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/e/d;->ru:Landroid/content/ContentResolver;

    sget-object v1, Lcom/smartisanos/launcher/e/e;->tu:Landroid/net/Uri;

    const-string v2, "request_show"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
