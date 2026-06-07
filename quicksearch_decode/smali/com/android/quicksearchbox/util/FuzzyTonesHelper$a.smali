.class public Lcom/android/quicksearchbox/util/FuzzyTonesHelper$a;
.super Landroid/database/ContentObserver;
.source "FuzzyTonesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/util/FuzzyTonesHelper;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/util/FuzzyTonesHelper;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper$a;->a:Lcom/android/quicksearchbox/util/FuzzyTonesHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    invoke-static {}, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FuzzyTonesHelper"

    const-string v0, "FUZZY_TONE_URI changed!"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/util/FuzzyTonesHelper$a;->a:Lcom/android/quicksearchbox/util/FuzzyTonesHelper;

    invoke-static {p1}, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->a(Lcom/android/quicksearchbox/util/FuzzyTonesHelper;)V

    return-void
.end method
