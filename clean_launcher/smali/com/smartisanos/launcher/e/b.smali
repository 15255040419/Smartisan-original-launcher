.class Lcom/smartisanos/launcher/e/b;
.super Ljava/lang/Object;
.source "CallStubUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ru:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/e/b;->ru:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/smartisanos/launcher/e/b;->ru:Landroid/content/ContentResolver;

    sget-object v0, Lcom/smartisanos/launcher/e/e;->MAGIC_FLOW_URI:Landroid/net/Uri;

    const-string v1, "request_show"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
