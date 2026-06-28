.class public final synthetic Lcom/google/common/collect/-$$Lambda$HashBiMap$Inverse$RpeIn_Fo-wtHkkM0eHEOuMSgmjY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$HashBiMap$Inverse$RpeIn_Fo-wtHkkM0eHEOuMSgmjY;->f$0:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$HashBiMap$Inverse$RpeIn_Fo-wtHkkM0eHEOuMSgmjY;->f$0:Ljava/util/function/BiConsumer;

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/HashBiMap$Inverse;->lambda$forEach$0(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
