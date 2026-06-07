.class public La/l/c$b;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:La/l/b$b;

.field public b:Landroidx/lifecycle/GenericLifecycleObserver;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleObserver;La/l/b$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, La/l/d;->a(Ljava/lang/Object;)Landroidx/lifecycle/GenericLifecycleObserver;

    move-result-object p1

    iput-object p1, p0, La/l/c$b;->b:Landroidx/lifecycle/GenericLifecycleObserver;

    .line 3
    iput-object p2, p0, La/l/c$b;->a:La/l/b$b;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/LifecycleOwner;La/l/b$a;)V
    .locals 2

    .line 1
    invoke-static {p2}, La/l/c;->b(La/l/b$a;)La/l/b$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, La/l/c$b;->a:La/l/b$b;

    invoke-static {v1, v0}, La/l/c;->a(La/l/b$b;La/l/b$b;)La/l/b$b;

    move-result-object v1

    iput-object v1, p0, La/l/c$b;->a:La/l/b$b;

    .line 3
    iget-object v1, p0, La/l/c$b;->b:Landroidx/lifecycle/GenericLifecycleObserver;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/GenericLifecycleObserver;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;La/l/b$a;)V

    .line 4
    iput-object v0, p0, La/l/c$b;->a:La/l/b$b;

    return-void
.end method
