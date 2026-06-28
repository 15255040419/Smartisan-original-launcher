.class public final synthetic Lcom/google/common/collect/-$$Lambda$Maps$Values$4I647vOf6ceTE_5XzH7zgevdOcc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Maps$Values$4I647vOf6ceTE_5XzH7zgevdOcc;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Maps$Values$4I647vOf6ceTE_5XzH7zgevdOcc;->f$0:Ljava/util/function/Consumer;

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Maps$Values;->lambda$forEach$0(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
