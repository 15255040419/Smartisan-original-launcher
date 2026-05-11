.class Landroid/arch/lifecycle/A;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/i;


# instance fields
.field private final mInfo:Landroid/arch/lifecycle/a;

.field private final mWrapped:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/arch/lifecycle/A;->mWrapped:Ljava/lang/Object;

    .line 3
    sget-object p1, Landroid/arch/lifecycle/c;->sInstance:Landroid/arch/lifecycle/c;

    iget-object v0, p0, Landroid/arch/lifecycle/A;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/c;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/a;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/A;->mInfo:Landroid/arch/lifecycle/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/A;->mInfo:Landroid/arch/lifecycle/a;

    iget-object p0, p0, Landroid/arch/lifecycle/A;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, p0}, Landroid/arch/lifecycle/a;->a(Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    return-void
.end method
