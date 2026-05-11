.class Lcom/smartisanos/launcher/Ia;
.super Ljava/lang/Object;
.source "Launchpad.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ti:Z

.field final synthetic ui:F

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic vi:F

.field final synthetic wi:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ZFFLjava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/Ia;->ti:Z

    iput p2, p0, Lcom/smartisanos/launcher/Ia;->ui:F

    iput p3, p0, Lcom/smartisanos/launcher/Ia;->vi:F

    iput-object p4, p0, Lcom/smartisanos/launcher/Ia;->wi:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/smartisanos/launcher/Ia;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/Ia;->ti:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/Ia;->ui:F

    iget v1, p0, Lcom/smartisanos/launcher/Ia;->vi:F

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/ua;->c(FF)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.smartisanos.desktop"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPointedAppPackage ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], is not desktop"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/Ia;->wi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v3, :cond_1

    .line 8
    iget-object v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    instance-of v4, v3, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    if-eqz v4, :cond_3

    .line 10
    check-cast v3, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/QuickLaunchItem;->df()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->df()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    const-string v2, "item_list"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/launcher/Ia;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touchX"

    .line 15
    iget v3, p0, Lcom/smartisanos/launcher/Ia;->ui:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "touchY"

    .line 16
    iget p0, p0, Lcom/smartisanos/launcher/Ia;->vi:F

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 17
    sget-object p0, Lcom/smartisanos/launcher/Qa;->Bi:Landroid/net/Uri;

    const-string v2, "METHOD_ADD_APP_OR_SHORTCUT"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
