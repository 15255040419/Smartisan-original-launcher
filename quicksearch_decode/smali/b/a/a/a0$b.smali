.class public Lb/a/a/a0$b;
.super Lb/a/a/n1/h;
.source "PackageIconLoader.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/n1/h<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lcom/android/quicksearchbox/util/NamedTask;"
    }
.end annotation


# instance fields
.field public final f:Landroid/net/Uri;

.field public final synthetic g:Lb/a/a/a0;


# direct methods
.method public constructor <init>(Lb/a/a/a0;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/a0$b;->g:Lb/a/a/a0;

    invoke-direct {p0}, Lb/a/a/n1/h;-><init>()V

    .line 2
    iput-object p2, p0, Lb/a/a/a0$b;->f:Landroid/net/Uri;

    return-void
.end method

.method public static synthetic a(Lb/a/a/a0$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/n1/h;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/a0$b;->g:Lb/a/a/a0;

    invoke-static {v0}, Lb/a/a/a0;->a(Lb/a/a/a0;)Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->execute(Lcom/android/quicksearchbox/util/NamedTask;)V

    return-void
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/a0$b;->g:Lb/a/a/a0;

    iget-object v1, p0, Lb/a/a/a0$b;->f:Landroid/net/Uri;

    invoke-static {v0, v1}, Lb/a/a/a0;->a(Lb/a/a/a0;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load icon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/a/a0$b;->f:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QSB.PackageIconLoader"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/a0$b;->g:Lb/a/a/a0;

    invoke-static {v0}, Lb/a/a/a0;->c(Lb/a/a/a0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/a/a/a0$b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/a/a/a0$b;->g:Lb/a/a/a0;

    invoke-static {v1}, Lb/a/a/a0;->b(Lb/a/a/a0;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lb/a/a/a0$b$a;

    invoke-direct {v2, p0, v0}, Lb/a/a/a0$b$a;-><init>(Lb/a/a/a0$b;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
