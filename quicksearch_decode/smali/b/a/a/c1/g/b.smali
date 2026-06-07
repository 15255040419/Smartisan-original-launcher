.class public Lb/a/a/c1/g/b;
.super Ljava/lang/Object;
.source "UIThread.java"


# static fields
.field public static final a:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lb/a/a/c1/g/b;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/c1/g/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 2
    sget-object v0, Lb/a/a/c1/g/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
