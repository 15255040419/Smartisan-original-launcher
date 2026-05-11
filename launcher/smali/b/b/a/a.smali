.class Lb/b/a/a;
.super Ljava/lang/Object;
.source "PackingMagicFlowData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lb/b/a/b;

.field final synthetic zs:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lb/b/a/b;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/a/a;->this$0:Lb/b/a/b;

    iput-object p2, p0, Lb/b/a/a;->zs:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/a;->this$0:Lb/b/a/b;

    iget-object v0, v0, Lb/b/a/b;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lb/b/a/a;->zs:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lb/b/a/c;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
