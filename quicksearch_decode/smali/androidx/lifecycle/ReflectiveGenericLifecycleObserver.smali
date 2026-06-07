.class public Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:La/l/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    .line 3
    sget-object p1, La/l/a;->c:La/l/a;

    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, La/l/a;->b(Ljava/lang/Class;)La/l/a$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:La/l/a$a;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;La/l/b$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:La/l/a$a;

    iget-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, La/l/a$a;->a(Landroidx/lifecycle/LifecycleOwner;La/l/b$a;Ljava/lang/Object;)V

    return-void
.end method
