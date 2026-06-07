.class public Lcom/android/quicksearchbox/application/ApplicationsProvider$c;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/application/ApplicationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/application/ApplicationsProvider;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/application/ApplicationsProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$c;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.smartisanos.backup.ACTIVE"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string v0, "smartisanos_backup_is_active"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$c;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    invoke-static {p1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Lcom/android/quicksearchbox/application/ApplicationsProvider;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ApplicationsProvider"

    const-string p2, " backup finished , update all"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$c;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$c;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    invoke-static {p2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b(Lcom/android/quicksearchbox/application/ApplicationsProvider;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$c;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Lcom/android/quicksearchbox/application/ApplicationsProvider;J)V

    :cond_0
    return-void
.end method
