.class Landroid/arch/lifecycle/r;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/v;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/arch/lifecycle/r;->this$0:Landroid/arch/lifecycle/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/r;->this$0:Landroid/arch/lifecycle/v;

    invoke-static {v0}, Landroid/arch/lifecycle/v;->access$000(Landroid/arch/lifecycle/v;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/arch/lifecycle/r;->this$0:Landroid/arch/lifecycle/v;

    invoke-static {v1}, Landroid/arch/lifecycle/v;->access$100(Landroid/arch/lifecycle/v;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroid/arch/lifecycle/r;->this$0:Landroid/arch/lifecycle/v;

    invoke-static {}, Landroid/arch/lifecycle/v;->access$200()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/arch/lifecycle/v;->access$102(Landroid/arch/lifecycle/v;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Landroid/arch/lifecycle/r;->this$0:Landroid/arch/lifecycle/v;

    invoke-virtual {p0, v1}, Landroid/arch/lifecycle/v;->setValue(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
