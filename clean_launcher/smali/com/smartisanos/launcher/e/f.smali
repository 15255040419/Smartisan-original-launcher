.class Lcom/smartisanos/launcher/e/f;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/e/f;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "com.smartisanos.payment"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/e/f;->val$context:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
