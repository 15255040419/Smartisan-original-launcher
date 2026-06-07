.class public Lcom/android/quicksearchbox/animation/LauncherCallProvider$a;
.super Ljava/lang/Object;
.source "LauncherCallProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/animation/LauncherCallProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/animation/LauncherCallProvider;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/animation/LauncherCallProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/animation/LauncherCallProvider$a;->a:Lcom/android/quicksearchbox/animation/LauncherCallProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/LauncherCallProvider$a;->a:Lcom/android/quicksearchbox/animation/LauncherCallProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.smartisanos.quicksearch"

    invoke-static {v0, v1}, Lb/a/a/n1/f0;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/LauncherCallProvider$a;->a:Lcom/android/quicksearchbox/animation/LauncherCallProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/c1/a;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/LauncherCallProvider$a;->a:Lcom/android/quicksearchbox/animation/LauncherCallProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/a/c1/a;->a(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method
