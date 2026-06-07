.class public abstract La/g/b/c/e$a;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/g/b/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public final a(ILandroid/os/Handler;)V
    .locals 1

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    :cond_0
    new-instance v0, La/g/b/c/e$a$b;

    invoke-direct {v0, p0, p1}, La/g/b/c/e$a$b;-><init>(La/g/b/c/e$a;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract a(Landroid/graphics/Typeface;)V
.end method

.method public final a(Landroid/graphics/Typeface;Landroid/os/Handler;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    :cond_0
    new-instance v0, La/g/b/c/e$a$a;

    invoke-direct {v0, p0, p1}, La/g/b/c/e$a$a;-><init>(La/g/b/c/e$a;Landroid/graphics/Typeface;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
