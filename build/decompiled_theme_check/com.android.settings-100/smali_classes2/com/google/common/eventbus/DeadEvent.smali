.class public Lcom/google/common/eventbus/DeadEvent;
.super Ljava/lang/Object;
.source "DeadEvent.java"


# instance fields
.field private final event:Ljava/lang/Object;

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/eventbus/DeadEvent;->source:Ljava/lang/Object;

    .line 45
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/eventbus/DeadEvent;->event:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/Object;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/common/eventbus/DeadEvent;->event:Ljava/lang/Object;

    return-object p0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/common/eventbus/DeadEvent;->source:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/eventbus/DeadEvent;->source:Ljava/lang/Object;

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/eventbus/DeadEvent;->event:Ljava/lang/Object;

    const-string v1, "event"

    invoke-virtual {v0, v1, p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
