.class abstract Landroid/arch/lifecycle/u;
.super Ljava/lang/Object;
.source "LiveData.java"


# instance fields
.field ka:I

.field mActive:Z

.field final mObserver:Landroid/arch/lifecycle/y;

.field final synthetic this$0:Landroid/arch/lifecycle/v;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/v;Landroid/arch/lifecycle/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/arch/lifecycle/u;->this$0:Landroid/arch/lifecycle/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/arch/lifecycle/u;->ka:I

    .line 3
    iput-object p2, p0, Landroid/arch/lifecycle/u;->mObserver:Landroid/arch/lifecycle/y;

    return-void
.end method


# virtual methods
.method d(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/arch/lifecycle/u;->mActive:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroid/arch/lifecycle/u;->mActive:Z

    .line 3
    iget-object p1, p0, Landroid/arch/lifecycle/u;->this$0:Landroid/arch/lifecycle/v;

    invoke-static {p1}, Landroid/arch/lifecycle/v;->access$300(Landroid/arch/lifecycle/v;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroid/arch/lifecycle/u;->this$0:Landroid/arch/lifecycle/v;

    invoke-static {v1}, Landroid/arch/lifecycle/v;->access$300(Landroid/arch/lifecycle/v;)I

    move-result v2

    iget-boolean v3, p0, Landroid/arch/lifecycle/u;->mActive:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    add-int/2addr v2, v0

    invoke-static {v1, v2}, Landroid/arch/lifecycle/v;->access$302(Landroid/arch/lifecycle/v;I)I

    if-eqz p1, :cond_3

    .line 5
    iget-boolean p1, p0, Landroid/arch/lifecycle/u;->mActive:Z

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Landroid/arch/lifecycle/u;->this$0:Landroid/arch/lifecycle/v;

    invoke-virtual {p1}, Landroid/arch/lifecycle/v;->onActive()V

    .line 7
    :cond_3
    iget-object p1, p0, Landroid/arch/lifecycle/u;->this$0:Landroid/arch/lifecycle/v;

    invoke-static {p1}, Landroid/arch/lifecycle/v;->access$300(Landroid/arch/lifecycle/v;)I

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Landroid/arch/lifecycle/u;->mActive:Z

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Landroid/arch/lifecycle/u;->this$0:Landroid/arch/lifecycle/v;

    invoke-virtual {p1}, Landroid/arch/lifecycle/v;->onInactive()V

    .line 9
    :cond_4
    iget-boolean p1, p0, Landroid/arch/lifecycle/u;->mActive:Z

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Landroid/arch/lifecycle/u;->this$0:Landroid/arch/lifecycle/v;

    invoke-static {p1, p0}, Landroid/arch/lifecycle/v;->access$400(Landroid/arch/lifecycle/v;Landroid/arch/lifecycle/u;)V

    :cond_5
    return-void
.end method

.method g(Landroid/arch/lifecycle/l;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method p()V
    .locals 0

    return-void
.end method

.method abstract q()Z
.end method
