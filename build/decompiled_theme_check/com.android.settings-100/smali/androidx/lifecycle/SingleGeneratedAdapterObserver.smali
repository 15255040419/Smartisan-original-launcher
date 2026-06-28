.class Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>(Landroidx/lifecycle/GeneratedAdapter;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 29
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2, v1}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    .line 30
    iget-object p0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0, v1}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    return-void
.end method
