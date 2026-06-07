.class public Lcom/android/quicksearchbox/util/PinObserver;
.super Landroid/database/ContentObserver;
.source "PinObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/util/PinObserver$OnPinListener;
    }
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Landroid/content/Context;

.field public c:Lcom/android/quicksearchbox/util/PinObserver$OnPinListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/util/PinObserver;->b:Landroid/content/Context;

    const-string p1, "PINNED_TASK_ID"

    .line 3
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/util/PinObserver;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/util/PinObserver;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/util/PinObserver;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/util/PinObserver;->c:Lcom/android/quicksearchbox/util/PinObserver$OnPinListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/quicksearchbox/util/PinObserver;->b:Landroid/content/Context;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x1

    const-string v0, "PINNED_TASK_ID"

    .line 4
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/util/PinObserver;->c:Lcom/android/quicksearchbox/util/PinObserver$OnPinListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/util/PinObserver$OnPinListener;->onPinChanged(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/util/PinObserver;->c:Lcom/android/quicksearchbox/util/PinObserver$OnPinListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/util/PinObserver$OnPinListener;->onPinChanged(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnPinListener(Lcom/android/quicksearchbox/util/PinObserver$OnPinListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/util/PinObserver;->c:Lcom/android/quicksearchbox/util/PinObserver$OnPinListener;

    return-void
.end method
