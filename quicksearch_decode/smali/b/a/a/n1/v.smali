.class public abstract Lb/a/a/n1/v;
.super Ljava/lang/Object;
.source "NowOrLaterWrapper.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NowOrLater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/NowOrLater<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/android/quicksearchbox/util/NowOrLater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/util/NowOrLater<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/util/NowOrLater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/NowOrLater<",
            "TA;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/n1/v;->a:Lcom/android/quicksearchbox/util/NowOrLater;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public getLater(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "-TB;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/n1/v;->a:Lcom/android/quicksearchbox/util/NowOrLater;

    new-instance v1, Lb/a/a/n1/v$a;

    invoke-direct {v1, p0, p1}, Lb/a/a/n1/v$a;-><init>(Lb/a/a/n1/v;Lcom/android/quicksearchbox/util/Consumer;)V

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/util/NowOrLater;->getLater(Lcom/android/quicksearchbox/util/Consumer;)V

    return-void
.end method

.method public getNow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/n1/v;->a:Lcom/android/quicksearchbox/util/NowOrLater;

    invoke-interface {v0}, Lcom/android/quicksearchbox/util/NowOrLater;->getNow()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/n1/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public haveNow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/n1/v;->a:Lcom/android/quicksearchbox/util/NowOrLater;

    invoke-interface {v0}, Lcom/android/quicksearchbox/util/NowOrLater;->haveNow()Z

    move-result v0

    return v0
.end method
