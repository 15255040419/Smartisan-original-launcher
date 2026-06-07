.class public Lb/a/a/o1/c/b$e;
.super Ljava/lang/Object;
.source "AppImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/o1/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Lb/a/a/o1/c/b$d;

.field public final synthetic b:Lb/a/a/o1/c/b;


# direct methods
.method public constructor <init>(Lb/a/a/o1/c/b;Lb/a/a/o1/c/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/o1/c/b$e;->b:Lb/a/a/o1/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb/a/a/o1/c/b$e;->a:Lb/a/a/o1/c/b$d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/o1/c/b$e;->b:Lb/a/a/o1/c/b;

    iget-object v1, p0, Lb/a/a/o1/c/b$e;->a:Lb/a/a/o1/c/b$d;

    invoke-virtual {v0, v1}, Lb/a/a/o1/c/b;->a(Lb/a/a/o1/c/b$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/o1/c/b$e;->b:Lb/a/a/o1/c/b;

    iget-object v1, p0, Lb/a/a/o1/c/b$e;->a:Lb/a/a/o1/c/b$d;

    iget-object v1, v1, Lb/a/a/o1/c/b$d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/o1/c/b;->a(Lb/a/a/o1/c/b;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lb/a/a/o1/c/b$e;->b:Lb/a/a/o1/c/b;

    invoke-static {v1}, Lb/a/a/o1/c/b;->a(Lb/a/a/o1/c/b;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/o1/c/b$e;->a:Lb/a/a/o1/c/b$d;

    iget-object v2, v2, Lb/a/a/o1/c/b$d;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lb/a/a/o1/c/b$b;

    invoke-direct {v1}, Lb/a/a/o1/c/b$b;-><init>()V

    .line 5
    iput-object v0, v1, Lb/a/a/o1/c/b$b;->b:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object v0, p0, Lb/a/a/o1/c/b$e;->a:Lb/a/a/o1/c/b$d;

    iget-object v0, v0, Lb/a/a/o1/c/b$d;->b:Landroid/widget/ImageView;

    iput-object v0, v1, Lb/a/a/o1/c/b$b;->a:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lb/a/a/o1/c/b$e;->b:Lb/a/a/o1/c/b;

    iget-object v0, v0, Lb/a/a/o1/c/b;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lb/a/a/o1/c/b$e;->b:Lb/a/a/o1/c/b;

    iget-object v1, v1, Lb/a/a/o1/c/b;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
