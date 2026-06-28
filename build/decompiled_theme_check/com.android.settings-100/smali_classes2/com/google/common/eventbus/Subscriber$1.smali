.class Lcom/google/common/eventbus/Subscriber$1;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/eventbus/Subscriber;->dispatchEvent(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/eventbus/Subscriber;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/eventbus/Subscriber;Ljava/lang/Object;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/common/eventbus/Subscriber$1;->this$0:Lcom/google/common/eventbus/Subscriber;

    iput-object p2, p0, Lcom/google/common/eventbus/Subscriber$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/common/eventbus/Subscriber$1;->this$0:Lcom/google/common/eventbus/Subscriber;

    iget-object v1, p0, Lcom/google/common/eventbus/Subscriber$1;->val$event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/eventbus/Subscriber;->invokeSubscriberMethod(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lcom/google/common/eventbus/Subscriber$1;->this$0:Lcom/google/common/eventbus/Subscriber;

    invoke-static {v1}, Lcom/google/common/eventbus/Subscriber;->access$200(Lcom/google/common/eventbus/Subscriber;)Lcom/google/common/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/eventbus/Subscriber$1;->this$0:Lcom/google/common/eventbus/Subscriber;

    iget-object p0, p0, Lcom/google/common/eventbus/Subscriber$1;->val$event:Ljava/lang/Object;

    invoke-static {v2, p0}, Lcom/google/common/eventbus/Subscriber;->access$100(Lcom/google/common/eventbus/Subscriber;Ljava/lang/Object;)Lcom/google/common/eventbus/SubscriberExceptionContext;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/google/common/eventbus/EventBus;->handleSubscriberException(Ljava/lang/Throwable;Lcom/google/common/eventbus/SubscriberExceptionContext;)V

    :goto_0
    return-void
.end method
