.class public Lcom/google/common/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/EventBus$LoggingHandler;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final dispatcher:Lcom/google/common/eventbus/Dispatcher;

.field private final exceptionHandler:Lcom/google/common/eventbus/SubscriberExceptionHandler;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final identifier:Ljava/lang/String;

.field private final subscribers:Lcom/google/common/eventbus/SubscriberRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const-class v0, Lcom/google/common/eventbus/EventBus;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/EventBus;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "default"

    .line 109
    invoke-direct {p0, v0}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 3

    .line 135
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/google/common/eventbus/Dispatcher;->perThreadDispatchQueue()Lcom/google/common/eventbus/Dispatcher;

    move-result-object v1

    const-string v2, "default"

    .line 133
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/Dispatcher;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 121
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/google/common/eventbus/Dispatcher;->perThreadDispatchQueue()Lcom/google/common/eventbus/Dispatcher;

    move-result-object v1

    sget-object v2, Lcom/google/common/eventbus/EventBus$LoggingHandler;->INSTANCE:Lcom/google/common/eventbus/EventBus$LoggingHandler;

    .line 119
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/Dispatcher;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/Dispatcher;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/google/common/eventbus/SubscriberRegistry;

    invoke-direct {v0, p0}, Lcom/google/common/eventbus/SubscriberRegistry;-><init>(Lcom/google/common/eventbus/EventBus;)V

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->subscribers:Lcom/google/common/eventbus/SubscriberRegistry;

    .line 145
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/eventbus/EventBus;->identifier:Ljava/lang/String;

    .line 146
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/eventbus/EventBus;->executor:Ljava/util/concurrent/Executor;

    .line 147
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/eventbus/Dispatcher;

    iput-object p1, p0, Lcom/google/common/eventbus/EventBus;->dispatcher:Lcom/google/common/eventbus/Dispatcher;

    .line 148
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/eventbus/SubscriberExceptionHandler;

    iput-object p1, p0, Lcom/google/common/eventbus/EventBus;->exceptionHandler:Lcom/google/common/eventbus/SubscriberExceptionHandler;

    return-void
.end method


# virtual methods
.method final executor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/common/eventbus/EventBus;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method handleSubscriberException(Ljava/lang/Throwable;Lcom/google/common/eventbus/SubscriberExceptionContext;)V
    .locals 4

    .line 167
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :try_start_0
    iget-object p0, p0, Lcom/google/common/eventbus/EventBus;->exceptionHandler:Lcom/google/common/eventbus/SubscriberExceptionHandler;

    invoke-interface {p0, p1, p2}, Lcom/google/common/eventbus/SubscriberExceptionHandler;->handleException(Ljava/lang/Throwable;Lcom/google/common/eventbus/SubscriberExceptionContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 173
    sget-object p2, Lcom/google/common/eventbus/EventBus;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "Exception %s thrown while handling exception: %s"

    .line 175
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p2, v0, p1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final identifier()Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/google/common/eventbus/EventBus;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public post(Ljava/lang/Object;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/google/common/eventbus/EventBus;->subscribers:Lcom/google/common/eventbus/SubscriberRegistry;

    invoke-virtual {v0, p1}, Lcom/google/common/eventbus/SubscriberRegistry;->getSubscribers(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object p0, p0, Lcom/google/common/eventbus/EventBus;->dispatcher:Lcom/google/common/eventbus/Dispatcher;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/eventbus/Dispatcher;->dispatch(Ljava/lang/Object;Ljava/util/Iterator;)V

    goto :goto_0

    .line 213
    :cond_0
    instance-of v0, p1, Lcom/google/common/eventbus/DeadEvent;

    if-nez v0, :cond_1

    .line 215
    new-instance v0, Lcom/google/common/eventbus/DeadEvent;

    invoke-direct {v0, p0, p1}, Lcom/google/common/eventbus/DeadEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/common/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/google/common/eventbus/EventBus;->subscribers:Lcom/google/common/eventbus/SubscriberRegistry;

    invoke-virtual {p0, p1}, Lcom/google/common/eventbus/SubscriberRegistry;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 221
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/eventbus/EventBus;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/google/common/eventbus/EventBus;->subscribers:Lcom/google/common/eventbus/SubscriberRegistry;

    invoke-virtual {p0, p1}, Lcom/google/common/eventbus/SubscriberRegistry;->unregister(Ljava/lang/Object;)V

    return-void
.end method
