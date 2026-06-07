.class public Lcom/android/quicksearchbox/QsbApplicationWrapper;
.super Landroid/app/Application;
.source "QsbApplicationWrapper.java"


# static fields
.field public static b:Lcom/android/quicksearchbox/QsbApplicationWrapper;


# instance fields
.field public a:Lb/a/a/b0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static c()Lcom/android/quicksearchbox/QsbApplicationWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->b:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    return-object v0
.end method


# virtual methods
.method public a()Lb/a/a/b0;
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/b0;

    invoke-direct {v0, p0}, Lb/a/a/b0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    sput-object p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->b:Lcom/android/quicksearchbox/QsbApplicationWrapper;

    .line 3
    invoke-static {p0}, Lb/a/a/c1/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized b()Lb/a/a/b0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->a:Lb/a/a/b0;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->a()Lb/a/a/b0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->a:Lb/a/a/b0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->a:Lb/a/a/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->a:Lb/a/a/b0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/b0;->a(Landroid/content/res/Configuration;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 3
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 4
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsmartisanos/app/tracker/Agent;->init(Landroid/app/Application;)V

    .line 5
    invoke-static {p0}, Lb/a/a/n1/g0;->a(Landroid/content/Context;)V

    .line 6
    new-instance v0, Lb/a/a/j;

    invoke-direct {v0}, Lb/a/a/j;-><init>()V

    invoke-static {p0, v0}, Lb/b/a/a/a;->a(Landroid/content/Context;Lb/b/a/a/b;)Lb/b/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/a/a;->a()V

    .line 7
    invoke-static {}, Lb/a/a/n1/d$m;->b()V

    .line 8
    invoke-static {p0}, Lb/a/a/c1/b;->b(Landroid/content/Context;)V

    .line 9
    invoke-static {p0}, Lb/a/a/j0;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->a:Lb/a/a/b0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;->a:Lb/a/a/b0;

    invoke-virtual {v0}, Lb/a/a/b0;->a()V

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
