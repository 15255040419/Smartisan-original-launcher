.class public Lb/a/a/n1/u;
.super Ljava/lang/Object;
.source "Now.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NowOrLater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/NowOrLater<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/n1/u;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLater(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "-TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/a/a/n1/u;->getNow()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    return-void
.end method

.method public getNow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/n1/u;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public haveNow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
