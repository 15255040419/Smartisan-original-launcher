.class Lcom/smartisanos/launcher/animations/a/p;
.super Ljava/lang/Object;
.source "PageScrollAnimationLouver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/a/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/a/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/a/p;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x5

    new-array v4, v0, [Laurelienribon/tweenengine/n;

    .line 1
    sget-object v0, Laurelienribon/tweenengine/a/v;->Lf:Laurelienribon/tweenengine/a/v;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/a/p;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/a/i;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    iget-object v10, p0, Lcom/smartisanos/launcher/animations/a/p;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    invoke-direct {v0, v10, v6}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v9

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/a/p;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    invoke-direct {v0, v6, v3}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v7

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/p;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    invoke-direct {v0, v3, v1}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v5

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/p;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    invoke-direct {v0, v1, v8}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v2

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    iget-object v10, p0, Lcom/smartisanos/launcher/animations/a/p;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    invoke-direct {v0, v10, v8}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v9

    .line 8
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/a/p;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    invoke-direct {v0, v8, v6}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v7

    .line 9
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    iget-object v6, p0, Lcom/smartisanos/launcher/animations/a/p;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    invoke-direct {v0, v6, v3}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v5

    .line 10
    new-instance v0, Lcom/smartisanos/launcher/animations/a/s;

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/a/p;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    invoke-direct {v0, v3, v1}, Lcom/smartisanos/launcher/animations/a/s;-><init>(Lcom/smartisanos/launcher/animations/a/t;F)V

    aput-object v0, v4, v2

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/a/p;->this$0:Lcom/smartisanos/launcher/animations/a/t;

    const v2, -0x41b33333    # -0.2f

    const/4 v3, 0x0

    const v5, 0x3e99999a    # 0.3f

    new-instance v6, Lcom/smartisanos/launcher/animations/a/o;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/animations/a/o;-><init>(Lcom/smartisanos/launcher/animations/a/p;)V

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/launcher/animations/a/i;->a(FF[Laurelienribon/tweenengine/n;FLjava/lang/Runnable;)V

    return-void
.end method
