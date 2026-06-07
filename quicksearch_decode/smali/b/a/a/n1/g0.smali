.class public Lb/a/a/n1/g0;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field public static a:Landroid/widget/Toast;

.field public static b:Landroid/os/Handler;

.field public static c:Landroid/content/Context;


# direct methods
.method public static synthetic a()Landroid/widget/Toast;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/n1/g0;->a:Landroid/widget/Toast;

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    .line 5
    sget-object v0, Lb/a/a/n1/g0;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/n1/g0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lb/a/a/n1/g0;->c:Landroid/content/Context;

    .line 3
    sget-object p0, Lb/a/a/n1/g0;->c:Landroid/content/Context;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lb/a/a/n1/g0;->a:Landroid/widget/Toast;

    .line 4
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lb/a/a/n1/g0;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7
    sget-object v0, Lb/a/a/n1/g0;->b:Landroid/os/Handler;

    new-instance v1, Lb/a/a/n1/g0$a;

    invoke-direct {v1, p0}, Lb/a/a/n1/g0$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lb/a/a/n1/g0;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget-object p0, Lb/a/a/n1/g0;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
