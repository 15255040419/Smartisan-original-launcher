.class public Lcom/android/quicksearchbox/application/ApplicationsProvider$b;
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
    iput-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$b;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$b;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Lcom/android/quicksearchbox/application/ApplicationsProvider;J)V

    :cond_0
    return-void
.end method
