.class public Lb/a/a/l$a;
.super Lb/a/a/n1/h;
.source "CachingIconLoader.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/n1/h<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        ">;",
        "Lcom/android/quicksearchbox/util/Consumer<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Lcom/android/quicksearchbox/util/NowOrLater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/util/NowOrLater<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/n1/h;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/android/quicksearchbox/util/NowOrLater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/NowOrLater<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lb/a/a/l$a;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/a/a/l$a;->g:Z

    .line 3
    iput-object p1, p0, Lb/a/a/l$a;->f:Lcom/android/quicksearchbox/util/NowOrLater;

    .line 4
    iget-boolean p1, p0, Lb/a/a/l$a;->h:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lb/a/a/l$a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "set() may only be called once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lb/a/a/n1/h;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lb/a/a/l$a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/a/a/l$a;->h:Z

    .line 3
    iget-boolean v0, p0, Lb/a/a/l$a;->g:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lb/a/a/l$a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/l$a;->f:Lcom/android/quicksearchbox/util/NowOrLater;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lb/a/a/l$a;->f:Lcom/android/quicksearchbox/util/NowOrLater;

    .line 3
    invoke-interface {v0, p0}, Lcom/android/quicksearchbox/util/NowOrLater;->getLater(Lcom/android/quicksearchbox/util/Consumer;)V

    return-void
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lb/a/a/l$a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
