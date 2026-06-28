.class public final synthetic Lcom/google/common/collect/-$$Lambda$GBpOF54sAws-PHwS5bXxRWrL0gU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/stream/DoubleStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/DoubleStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$GBpOF54sAws-PHwS5bXxRWrL0gU;->f$0:Ljava/util/stream/DoubleStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$GBpOF54sAws-PHwS5bXxRWrL0gU;->f$0:Ljava/util/stream/DoubleStream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method
