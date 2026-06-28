.class Landroid/arch/lifecycle/n;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# instance fields
.field mState:Landroid/arch/lifecycle/Lifecycle$State;

.field ya:Landroid/arch/lifecycle/i;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/arch/lifecycle/q;->e(Ljava/lang/Object;)Landroid/arch/lifecycle/i;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/n;->ya:Landroid/arch/lifecycle/i;

    .line 3
    iput-object p2, p0, Landroid/arch/lifecycle/n;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    return-void
.end method


# virtual methods
.method b(Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/arch/lifecycle/o;->a(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/arch/lifecycle/n;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Landroid/arch/lifecycle/o;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/lifecycle/n;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    .line 3
    iget-object v1, p0, Landroid/arch/lifecycle/n;->ya:Landroid/arch/lifecycle/i;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/i;->a(Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 4
    iput-object v0, p0, Landroid/arch/lifecycle/n;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    return-void
.end method
