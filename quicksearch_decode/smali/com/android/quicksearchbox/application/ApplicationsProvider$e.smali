.class public Lcom/android/quicksearchbox/application/ApplicationsProvider$e;
.super Landroid/os/Handler;
.source "ApplicationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/application/ApplicationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/application/ApplicationsProvider;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/application/ApplicationsProvider;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$e;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApplicationsProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$e;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b(Lcom/android/quicksearchbox/application/ApplicationsProvider;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$e;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    invoke-static {p1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Lcom/android/quicksearchbox/application/ApplicationsProvider;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$e;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    invoke-static {p1, v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Lcom/android/quicksearchbox/application/ApplicationsProvider;Z)Z

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->d()Lcom/android/quicksearchbox/util/FuzzyTonesHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$e;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->a(Landroid/content/Context;)V

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$e;->a:Lcom/android/quicksearchbox/application/ApplicationsProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b(Lcom/android/quicksearchbox/application/ApplicationsProvider;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
