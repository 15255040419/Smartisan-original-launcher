.class public Lcom/google/common/eventbus/SubscriberExceptionContext;
.super Ljava/lang/Object;
.source "SubscriberExceptionContext.java"


# instance fields
.field private final event:Ljava/lang/Object;

.field private final eventBus:Lcom/google/common/eventbus/EventBus;

.field private final subscriber:Ljava/lang/Object;

.field private final subscriberMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/eventbus/EventBus;

    iput-object p1, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->eventBus:Lcom/google/common/eventbus/EventBus;

    .line 42
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->event:Ljava/lang/Object;

    .line 43
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->subscriber:Ljava/lang/Object;

    .line 44
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->subscriberMethod:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/Object;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->event:Ljava/lang/Object;

    return-object p0
.end method

.method public getEventBus()Lcom/google/common/eventbus/EventBus;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->eventBus:Lcom/google/common/eventbus/EventBus;

    return-object p0
.end method

.method public getSubscriber()Ljava/lang/Object;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->subscriber:Ljava/lang/Object;

    return-object p0
.end method

.method public getSubscriberMethod()Ljava/lang/reflect/Method;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/common/eventbus/SubscriberExceptionContext;->subscriberMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method
