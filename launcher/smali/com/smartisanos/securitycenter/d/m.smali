.class public Lcom/smartisanos/securitycenter/d/m;
.super Lcom/smartisanos/securitycenter/d/l;
.source "CloudIdVerifier.java"


# instance fields
.field private final gA:Landroid/content/ComponentName;

.field private hA:Landroid/content/Intent;

.field private iA:Z

.field private mActivity:Landroid/app/Activity;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/d/l;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.smartisanos.cloudsync"

    const-string v1, "com.smartisanos.cloudsync.CheckPasswordActivity"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/m;->gA:Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/securitycenter/d/m;->iA:Z

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/d/m;->Px()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/d/l;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/m;->mPm:Landroid/content/pm/PackageManager;

    .line 6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/m;->hA:Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcom/smartisanos/securitycenter/d/m;->hA:Landroid/content/Intent;

    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/m;->gA:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/m;->hA:Landroid/content/Intent;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private Ox()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/d/m;->iA:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "content://com.smartisanos.cloudsync.accountcenter"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/securitycenter/d/l;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    :try_start_0
    const-string v3, "request_account_islogin"

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v0, v3, v4, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    .line 6
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartisanos/securitycenter/d/m;->iA:Z

    .line 7
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/d/m;->iA:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 9
    throw p0

    .line 10
    :catch_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return v2
.end method

.method private Px()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/l;->mContext:Landroid/content/Context;

    const-string v0, "com.smartisan.permission.ACCOUNT_CENTER"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Qx()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/d/m;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/smartisanos/securitycenter/d/l;->mContext:Landroid/content/Context;

    sget v3, Lcom/smartisanos/securitycenter/export/R$string;->cloudid_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "custom_title"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/l;->mContext:Landroid/content/Context;

    sget v2, Lcom/smartisanos/securitycenter/export/R$string;->cloudid_message:I

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/smartisanos/securitycenter/d/l;->mContext:Landroid/content/Context;

    sget v3, Lcom/smartisanos/securitycenter/export/R$string;->cloudid_message_with_account:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 6
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "custom_message"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/m;->hA:Landroid/content/Intent;

    const-string v2, "params_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/m;->hA:Landroid/content/Intent;

    invoke-static {}, Lsmartisanos/api/IntentSmt;->get_EXTRA_SMARTISAN_ANIM_RESOURCE_ID()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/smartisanos/securitycenter/export/R$anim;->slide_out_bottom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/smartisanos/securitycenter/d/m;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/securitycenter/d/m;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/smartisanos/securitycenter/d/m;->hA:Landroid/content/Intent;

    const v3, 0x7ffffffe

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 13
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/m;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/smartisanos/securitycenter/export/R$anim;->slide_in_bottom:I

    sget v1, Lcom/smartisanos/securitycenter/export/R$anim;->slide_out_bottom:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private getAccount()Ljava/lang/String;
    .locals 6

    const-string v0, "content://com.smartisanos.cloudsync.accountcenter"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/l;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "request_account_phone"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    const/4 v3, -0x1

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "phonenumber"

    .line 6
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "****"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 11
    throw v0
.end method


# virtual methods
.method public a(Lcom/smartisanos/securitycenter/b/h;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/securitycenter/d/l;->a(Lcom/smartisanos/securitycenter/b/h;)V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/d/m;->Qx()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->rj()V

    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 0

    const p3, 0x7ffffffe

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->sj()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->pj()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/securitycenter/d/l;->destroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/securitycenter/d/m;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/m;->hA:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/smartisanos/securitycenter/d/m;->mPm:Landroid/content/pm/PackageManager;

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/d/m;->Ox()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/m;->mActivity:Landroid/app/Activity;

    return-void
.end method
