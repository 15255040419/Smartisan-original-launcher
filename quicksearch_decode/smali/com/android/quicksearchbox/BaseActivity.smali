.class public abstract Lcom/android/quicksearchbox/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field public a:Li/p/a;

.field public b:Lb/a/a/m1/c;

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->a:Li/p/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->b:Lb/a/a/m1/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lb/a/a/m1/c;->a()V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->b:Lb/a/a/m1/c;

    invoke-virtual {v0}, Lb/a/a/m1/c;->b()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 2

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p2, :cond_0

    const-string p1, "user"

    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "receiverPermission"

    .line 9
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "content://com.android.settings.apiprovider"

    .line 10
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    const-string v1, "sendBroadcast"

    .line 12
    invoke-virtual {p2, p1, v1, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public b()Lb/a/a/m1/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->b:Lb/a/a/m1/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/a/a/m1/c;

    invoke-direct {v0, p0}, Lb/a/a/m1/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->b:Lb/a/a/m1/c;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->b:Lb/a/a/m1/c;

    return-object v0
.end method

.method public c()Li/p/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->a:Li/p/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Li/p/a;

    invoke-direct {v0, p0}, Li/p/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->a:Li/p/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->a:Li/p/a;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->c:Ljava/lang/String;

    const-string v1, "launcher_left_screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/BaseActivity;->d:Z

    return v0
.end method

.method public finish()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    invoke-static {}, Lb/a/a/n1/d;->b()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f010010

    const v1, 0x7f010011

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lb/a/a/n1/f0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 8
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/h0;->a(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quicksearchbox/BaseActivity;->d:Z

    .line 3
    iget-boolean p1, p0, Lcom/android/quicksearchbox/BaseActivity;->d:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "launch_source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/quicksearchbox/BaseActivity;->c:Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lb/a/a/n1/d$q;->d(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/h0;->a(Landroid/view/View;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no permission to send broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/quicksearchbox/BaseActivity;->a(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .line 4
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no permission to send broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/quicksearchbox/BaseActivity;->a(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no permission to send broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quicksearchbox/BaseActivity;->a(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 2

    .line 4
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no permission to send broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/BaseActivity;->a(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
